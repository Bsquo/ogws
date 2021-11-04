#pragma use_lmw_stmw on

#include "eggProcessMeter.h"
#include "eggSystem.h"
#include "eggVideo.h"
#include "eggDisplay.h"
#include <GX/GXLight.h>
#include <GX/GXMisc.h>
#include <GX/GXFifo.h>
#include <GX/GXFrameBuf.h>
#include <GX/GXTransform.h>
#include <GX/GXBump.h>
#include <GX/GXAttr.h>
#include <GX/GXGeometry.h>
#include <GX/GXPixel.h>
#include <OS/OS.h>
#include <OS/OSTime.h>
#include <OS/OSMessage.h>
#include <OS/OSInterrupt.h>
#include <math/mtx.h>
#include <math/mtx44.h>

/*
    Nonmatchings:

    ProcessMeter::ProcessMeter (Idek)
    ProcessMeter::measureBeginFrame (Some inline stuff going on i think)
    ProcessMeter::draw (This will be bad)
*/

using namespace nw4r;

namespace
{
    void drawColor(ut::Color c)
    {
        GXSetChanMatColor(GX_CHANNEL_ID_4, c);
    }
}

namespace EGG
{
    ProcessMeter::ProcessBar::ProcessBar(ut::Color c, f32 f1, f32 f2)
        : mColor(c), FLOAT_0x0(0.0f), FLOAT_0x4(0.0f), mStopwatch(),
        FLOAT_0x14(f1), FLOAT_0x18(f2), mFlags(0) {}

    void ProcessMeter::ProcessBar::update(u32 r4)
    {
        update((f32)r4 / ((BUS_SPEED >> 2) / 1000));
    }

    void ProcessMeter::ProcessBar::update(f32 r4)
    {
        FLOAT_0x0 = r4;
        u32 tick = mStopwatch.getMeasureTick();
        FLOAT_0x4 = (f32)tick / ((BUS_SPEED >> 2) / 1000);
    }

    ProcessMeter::CpuMonitor::CpuMonitor(ut::Color c, f32 f1) : mProcessBar(c, f1, 1.0f) {}

    void ProcessMeter::CpuMonitor::measureBegin()
    {
        mProcessBar.mStopwatch.start();
    }

    void ProcessMeter::CpuMonitor::measureEnd()
    {
        if (mProcessBar.mStopwatch.isStarted())
            mProcessBar.mStopwatch.stop();
    }

    void ProcessMeter::CpuMonitor::show()
    {
        mProcessBar.show();
    }

    void ProcessMeter::CpuMonitor::hide()
    {
        mProcessBar.hide();
    }

    ProcessMeter::CpuGpMonitor::CpuGpMonitor(ut::Color c1, ut::Color c2, f32 f1, f32 f2)
        : CpuMonitor(c1, f1), mGpProcessBar(c2, f2, 1.0f)
    {
        UNK_0x68.GP_0x0 = this;
        SHORT_0x54 = 0;
        UNK_0x68.GP_0xC = this;
    }

    void ProcessMeter::CpuGpMonitor::measureBegin()
    {
        CpuMonitor::measureBegin();
        SHORT_0x54 = 1;
        mProcessMeter->setDrawSync(&UNK_0x5C);
    }

    void ProcessMeter::CpuGpMonitor::measureEnd()
    {
        CpuMonitor::measureEnd();
        mProcessMeter->setDrawSync(&UNK_0x5C);
    }

    void ProcessMeter::CpuGpMonitor::show()
    {
        mProcessBar.show();
        mGpProcessBar.show();
    }

    void ProcessMeter::CpuGpMonitor::hide()
    {
        mProcessBar.hide();
        mGpProcessBar.hide();
    }

    // nonmatching
    ProcessMeter::ProcessMeter(bool b) : Thread(0x1000, 4, 0, NULL), mColor(0xCCCCCCFF), FLOAT_0x4C(5.0f),
        FLOAT_0x50(5.0f), FLOAT_0x54(90.0f), FLOAT_0x58(1.0f), mProcessBar(0x000032C8, 0.0f, 1.0f),
        mCpuMonitor(0xFF5050FF, 0.0f), mCpuGpMonitor(0x50FF50FF, 0x5050FFFF, 1.0f, 2.0f)
    {
        ut::List_Init(&mProcessBarList, offsetof(ProcessMeter, mNode));
    }

    void ProcessMeter::callbackDrawSyncStatic(u16 s)
    {
        BaseSystem::getPerfView()->callbackDrawSync(s);
    }

    // nonmatching
    void ProcessMeter::measureBeginFrame()
    {
        if (mProcessBar.mStopwatch.isStarted())
            mProcessBar.mStopwatch.stop();

        mProcessBar.update(0.0f);

        ProcessBar *node = NULL;
        f32 flt = 0.0f;
        while (node = (ProcessBar *)ut::List_GetNext(&mProcessBarList, node))
        {
            node->update(node->mStopwatch.getStartTick() -
                mProcessBar.mStopwatch.getStartTick());

            f32 flt2;
            if (node->FLOAT_0x4 > 0.0f)
            {
                flt2 = node->FLOAT_0x0 + node->FLOAT_0x4;
            }
            else
            {
                flt2 = 0.0f;
            }

            if (node->isVisible() && flt2 > flt)
                flt = flt2;
        }

        mProcessBar.FLOAT_0x4 = 1.0f + flt;
        mProcessBar.mStopwatch.start();

        mCpuMonitor.measureBegin();
    }

    void ProcessMeter::measureEndFrame()
    {
        mCpuMonitor.measureEnd();
    }

    void ProcessMeter::measureBeginRender()
    {
        mCpuGpMonitor.measureBegin();
    }

    void ProcessMeter::measureEndRender()
    {
        mCpuGpMonitor.measureEnd();
    }

    void ProcessMeter::callbackDrawSync(u16 s)
    {
        if (UNK_0x68->SHORT_0x4 == s)
            OSSendMessage(&mMesgQueue, (OSMessage)OSGetTick(), 0);
    }

    UNKWORD ProcessMeter::run(void)
    {
        while (true)
        {
            OSMessage msg;
            OSReceiveMessage(&mMesgQueue, &msg, 1);
            u32 tick = (u32)msg;
            
            UNKWORD r28 = OSDisableInterrupts();

            UnkStruct_0x68 *unk = UNK_0x68->UNK_0x8;
            if (unk)
            {
                if (unk->UNK_0x8)
                {
                    GXDisableBreakPt(unk->UNK_0x8->GP_0x0);
                }
            }
            else
            {
                GXDisableBreakPt(unk);
            }

            CpuGpMonitor *gp = UNK_0x68->GP_0xC;
            UNK_0x68 = UNK_0x68->UNK_0x8;

            OSRestoreInterrupts(r28);

            switch(gp->SHORT_0x54)
            {
                case UnkStruct_0x68::START:
                    gp->mGpProcessBar.mStopwatch.setStartTick(tick);
                    gp->SHORT_0x54 = 2;
                    break;
                case UnkStruct_0x68::STOP:
                    gp->mGpProcessBar.mStopwatch.setStopTick(tick);
                    gp->SHORT_0x54 = 0;
                    break;
                case UnkStruct_0x68::INACTIVE:
                    break;
            }
        }
    }

    void ProcessMeter::setDrawSync(UnkStruct_0x68 *data)
    {
        char buf[0x80];
        char buf2[0x8];

        UNKWORD r31 = OSDisableInterrupts();

        if (++SHORT_0x148 > 0xDFFF)
        {
            SHORT_0x148 = 0xD000;
        }

        data->SHORT_0x4 = SHORT_0x148;
        data->UNK_0x8 = NULL;

        if (UNK_0x68)
        {
            GXGetCPUFifo(buf);
            GXGetFifoPtrs(buf, buf2, data);

            if (!UNK_0x68->UNK_0x8)
            {
                GXEnableBreakPt(data->GP_0x0);

                UNK_0x6C->UNK_0x8 = data;
                UNK_0x6C = data;
            }
        }
        else
        {
            UNK_0x6C = UNK_0x68 = data;
        }

        GXSetDrawSync(SHORT_0x148);
        OSRestoreInterrupts(r31);
    }

    void ProcessMeter::setVisible(bool b)
    {
        if (b)
        {
            show();
        }
        else
        {
            hide();
        }
    }

    bool ProcessMeter::isVisible()
    {
        return mFlags & 1;
    }

    // nonmatching
    // void ProcessMeter::draw(f32 width, f32 height, u32 rate)
    // {

    // }

    void ProcessMeter::draw()
    {
        GXRenderModeObj *rmo = BaseSystem::getVideo()->mRenderMode;
        u32 tickRate = BaseSystem::getDisplay()->getTickPerFrame();

        draw((f32)rmo->mFbWidth, (f32)rmo->mEfbHeight, tickRate);
    }

    void ProcessMeter::drawSetting(f32 f1, f32 f2)
    {
        Mtx44 stack_104;
        Mtx stack_152;
        Mtx stack_200;
        Mtx stack_248;

        GXSetViewport(0.0f, 0.0f, f1, f2, 0.0f, 1.0f);
        GXSetScissor(0, 0, (u32)f1, (u32)f2);

        C_MTXOrtho(stack_104, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f);

        GXSetProjection(stack_104, 1);

        PSMTXTrans(stack_248, FLOAT_0x4C / 100.0f, FLOAT_0x50 / 100.0f, 0.0f);
        PSMTXScale(stack_200, FLOAT_0x54 / 100.0f, FLOAT_0x58 / 100.0f, 0.0f);
        PSMTXConcat(stack_248, stack_200, stack_152);
        PSMTXScale(stack_200, 1.0f / mProcessBar.FLOAT_0x4, 1.0f, 1.0f);
        PSMTXConcat(stack_152, stack_200, stack_152);

        GXLoadPosMtxImm(stack_152, 0);
        GXSetCurrentMtx(0);
        GXSetChanCtrl(GX_CHANNEL_ID_4, 0, 0, 0, 0, 0, 2);
        GXSetNumChans(1);
        GXSetNumIndStages(0);
        GXSetNumTexGens(0);
        GXSetTevOrder(GX_TEV_STAGE_ID_0, GX_TEX_COORD_ID_INVALID, GX_TEX_MAP_ID_INVALID, 4);
        GXSetTevOp(GX_TEV_STAGE_ID_0, 4);
        GXSetNumTevStages(1);
        GXSetCullMode(0);
        GXSetBlendMode(2, 1, 0, 3);
        GXSetColorUpdate(1);
        GXClearVtxDesc();
        GXSetVtxAttrFmt(0, GX_ATTR_VTX, 0, 4, 0);
    }

    UNKTYPE ProcessMeter::func_800ABFAC(UNKTYPE)
    {

    }


    ProcessMeter::~ProcessMeter() {}
}
#pragma ipa file
#pragma use_lmw_stmw on

#include "eggProcessMeter.h"
#include "eggSystem.h"
#include "eggVideo.h"
#include "eggDisplay.h"
#include "eggAssert.h"
#include <GX/GXLight.h>
#include <GX/GXMisc.h>
#include <GX/GXFifo.h>
#include <GX/GXFrameBuf.h>
#include <GX/GXTransform.h>
#include <GX/GXBump.h>
#include <GX/GXAttr.h>
#include <GX/GXGeometry.h>
#include <GX/GXPixel.h>
#include <GX/GXVert.h>
#include <OS/OS.h>
#include <OS/OSTime.h>
#include <OS/OSMessage.h>
#include <OS/OSInterrupt.h>
#include <OS/OSThread.h>
#include <math/mtx.h>
#include <math/mtx44.h>

/*
    Nonmatchings:

    ProcessMeter::measureBeginFrame (Some inline stuff going on i think)
    ProcessMeter::draw (This will be bad)
*/

using namespace nw4r;

namespace
{
    void drawBox(f32 x1, f32 x2, f32 y1, f32 y2)
    {

    }

    void drawLine(f32 f1, f32 f2, f32 f3, f32 f4)
    {

    }

    void drawColor(ut::Color c)
    {
        GXSetChanMatColor(GX_CHANNEL_ID_4, c);
    }
}

namespace EGG
{
    ProcessMeter::ProcessBar::ProcessBar(ut::Color c, f32 y, f32 height)
        : mColor(c), mPosX(0.0f), mWidth(0.0f), mStopwatch(),
        mPosY(y), mHeight(height), mFlags(0) {}

    void ProcessMeter::ProcessBar::update(u32 tick)
    {
        update((f32)tick / ((BUS_SPEED >> 2) / 1000));
    }

    void ProcessMeter::ProcessBar::update(f32 x)
    {
        mPosX = x;
        u32 tick = mStopwatch.getMeasureTick();
        mWidth = (f32)tick / ((BUS_SPEED >> 2) / 1000);
    }

    // to-do
    void ProcessMeter::ProcessBar::draw(f32 width, f32 height)
    {
        
    }

    ProcessMeter::CpuMonitor::CpuMonitor(ut::Color c, f32 y) : mProcessBar(c, y, 1.0f) {}

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

    ProcessMeter::CpuGpMonitor::CpuGpMonitor(ut::Color cpuColor, ut::Color gpColor, f32 cpuY, f32 gpY)
        : CpuMonitor(cpuColor, cpuY), mGpProcessBar(gpColor, gpY, 1.0f)
    {
        DRAW_SYNC_0x68.GP_0x0 = this;
        mNextDrawSyncCmd = DrawSync::IDLE;
        DRAW_SYNC_0x68.GP_0xC = this;
    }

    void ProcessMeter::CpuGpMonitor::measureBegin()
    {
        CpuMonitor::measureBegin();
        mNextDrawSyncCmd = DrawSync::START;
        mProcessMeter->setDrawSync(&DRAW_SYNC_0x5C);
    }

    void ProcessMeter::CpuGpMonitor::measureEnd()
    {
        CpuMonitor::measureEnd();
        mProcessMeter->setDrawSync(&DRAW_SYNC_0x5C);
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
    ProcessMeter::ProcessMeter(bool bSetDrawSyncCallback) : Thread(0x1000, 4, 0, NULL), mColor(0xCCCCCCFF), mPosX(5.0f),
        mPosY(5.0f), mWidth(90.0f), mHeight(1.0f), mProcessBar(0x000032C8, 0.0f, 1.0f),
        mCpuMonitor(0xFF5050FF, 0.0f), mCpuGpMonitor(0x50FF50FF, 0x5050FFFF, 1.0f, 2.0f)
    {
        DRAW_SYNC_0x68 = NULL;
        DRAW_SYNC_0x6C = NULL;

        append(&mCpuMonitor);
        append(&mCpuGpMonitor);
        mCpuGpMonitor.mProcessMeter = this;

        hide();

        if (bSetDrawSyncCallback)
        {
            GXSetDrawSyncCallback(callbackDrawSyncStatic);
        }

        OSThread *pGXThread = GXGetCurrentGXThread();
        #line 319
        EGG_ASSERT(pGXThread->priority > 0);

        OSSetThreadPriority(mOSThread, pGXThread->priority - 1);
        OSResumeThread(mOSThread);
    }

    void ProcessMeter::append(CpuMonitor *monitor)
    {
        mProcessBarList.append(&monitor->mProcessBar);
    }

    void ProcessMeter::append(CpuGpMonitor *monitor)
    {
        mProcessBarList.append(&monitor->mProcessBar);
        mProcessBarList.append(&monitor->mGpProcessBar);
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
        while (node = mProcessBarList.getNext(node))
        {
            node->update(node->mStopwatch.getStartTick() -
                mProcessBar.mStopwatch.getStartTick());

            f32 newX;
            if (node->mWidth > 0.0f)
            {
                newX = node->mPosX + node->mWidth;
            }
            else
            {
                newX = 0.0f;
            }

            if (node->isVisible() && newX > flt)
                flt = newX;
        }

        mProcessBar.mWidth = 1.0f + flt;
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
        if (DRAW_SYNC_0x68->mToken == s)
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

            DrawSync *unk = DRAW_SYNC_0x68->UNK_0x8;
            if (unk != NULL)
            {
                if (unk->UNK_0x8 != NULL)
                {
                    GXDisableBreakPt(unk->UNK_0x8->GP_0x0);
                }
            }
            else
            {
                GXDisableBreakPt(unk);
            }

            CpuGpMonitor *gp = DRAW_SYNC_0x68->GP_0xC;
            DRAW_SYNC_0x68 = DRAW_SYNC_0x68->UNK_0x8;

            OSRestoreInterrupts(r28);

            switch(gp->mNextDrawSyncCmd)
            {
                case DrawSync::START:
                    gp->mGpProcessBar.mStopwatch.setStartTick(tick);
                    gp->mNextDrawSyncCmd = DrawSync::STOP;
                    break;
                case DrawSync::STOP:
                    gp->mGpProcessBar.mStopwatch.setStopTick(tick);
                    gp->mNextDrawSyncCmd = DrawSync::IDLE;
                    break;
                case DrawSync::IDLE:
                    break;
            }
        }
    }

    void ProcessMeter::setDrawSync(DrawSync *drawSync)
    {
        char buf[0x80];
        char buf2[0x8];

        UNKWORD r31 = OSDisableInterrupts();

        if (++SHORT_0x148 > 0xDFFF)
        {
            SHORT_0x148 = 0xD000;
        }

        drawSync->mToken = SHORT_0x148;
        drawSync->UNK_0x8 = NULL;

        if (DRAW_SYNC_0x68 != NULL)
        {
            GXGetCPUFifo(buf);
            GXGetFifoPtrs(buf, buf2, drawSync);

            if (DRAW_SYNC_0x68->UNK_0x8 == NULL)
            {
                GXEnableBreakPt(drawSync->GP_0x0);

                DRAW_SYNC_0x6C->UNK_0x8 = drawSync;
                DRAW_SYNC_0x6C = drawSync;
            }
        }
        else
        {
            DRAW_SYNC_0x6C = DRAW_SYNC_0x68 = drawSync;
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
        return mFlags.onBit(0);
    }

    // nonmatching
    void ProcessMeter::draw(f32 width, f32 height, u32 rate)
    {
        if (!isVisible()) return;

        drawSetting(width, height);

        mProcessBar.draw(mProcessBar.mWidth, FLOAT_0x140);
    }

    void ProcessMeter::draw()
    {
        GXRenderModeObj *rmo = BaseSystem::getVideo()->mRenderMode;
        u32 tickRate = BaseSystem::getDisplay()->getTickPerFrame();

        draw((f32)rmo->mFbWidth, (f32)rmo->mEfbHeight, tickRate);
    }

    void ProcessMeter::drawSetting(f32 width, f32 height)
    {
        Mtx44 stack_104;
        Mtx stack_152;
        Mtx stack_200;
        Mtx stack_248;

        GXSetViewport(0.0f, 0.0f, width, height, 0.0f, 1.0f);
        GXSetScissor(0, 0, (u32)width, (u32)height);

        C_MTXOrtho(stack_104, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f);

        GXSetProjection(stack_104, 1);

        PSMTXTrans(stack_248, mPosX / 100.0f, mPosY / 100.0f, 0.0f);
        PSMTXScale(stack_200, mWidth / 100.0f, mHeight / 100.0f, 0.0f);
        PSMTXConcat(stack_248, stack_200, stack_152);
        PSMTXScale(stack_200, 1.0f / mProcessBar.mWidth, 1.0f, 1.0f);
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
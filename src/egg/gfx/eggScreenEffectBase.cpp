#include "eggScreenEffectBase.h"
#include "eggStateGX.h"

namespace EGG
{
    ScreenEffectBase::ScreenEffectBase() : BYTE_0x0(1)
    {
    }

    void ScreenEffectBase::CopyScreenFromAnother(eggScreen& screen)
    {
        mScreen.CopyFromAnother(screen);
    }

    // https://decomp.me/scratch/w13Yi
    void ScreenEffectBase::initialize()
    {
        lbl_804BEC54 &= ~0x4;
        lbl_804BD4F8 = -1;
        lbl_804BEC58 = 0;
        lbl_804BEC5C = 0;

        for (int i = 0; i < cBufferType_Max; i++)
        {
            #line 72
            EGG_ASSERT(getBuffer( ( BufferType )i ) == NULL);
        }

        lbl_8040AA08.FLOAT_0x0 = lbl_8040A9F0.FLOAT_0x0 = 0.0f;
        lbl_8040AA08.FLOAT_0x4 = lbl_8040A9F0.FLOAT_0x4 = 0.0f;
        lbl_8040AA08.FLOAT_0x8 = lbl_8040A9F0.FLOAT_0x8 = 0.0f;
        lbl_8040AA08.FLOAT_0xC = lbl_8040A9F0.FLOAT_0xC = 0.0f;
        lbl_8040AA08.FLOAT_0x10 = lbl_8040A9F0.FLOAT_0x10 = 0.0f;
        lbl_8040AA08.FLOAT_0x14 = lbl_8040A9F0.FLOAT_0x14 = 0.0f;
    }

    void ScreenEffectBase::g_smth_with_efb(int, bool)
    {
        
    }

    bool ScreenEffectBase::freeEffectBuffer(BufferType type)
    {
        if (spBufferSet[type].mpTexBuffer != NULL
            && spBufferSet[type].mpAllocBase == this)
        {
            spBufferSet[type].mpTexBuffer->free();
            clearEffectBuffer(type);
            return true;
        }

        return false;
    }

    void ScreenEffectBase::g_call_smth_with_efb(int r4)
    {
        if (r4 == 0)
        {
            if (lbl_804BD4F8 == 1)
            {
                #line 207
                EGG_ASSERT(spBufferSet[cBufferType_Hide_1_16].mpAllocBase != NULL);
                spBufferSet[cBufferType_Hide_1_16].mpAllocBase->freeEffectBuffer(cBufferType_Hide_1_16);
            }

            g_smth_with_efb(1, false);
            lbl_804BD4F8 = 0;
        }
        else if (r4 == 1 && lbl_804BD4F8 != 0)
        {
            g_smth_with_efb(0, false);
            lbl_804BD4F8 = 1;
        }
    }

    void ScreenEffectBase::g_setup_gx()
    {
    }

    // https://decomp.me/scratch/EPGY0
    ScreenEffectBase::SomeFloatData * ScreenEffectBase::g_setup_screen_view()
    {
        eggScreen::EfbData * data = mScreen.GetDataEfb();

        f32 s1 = lbl_8040A9F0.FLOAT_0x4;
        f32 s0 = lbl_8040A9F0.FLOAT_0x0;
        f32 s3_0 = data->FLOAT_0x8 + s0;
        f32 s3_1 = data->FLOAT_0xC + s1;
        f32 s2 = 0.0f;

        if (s3_0 >= 640.0f) s2 = s3_0 - 640.0f;
        s2 = data->FLOAT_0x8 - s2;

        s3_0 = 0.0f;
        if (s3_1 >= 528.0f) s3_0 = s3_1 - 528.0f;

        s3_1 = data->FLOAT_0xC;

        f32 s3 = s3_1 - s3_0;

        StateGX::GXSetViewport(s3_0, s3_1, s0, s3, data->FLOAT_0x10, data->FLOAT_0x14);
        StateGX::GXSetScissor(s0, s1, s2, s3);
        StateGX::GXSetScissorBoxOffset(0, 0);

        return &lbl_8040A9F0;
    }

    int ScreenEffectBase::lbl_804BD4F8 = -1;
    u16 ScreenEffectBase::lbl_804BEC50;
    u32 ScreenEffectBase::lbl_804BEC54;
    u32 ScreenEffectBase::lbl_804BEC58;
    u32 ScreenEffectBase::lbl_804BEC5C;
}
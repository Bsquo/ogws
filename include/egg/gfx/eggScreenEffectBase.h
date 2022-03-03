#ifndef EGG_GFX_SCREEN_EFFECT_BASE_H
#define EGG_GFX_SCREEN_EFFECT_BASE_H
#include "types_egg.h"
#include "eggAssert.h"
#include "eggScreen.h"
#include "eggTextureBuffer.h"

namespace EGG
{
    class ScreenEffectBase
    {
    public:
        enum BufferType
        {
            cBufferType_Hide_1_16,
            cBufferType_1,
            cBufferType_2,
            cBufferType_3,
            cBufferType_Max
        };

        struct EffectBuffer
        {
            TextureBuffer *mpTexBuffer; // at 0x0
            ScreenEffectBase * mpAllocBase; // at 0x4
            UNKWORD WORD_0x8; // at 0x8
        };

        struct SomeFloatData
        {
            f32 FLOAT_0x0;
            f32 FLOAT_0x4;
            f32 FLOAT_0x8;
            f32 FLOAT_0xC;
            f32 FLOAT_0x10;
            f32 FLOAT_0x14;
        };

    private:
        u8 BYTE_0x0;
        eggScreen mScreen;

        static int lbl_804BD4F8;

        static u16 lbl_804BEC50;
        static u32 lbl_804BEC54;
        static u32 lbl_804BEC58;
        static u32 lbl_804BEC5C;

        static EffectBuffer spBufferSet[cBufferType_Max];
        static SomeFloatData lbl_8040A9F0;
        static SomeFloatData lbl_8040AA08;

    public:
        ScreenEffectBase();
        // TO-DO: Resolve the weak instance (DrawPathBase)
        virtual ~ScreenEffectBase(); // at 0x8

        static void clearEffectBuffer(BufferType type)
        {
            #line 174
            EGG_ASSERT(type < cBufferType_Max);
            spBufferSet[type].mpTexBuffer = NULL;
            spBufferSet[type].mpAllocBase = NULL;
            spBufferSet[type].WORD_0x8 = 0;
        }

        TextureBuffer * getBuffer(BufferType type) const
        {
            return spBufferSet[type].mpTexBuffer;
        }

        void CopyScreenFromAnother(eggScreen&);
       
        static void initialize();
        void g_smth_with_efb(int, bool);
        bool freeEffectBuffer(BufferType);
        void g_call_smth_with_efb(int);
        void g_setup_gx();
        SomeFloatData * g_setup_screen_view();
    };
}

#endif
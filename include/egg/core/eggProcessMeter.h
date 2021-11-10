#ifndef EGG_CORE_PROCESS_METER_H
#define EGG_CORE_PROCESS_METER_H
#include "types_egg.h"
#include "eggPerfView.h"
#include "eggThread.h"
#include "eggStopwatch.h"
#include "eggList.h"
#include "eggBitFlag.h"
#include "types_nw4r.h"
#include "ut_Color.h"

namespace EGG
{
    class ProcessMeter : public Thread, public PerformanceView
    {
    public:
        ProcessMeter(bool);
        ~ProcessMeter();

        struct CpuMonitor;
        struct CpuGpMonitor;

        struct DrawSync
        {
            enum
            {
                IDLE,
                START,
                STOP
            };
            
            CpuGpMonitor *GP_0x0;
            u16 mToken; // at 0x4
            DrawSync *UNK_0x8;
            CpuGpMonitor *GP_0xC;
        };

        struct ProcessBar
        {
			static u16 getLinkOffset()
			{
				return offsetof(ProcessBar, mNode);
			}

            ProcessBar(nw4r::ut::Color, f32, f32);
            void update(u32);
            void update(f32);

            void draw(f32, f32);

            // Unofficial symbiols
            void show() { mFlags &= 0xFE; }
            void hide() { mFlags |= 1; }
            bool isVisible() { return !(mFlags & 1); }

            f32 mPosX; // at 0x0
            f32 mWidth; // at 0x4
            Stopwatch mStopwatch; // at 0x8
            nw4r::ut::Color mColor; // at 0x10
            f32 mPosY; // at 0x14
            f32 mHeight; // at 0x18
            u8 mFlags; // at 0x1C
            nw4r::ut::Node mNode; // at 0x20
        };

        class CpuMonitor
        {
        public:
            CpuMonitor(nw4r::ut::Color, f32);

            // Unofficial symbols
            virtual void show(); // at 0x8
            virtual void hide(); // at 0xC

            virtual void measureBegin(); // at 0x10
            virtual void measureEnd(); // at 0x14

            ProcessBar mProcessBar; // at 0x4
        };

        class CpuGpMonitor : public CpuMonitor
        {
        public:
            CpuGpMonitor(nw4r::ut::Color, nw4r::ut::Color, f32, f32);

            // Unofficial symbols
            virtual void show(); // at 0x8
            virtual void hide(); // at 0xC

            virtual void measureBegin(); // at 0x10
            virtual void measureEnd(); // at 0x14

            ProcessBar mGpProcessBar; // at 0x2C
            u16 mNextDrawSyncCmd; // at 0x54
            char UNK_0x56[0x2];
            ProcessMeter *mProcessMeter; // at 0x58
            DrawSync DRAW_SYNC_0x5C;
            DrawSync DRAW_SYNC_0x68;
        };

        virtual UNKWORD run(void);
        virtual void measureBeginFrame(); // at 0x8
        virtual void measureEndFrame(); // at 0xC
        virtual void measureBeginRender(); // at 0x10
        virtual void measureEndRender(); // at 0x14
        virtual void callbackDrawSync(u16); // at 0x18
        virtual void draw(); // at 0x20
        virtual void setVisible(bool); // at 0x24
        virtual bool isVisible(); // at 0x28
        virtual void VMT_UNUSED() {}

		void append(CpuMonitor *);
		void append(CpuGpMonitor *);

        static void callbackDrawSyncStatic(u16);
        void setDrawSync(DrawSync *);
        void draw(f32, f32, u32);
        void drawSetting(f32, f32);
        UNKTYPE func_800ABFAC(UNKTYPE);

        // Unofficial
        void show() { mFlags.resetBit(0); }
        void hide() { mFlags.setBit(0); }

        nw4r::ut::Color mColor; // at 0x48
        f32 mPosX; // at 0x4C
        f32 mPosY; // at 0x50
        f32 mWidth; // at 0x54
        f32 mHeight; // at 0x58
        TNw4rList<ProcessBar> mProcessBarList; // at 0x5C
        DrawSync *DRAW_SYNC_0x68;
        DrawSync *DRAW_SYNC_0x6C;
        ProcessBar mProcessBar; // at 0x70
        CpuMonitor mCpuMonitor; // at 0x98
        CpuGpMonitor mCpuGpMonitor; // at 0xC4
        f32 FLOAT_0x140;
        UNKWORD WORD_0x144;
        u16 SHORT_0x148;
        TBitFlag<u8> mFlags; // at 0x14A
    };
}

#endif
#ifndef EGG_CORE_PROCESS_METER_H
#define EGG_CORE_PROCESS_METER_H
#include "types_egg.h"
#include "eggPerfView.h"
#include "eggThread.h"
#include "eggStopwatch.h"
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

        struct UnkStruct_0x68
        {
            enum
            {
                INACTIVE,
                START,
                STOP
            };
            
            CpuGpMonitor *GP_0x0;
            u16 SHORT_0x4;
            struct UnkStruct_0x68 *UNK_0x8;
            CpuGpMonitor *GP_0xC;
        };

        struct ProcessBar
        {
            ProcessBar(nw4r::ut::Color, f32, f32);
            void update(u32);
            void update(f32);

            // Unofficial symbiols
            void show() { mFlags &= 0xFE; }
            void hide() { mFlags |= 1; }
            bool isVisible() { return !(mFlags & 1); }

            f32 FLOAT_0x0;
            f32 FLOAT_0x4;
            Stopwatch mStopwatch; // at 0x8
            nw4r::ut::Color mColor; // at 0x10
            f32 FLOAT_0x14;
            f32 FLOAT_0x18;
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
            u16 SHORT_0x54;
            char UNK_0x56[0x2];
            ProcessMeter *mProcessMeter; // at 0x58
            UnkStruct_0x68 UNK_0x5C;
            UnkStruct_0x68 UNK_0x68;
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

        static void callbackDrawSyncStatic(u16);
        // Unofficial argument
        void setDrawSync(UnkStruct_0x68 *);
        void draw(f32, f32, u32);
        void drawSetting(f32, f32);
        UNKTYPE func_800ABFAC(UNKTYPE);

        // Unofficial symbols
        void show() { mFlags |= 1; }
        void hide() { mFlags &= 0xFE; }

        nw4r::ut::Color mColor; // at 0x48
        f32 FLOAT_0x4C;
        f32 FLOAT_0x50;
        f32 FLOAT_0x54;
        f32 FLOAT_0x58;
        nw4r::ut::List mProcessBarList; // at 0x5C
        UnkStruct_0x68 *UNK_0x68;
        UnkStruct_0x68 *UNK_0x6C;
        ProcessBar mProcessBar;
        CpuMonitor mCpuMonitor;
        CpuGpMonitor mCpuGpMonitor;
        UNKWORD WORD_0x144;
        u16 SHORT_0x148;
        u16 SHORT_0x14A;
        u8 mFlags;
    };
}

#endif
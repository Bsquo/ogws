#ifndef EGG_CORE_STOPWATCH_H
#define EGG_CORE_STOPWATCH_H
#include "types_egg.h"
#include "eggWatch.h"

namespace EGG
{
    class Stopwatch
    {
    public:
        Stopwatch() {}
        void start()
        {
            mStartWatch.start();
            mEndWatch.reset();
        }
        void stop() { mEndWatch.start(); }
        u32 getMeasureTick()
        {
            if (mStartWatch.isStarted() && mEndWatch.isStarted())
                return mEndWatch.getStartTick() - mStartWatch.getStartTick();

            return 0;
        }
        // Unofficial symbols
        u32 getStartTick() { return mStartWatch.getStartTick(); }
        u32 getStopTick() { return mEndWatch.getStartTick(); }
        // Unofficial symbol
        void setStartTick(u32 t) { mStartWatch.setStartTick(t); }
        void setStopTick(u32 t) { mEndWatch.setStartTick(t); }
        bool isStarted() { return mStartWatch.isStarted(); }

    private:
        Watch mStartWatch; // at 0x0
        Watch mEndWatch; // at 0x4
    };
}

#endif
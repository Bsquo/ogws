#ifndef EGG_CORE_WATCH_H
#define EGG_CORE_WATCH_H
#include "types_egg.h"
#include <OS/OSTime.h>

namespace EGG
{
    class Watch
    {
    public:
        Watch() { reset(); }
        void reset() { mStartTick = 0; }
        void start() { mStartTick = OSGetTick(); }
        u32 getStartTick() { return mStartTick; }
        void setStartTick(u32 t) { mStartTick = t; }
        bool isStarted() { return (mStartTick != 0); }
        
    private:
        u32 mStartTick; // at 0x0
    };
}

#endif
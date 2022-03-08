#ifndef EGG_AUDIO_AUDIO_MGR_H
#define EGG_AUDIO_AUDIO_MGR_H
#include "types_egg.h"
#include "eggAudioHeapMgr.h"
#include "eggAudioArcPlayerMgr.h"
#include "eggIAudioMgr.h"
#include "eggAudioSystem.h"

namespace EGG
{
    class SimpleAudioMgr : public IAudioMgr, public SoundHeapMgr, public ArcPlayer, public AudioSystem
    {
    public:
        struct SimpleAudioMgrArg : IAudioMgr::Arg
        {
            SimpleAudioMgrArg();
        };

        SimpleAudioMgr();
        virtual ~SimpleAudioMgr(); // at 0x80
        virtual void initialize(IAudioMgr::Arg *); // at 0x8
        virtual void calc(); // at 0xC
    };
}

#endif
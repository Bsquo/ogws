#include "eggAudioMgr.h"
#include "eggAssert.h"
#include "eggAllocator.h"
#include "snd_SoundSystem.h"
#include <RevoSDK/AX/AX.h>
#include <RevoSDK/AI/ai.h>

namespace EGG
{
    using namespace nw4r;

    SimpleAudioMgr::SimpleAudioMgrArg::SimpleAudioMgrArg()
    {
    }

    SimpleAudioMgr::SimpleAudioMgr()
        : ArcPlayer(getSoundHeap())
    {
        mIsInitialized = false;
    }

    SimpleAudioMgr::~SimpleAudioMgr()
    {
    }

    void SimpleAudioMgr::initialize(Arg *arg_)
    {
        #line 92
        EGG_ASSERT(arg_);

        AIInit(0);
        AXInit();

        if (arg_->WORD_0x1C != 0 && arg_->mHeap != NULL)
        {
            Allocator a = Allocator(arg_->mHeap, 32);
            createSoundHeap(&a, arg_->WORD_0x1C);
        }

        if (arg_->WORD_0x10 == 0 && arg_->WORD_0x14 == 0)
        {
            snd::SoundSystem::InitSoundSystem(arg_->WORD_0x8, arg_->WORD_0xC);
        }
        else
        {
            if (arg_->WORD_0x10 == 0) arg_->WORD_0x10 == 0x4000;
            if (arg_->WORD_0x14 == 0) arg_->WORD_0x14 == 0x4000;

            snd::SoundSystem::SoundSystemParam param = {
                arg_->WORD_0x8, arg_->WORD_0x10, arg_->WORD_0xC, arg_->WORD_0x14
            };

            u32 workMemSize = snd::SoundSystem::GetRequiredMemSize(param);
            void *workMem = getSoundHeap()->Alloc(workMemSize, NULL, NULL);
            snd::SoundSystem::InitSoundSystem(param, workMem, workMemSize);
        }

        setSteamBlocks(arg_->WORD_0x18);
        mIsInitialized = true;
    }

    void SimpleAudioMgr::calc()
    {
        AudioSystem::calc();
        if (WORD_0x4 == 2) ArcPlayer::stopAllSound();
        ArcPlayer::calc();
    }
}
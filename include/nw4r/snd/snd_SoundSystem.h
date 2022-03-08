#ifndef NW4R_SND_SOUND_SYSTEM_H
#define NW4R_SND_SOUND_SYSTEM_H
#include "types_nw4r.h"
#include "snd_AxManager.h"

namespace nw4r
{
	namespace snd
	{
        struct SoundSystem
        {
            struct SoundSystemParam
            {
                UNKWORD WORD_0x0;
                UNKWORD WORD_0x4;
                UNKWORD WORD_0x8;
                UNKWORD WORD_0xC;
            };

            static inline f32 GetMasterVolume()
            {
                return detail::AxManager::GetInstance()->mOutputVolume.GetValue();
            }

            static inline void PrepareReset()
            {
                detail::AxManager::GetInstance()->PrepareReset();
            }

            static void InitSoundSystem(s32, s32);
            static void InitSoundSystem(const SoundSystemParam&, void *, u32);
            static void ShutdownSoundSystem();
            static void WaitForResetReady();
            static UNKWORD GetRequiredMemSize(const SoundSystemParam &);
        };
	}
}

#endif
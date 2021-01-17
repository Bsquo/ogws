GROUP_0_O_FILES := \
	build/asm/extab.o \
	build/asm/extabindex.o \
	build/asm/ctors_1.o \

REVOSDK_O_FILES := \
	build/RevoSDK/TRK/__mem.o \
	build/RevoSDK/TRK_old/mem_TRK.o \
	build/asm/RevoSDK/TRK/__exception.o \
	build/asm/RevoSDK/TRK/dolphin_trk.o \
	build/asm/RevoSDK/TRK/__start.o \
	build/asm/RevoSDK/TRK/__ppc_eabi_init.o \

NW4R_O_FILES := \
	build/nw4r/ut/ut_list.o \
	build/nw4r/ut/ut_LinkList.o \
	build/nw4r/ut/ut_binaryFileFormat.o \
	build/nw4r/ut/ut_CharStrmReader.o \
	build/nw4r/ut/ut_TagProcessorBase.o \
	build/nw4r/ut/ut_IOStream.o \
	build/nw4r/ut/ut_FileStream.o \
	build/asm/nw4r/ut/ut_DvdFileStream.o \
	build/nw4r/ut/ut_DvdLockedFileStream.o \
	build/nw4r/ut/ut_NandFileStream.o \
	build/nw4r/ut/ut_LockedCache.o \
	build/nw4r/ut/ut_Font.o \
	build/nw4r/ut/ut_RomFont.o \
	build/nw4r/ut/ut_ResFontBase.o \
	build/nw4r/ut/ut_ResFont.o \
	build/nw4r/ut/ut_CharWriter.o \
	build/asm/nw4r/ut/ut_TextWriterBase.o \
	build/nw4r/ef/ef_draworder.o \
	build/nw4r/ef/ef_effect.o \
	build/asm/nw4r/ef/ef_effectsystem.o \
	build/asm/nw4r/ef/ef_emitter.o \
	build/asm/nw4r/ef/ef_animcurve.o \
	build/asm/nw4r/ef/ef_particle.o \
	build/asm/nw4r/ef/ef_particlemanager.o \
	build/asm/nw4r/ef/ef_resource.o \
	build/asm/nw4r/ef/ef_util.o \
	build/nw4r/ef/ef_handle.o \
	build/asm/nw4r/ef/ef_emitterform.o \
	build/nw4r/ef/ef_creationqueue.o \
	build/nw4r/ef/ef_emform.o \
	build/asm/nw4r/ef/ef_point.o \
	build/asm/nw4r/ef/ef_line.o \
	build/asm/nw4r/ef/ef_disc.o \
	build/asm/nw4r/ef/ef_sphere.o \
	build/asm/nw4r/ef/ef_cylinder.o \
	build/asm/nw4r/ef/ef_torus.o \
	build/asm/nw4r/ef/ef_cube.o \
	build/nw4r/ef/ef_drawstrategybuilder.o \
	build/asm/nw4r/ef/ef_drawstrategyimpl.o \
	build/asm/nw4r/ef/ef_drawbillboardstrategy.o \
	build/asm/nw4r/ef/ef_drawdirectionalstrategy.o \
	build/asm/nw4r/ef/ef_drawfreestrategy.o \
	build/asm/nw4r/ef/ef_drawlinestrategy.o \
	build/asm/nw4r/ef/ef_drawpointstrategy.o \
	build/asm/nw4r/ef/ef_drawstripestrategy.o \
	build/asm/nw4r/ef/ef_drawsmoothstripestrategy.o \
	build/asm/nw4r/nw4r_8002F700.o \
	build/asm/nw4r/math/math_arithmetic.o \
	build/asm/nw4r/math/math_triangular.o \
	build/asm/nw4r/math/math_types.o \
	build/asm/nw4r/math/math_geometry.o \
	build/asm/nw4r/snd/snd_AxManager.o \
	build/asm/nw4r/snd/snd_AxVoice.o \
	build/asm/nw4r/snd/snd_AxVoiceManager.o \
	build/nw4r/snd/snd_AxfxImpl.o \
	build/nw4r/snd/snd_Bank.o \
	build/nw4r/snd/snd_BankFile.o \
	build/nw4r/snd/snd_BasicPlayer.o \
	build/asm/nw4r/snd/snd_BasicSound.o \
	build/asm/nw4r/snd/snd_Channel.o \
	build/asm/nw4r/snd/snd_DisposeCallbackManager.o \
	build/asm/nw4r/snd/snd_DvdSoundArchive.o \
	build/nw4r/snd/snd_EnvGenerator.o \
	build/asm/nw4r/snd/snd_ExternalSoundPlayer.o \
	build/asm/nw4r/snd/snd_FrameHeap.o \
	build/nw4r/snd/snd_FxChorus.o \
	build/nw4r/snd/snd_FxDelay.o \
	build/nw4r/snd/snd_FxReverbHi.o \
	build/asm/nw4r/snd/snd_FxReverbHiDpl2.o \
	build/nw4r/snd/snd_InstancePool.o \
	build/nw4r/snd/snd_Lfo.o \
	build/asm/nw4r/snd/snd_MemorySoundArchive.o \
	build/asm/nw4r/snd/snd_MidiSeqPlayer.o \
	build/asm/nw4r/snd/snd_MmlParser.o \
	build/asm/nw4r/snd/snd_MmlSeqTrack.o \
	build/asm/nw4r/snd/snd_MmlSeqTrackAllocator.o \
	build/asm/nw4r/snd/snd_NandSoundArchive.o \
	build/nw4r/snd/snd_RemoteSpeaker.o \
	build/nw4r/snd/snd_RemoteSpeakerManager.o \
	build/nw4r/snd/snd_SeqFile.o \
	build/nw4r/snd/snd_SeqPlayer.o \
	build/nw4r/snd/snd_SeqSound.o \
	build/nw4r/snd/snd_SeqSoundHandle.o \
	build/asm/nw4r/snd/snd_SeqTrack.o \
	build/nw4r/snd/snd_Sound3DActor.o \
	build/asm/nw4r/snd/snd_Sound3DListener.o \
	build/asm/nw4r/snd/snd_Sound3DManager.o \
	build/asm/nw4r/snd/snd_SoundArchive.o \
	build/asm/nw4r/snd/snd_SoundArchiveFile.o \
	build/asm/nw4r/snd/snd_SoundArchiveLoader.o \
	build/asm/nw4r/snd/snd_SoundArchivePlayer.o \
	build/asm/nw4r/snd/snd_SoundHandle.o \
	build/asm/nw4r/snd/snd_SoundHeap.o \
	build/asm/nw4r/snd/snd_SoundPlayer.o \
	build/asm/nw4r/snd/snd_SoundStartable.o \
	build/asm/nw4r/snd/snd_SoundSystem.o \
	build/asm/nw4r/snd/snd_SoundThread.o \
	build/asm/nw4r/snd/snd_StrmChannel.o \
	build/asm/nw4r/snd/snd_StrmFile.o \
	build/asm/nw4r/snd/snd_StrmPlayer.o \
	build/asm/nw4r/snd/snd_StrmSound.o \
	build/asm/nw4r/snd/snd_StrmSoundHandle.o \
	build/asm/nw4r/snd/snd_Task.o \
	build/asm/nw4r/snd/snd_TaskManager.o \
	build/asm/nw4r/snd/snd_TaskThread.o \
	build/asm/nw4r/snd/snd_Voice.o \
	build/asm/nw4r/snd/snd_VoiceManager.o \
	build/asm/nw4r/snd/snd_Util.o \
	build/asm/nw4r/snd/snd_WaveFile.o \
	build/asm/nw4r/snd/snd_WaveSound.o \
	build/asm/nw4r/snd/snd_WaveSoundHandle.o \
	build/asm/nw4r/snd/snd_WsdFile.o \
	build/asm/nw4r/snd/snd_WsdPlayer.o \
	build/asm/nw4r/snd/snd_adpcm.o \
	build/nw4r/g3d/g3d_rescommon.o \
	build/nw4r/g3d/g3d_resdict.o \
	build/asm/nw4r/g3d/g3d_resfile.o \
	build/asm/nw4r/g3d/g3d_resmdl.o \
	build/asm/nw4r/g3d/g3d_resshp.o \
	build/asm/nw4r/g3d/g3d_restev.o \
	build/asm/nw4r/g3d/g3d_resmat.o \
	build/asm/nw4r/g3d/g3d_resvtx.o \
	build/asm/nw4r/g3d/g3d_restex.o \
	build/asm/nw4r/g3d/g3d_resnode.o \
	build/asm/nw4r/g3d/g3d_resanm.o \
	build/asm/nw4r/g3d/g3d_resanmvis.o \
	build/asm/nw4r/g3d/g3d_resanmclr.o \


GROUP_1_O_FILES := \
	build/asm/text.o \
	build/asm/data.o \
	build/asm/sdata.o \
	build/RevoSDK/ARC/arc.o \
	build/asm/text_b.o \
	build/asm/data_b.o \
	build/asm/sdata_b.o \
	build/asm/ctors_2.o \
	build/asm/dtors.o \
	build/asm/file.o \
	build/asm/rodata.o \
	build/asm/bss.o \
	build/asm/sbss.o \
	build/asm/sdata.o \
	build/asm/sbss2.o \
	build/asm/sdata2.o \

O_FILES := $(GROUP_0_O_FILES) $(NW4R_O_FILES) $(GROUP_1_O_FILES) $(REVOSDK_O_FILES)

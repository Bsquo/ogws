GROUP_0_O_FILES := \
	build/asm/extab.o \
	build/asm/extabindex.o \
	build/asm/ctors_1.o \

TRK_INIT_O_FILES := \
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
	build/nw4r/ut/ut_DvdFileStream.o \
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
	build/nw4r/ef/ef_effectsystem.o \
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
	build/nw4r/math/math_types.o \
	build/asm/nw4r/math/math_geometry.o \
	build/asm/nw4r/snd/snd_AnimSound.o \
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
	build/nw4r/snd/snd_DvdSoundArchive.o \
	build/nw4r/snd/snd_EnvGenerator.o \
	build/nw4r/snd/snd_ExternalSoundPlayer.o \
	build/asm/nw4r/snd/snd_FrameHeap.o \
	build/nw4r/snd/snd_FxChorus.o \
	build/nw4r/snd/snd_FxDelay.o \
	build/nw4r/snd/snd_FxReverbHi.o \
	build/asm/nw4r/snd/snd_FxReverbHiDpl2.o \
	build/nw4r/snd/snd_InstancePool.o \
	build/nw4r/snd/snd_Lfo.o \
	build/nw4r/snd/snd_MemorySoundArchive.o \
	build/asm/nw4r/snd/snd_MidiSeqPlayer.o \
	build/nw4r/snd/snd_MmlParser.o \
	build/nw4r/snd/snd_MmlSeqTrack.o \
	build/nw4r/snd/snd_MmlSeqTrackAllocator.o \
	build/asm/nw4r/snd/snd_NandSoundArchive.o \
	build/nw4r/snd/snd_RemoteSpeaker.o \
	build/nw4r/snd/snd_RemoteSpeakerManager.o \
	build/nw4r/snd/snd_SeqFile.o \
	build/nw4r/snd/snd_SeqPlayer.o \
	build/nw4r/snd/snd_SeqSound.o \
	build/nw4r/snd/snd_SeqSoundHandle.o \
	build/asm/nw4r/snd/snd_SeqTrack.o \
	build/nw4r/snd/snd_Sound3DActor.o \
	build/nw4r/snd/snd_Sound3DListener.o \
	build/nw4r/snd/snd_Sound3DManager.o \
	build/nw4r/snd/snd_SoundActor.o \
	build/nw4r/snd/snd_SoundArchive.o \
	build/nw4r/snd/snd_SoundArchiveFile.o \
	build/nw4r/snd/snd_SoundArchiveLoader.o \
	build/asm/nw4r/snd/snd_SoundArchivePlayer.o \
	build/nw4r/snd/snd_SoundHandle.o \
	build/nw4r/snd/snd_SoundHeap.o \
	build/asm/nw4r/snd/snd_SoundPlayer.o \
	build/nw4r/snd/snd_SoundStartable.o \
	build/asm/nw4r/snd/snd_SoundSystem.o \
	build/asm/nw4r/snd/snd_SoundThread.o \
	build/nw4r/snd/snd_StrmChannel.o \
	build/asm/nw4r/snd/snd_StrmFile.o \
	build/asm/nw4r/snd/snd_StrmPlayer.o \
	build/nw4r/snd/snd_StrmSound.o \
	build/nw4r/snd/snd_StrmSoundHandle.o \
	build/nw4r/snd/snd_Task.o \
	build/asm/nw4r/snd/snd_TaskManager.o \
	build/nw4r/snd/snd_TaskThread.o \
	build/asm/nw4r/snd/snd_Voice.o \
	build/asm/nw4r/snd/snd_VoiceManager.o \
	build/nw4r/snd/snd_Util.o \
	build/asm/nw4r/snd/snd_WaveFile.o \
	build/nw4r/snd/snd_WaveSound.o \
	build/nw4r/snd/snd_WaveSoundHandle.o \
	build/asm/nw4r/snd/snd_WsdFile.o \
	build/asm/nw4r/snd/snd_WsdPlayer.o \
	build/asm/nw4r/snd/snd_adpcm.o \
	build/nw4r/g3d/g3d_rescommon.o \
	build/nw4r/g3d/g3d_resdict.o \
	build/nw4r/g3d/g3d_resfile.o \
	build/nw4r/g3d/g3d_resmdl.o \
	build/nw4r/g3d/g3d_resshp.o \
	build/nw4r/g3d/g3d_restev.o \
	build/asm/nw4r/g3d/g3d_resmat.o \
	build/nw4r/g3d/g3d_resvtx.o \
	build/nw4r/g3d/g3d_restex.o \
	build/asm/nw4r/g3d/g3d_resnode.o \
	build/nw4r/g3d/g3d_resanm.o \
	build/nw4r/g3d/g3d_resanmvis.o \
	build/nw4r/g3d/g3d_resanmclr.o \
	build/asm/nw4r/g3d/g3d_resanmtexpat.o \
	build/asm/nw4r/g3d/g3d_resanmtexsrt.o \
	build/asm/nw4r/g3d/g3d_resanmchr.o \
	build/asm/nw4r/g3d/g3d_reslightset.o \
	build/asm/nw4r/g3d/g3d_anmvis.o \
	build/asm/nw4r/g3d/g3d_anmclr.o \
	build/asm/nw4r/g3d/g3d_anmtexpat.o \
	build/asm/nw4r/g3d/g3d_anmtexsrt.o \
	build/asm/nw4r/g3d/g3d_anmchr.o \
	build/asm/nw4r/g3d/g3d_anmshp.o \
	build/asm/nw4r/g3d/g3d_anmscn.o \
	build/nw4r/g3d/g3d_obj.o \
	build/nw4r/g3d/g3d_anmobj.o \
	build/asm/nw4r/g3d/g3d_gpu.o \
	build/asm/nw4r/g3d/g3d_tmem.o \
	build/nw4r/g3d/g3d_cpu.o \
	build/asm/nw4r/g3d/g3d_state.o \
	build/asm/nw4r/g3d/g3d_draw1mat1shp.o \
	build/asm/nw4r/g3d/g3d_calcview.o \
	build/nw4r/g3d/g3d_dcc.o \
	build/nw4r/g3d/g3d_workmem.o \
	build/asm/nw4r/g3d/g3d_calcworld.o \
	build/asm/nw4r/g3d/g3d_draw.o \
	build/nw4r/g3d/g3d_camera.o \
	build/nw4r/g3d/g3d_basic.o \
	build/asm/nw4r/g3d/g3d_maya.o \
	build/asm/nw4r/g3d/g3d_xsi.o \
	build/asm/nw4r/g3d/g3d_3dsmax.o \
	build/asm/nw4r/g3d/g3d_scnobj.o \
	build/asm/nw4r/g3d/g3d_scnroot.o \
	build/asm/nw4r/g3d/g3d_scnmdlsmpl.o \
	build/asm/nw4r/g3d/g3d_scnmdl.o \
	build/asm/nw4r/g3d/g3d_calcmaterial.o \
	build/nw4r/g3d/g3d_init.o \
	build/nw4r/g3d/g3d_scnmdl1mat1shp.o \
	build/asm/nw4r/g3d/g3d_scnproc.o \
	build/nw4r/g3d/g3d_fog.o \
	build/nw4r/g3d/g3d_light.o \
	build/asm/nw4r/g3d/g3d_calcvtx.o \
	build/asm/nw4r/lyt/lyt_pane.o \
	build/asm/nw4r/lyt/lyt_group.o \
	build/asm/nw4r/lyt/lyt_layout.o \
	build/asm/nw4r/lyt/lyt_picture.o \
	build/asm/nw4r/lyt/lyt_textBox.o \
	build/asm/nw4r/lyt/lyt_window.o \
	build/nw4r/lyt/lyt_bounding.o \
	build/asm/nw4r/lyt/lyt_material.o \
	build/nw4r/lyt/lyt_texMap.o \
	build/nw4r/lyt/lyt_drawInfo.o \
	build/asm/nw4r/lyt/lyt_animation.o \
	build/nw4r/lyt/lyt_resourceAccessor.o \
	build/nw4r/lyt/lyt_arcResourceAccessor.o \
	build/nw4r/lyt/lyt_common.o \

EGG_O_FILES := \
	build/asm/egg/gfx/eggShadowTextureManager.o \
	build/asm/egg/gfx/eggStateGX.o \
	build/egg/gfx/eggTextureBuffer.o \
	build/asm/egg/gfx/eggAnalizeDL.o \
	build/asm/egg/gfx/eggCapTexture.o \
	build/asm/egg/gfx/eggCpuTexture.o \
	build/asm/egg/gfx/eggDrawGX.o \
	build/asm/egg/gfx/eggDrawPathBase.o \
	build/asm/egg/gfx/eggDrawPathBloom.o \
	build/asm/egg/gfx/eggDrawPathDOF.o \
	build/asm/egg/gfx/eggDrawPathHDR.o \
	build/asm/egg/gfx/eggDrawPathShadowVolume.o \
	build/asm/egg/gfx/eggDrawPath_8008E294.o \
	build/egg/gfx/eggFog.o \
	build/egg/gfx/eggFogManager.o \
	build/asm/egg/gfx/eggG3DUtility.o \
	build/asm/egg/gfx/eggGfxEngine.o \
	build/asm/egg/gfx/eggLightManager.o \
	build/asm/egg/gfx/eggLightTexture.o \
	build/asm/egg/gfx/eggLightTextureManager.o \
	build/asm/egg/gfx/eggModelBoundingInfo.o \
	build/asm/egg/gfx/eggModelEx.o \
	build/asm/egg/gfx/eggModelSnapshot.o \
	build/asm/egg/gfx/eggPostEffectBase.o \
	build/asm/egg/gfx/eggPostEffectMask.o \
	build/asm/egg/gfx/eggScnRootEx.o \
	build/asm/egg/gfx/eggScreen.o \
	build/asm/egg/gfx/eggShadowTexture.o \
	build/asm/egg/gfx/eggIScnProc.o \
	build/asm/egg/gfx/eggScnRenderer.o \
	build/asm/egg/gfx/eggLightObject.o \
	build/asm/egg/gfx/eggPostEffectMaskDOF.o \
	build/asm/egg/gfx/eggScreenEffectBase.o \
	build/asm/egg/gfx/eggFrustum.o \
	build/asm/egg/gfx/eggGXUtility.o \
	build/asm/egg/gfx/eggDrawHelper.o \
	build/asm/egg/gfx/egg_800A1DB0.o \
	build/asm/egg/prim/eggAssert.o \
	build/asm/egg/egg_800A204C.o \
	build/egg/math/eggMath.o \
	build/asm/egg/math/eggMatrix.o \
	build/egg/math/eggQuat.o \
	build/egg/math/eggVector.o \
	build/asm/egg/core/eggExpHeap.o \
	build/asm/egg/core/eggFrmHeap.o \
	build/egg/core/eggHeap.o \
	build/egg/core/eggAllocator.o \
	build/egg/core/eggThread.o \
	build/asm/egg/core/eggSystem.o \
	build/egg/core/eggTaskThread.o \
	build/egg/core/eggGraphicsFifo.o \
	build/egg/core/eggColorFader.o \
	build/egg/core/eggSceneManager.o \
	build/asm/egg/core/eggController.o \
	build/asm/egg/core/eggStream.o \
	build/egg/core/eggDisplay.o \
	build/asm/egg/core/eggVideo.o \
	build/egg/core/eggXfb.o \
	build/egg/core/eggXfbManager.o \
	build/asm/egg/core/eggDvdRipper.o \
	build/egg/core/eggDvdFile.o \
	build/egg/core/eggScene.o \
	build/asm/egg/core/eggProcessMeter.o \
	build/egg/core/eggDisposer.o \
	build/egg/core/eggArchive.o \
	build/asm/egg/core/eggDecomp.o \
	build/egg/core/eggAsyncDisplay.o \
	build/egg/core/eggCntFile.o \
	build/egg/audio/eggAudioArcPlayerMgr.o \
	build/asm/egg/audio/eggAudioExpMgr.o \
	build/asm/egg/audio/eggAudioFxMgr.o \
	build/egg/audio/eggAudioHeapMgr.o \
	build/asm/egg/audio/eggAudioMgr.o \
	build/egg/audio/eggAudioSystem.o \
	build/asm/egg/util/eggMsgRes.o \
	build/egg/util/eggEffect.o \
	build/egg/util/eggException.o \
	build/asm/egg/egg_8037B248.o \

TRK_RUNTIME_O_FILES := \
	build/asm/RevoSDK/TRK/__mem.o \
	build/asm/RevoSDK/TRK/__va_arg.o \
	build/asm/RevoSDK/TRK/global_destructor_chain.o \
	build/asm/RevoSDK/TRK/NMWException.o \
	build/asm/RevoSDK/TRK/ptmf.o \
	build/asm/RevoSDK/TRK/runtime.o \
	build/asm/RevoSDK/TRK/__init_cpp_exceptions.o \
	build/asm/RevoSDK/TRK/Gecko_ExceptionPPC.o \
	build/asm/RevoSDK/TRK/GCN_mem_alloc.o \

STL_O_FILES := \
	build/asm/STL/alloc.o \
	build/asm/STL/ansi_files.o \
	build/asm/STL/ansi_fp.o \
	build/asm/STL/arith.o \
	build/asm/STL/buffer_io.o \
	build/asm/STL/direct_io.o \
	build/asm/STL/errno.o \
	build/asm/STL/file_io.o \
	build/asm/STL/FILE_POS.o \
	build/asm/STL/locale.o \
	build/asm/STL/mbstring.o \
	build/asm/STL/mem.o \
	build/asm/STL/mem_funcs.o \
	build/asm/STL/math_api.o \
	build/asm/STL/misc_io.o \
	build/asm/STL/printf.o \
	build/asm/STL/rand.o \
	build/asm/STL/scanf.o \
	build/asm/STL/string.o \
	build/asm/STL/strtold.o \
	build/asm/STL/strtoul.o \
	build/asm/STL/wctype.o \
	build/asm/STL/wmem.o \
	build/asm/STL/wprintf.o \
	build/asm/STL/wstring.o \
	build/asm/STL/wchar_io.o \
	build/asm/STL/uart_console_io_gcn.o \
	build/asm/STL/abort_exit_ppc_eabi.o \
	build/asm/STL/math_sun.o \
	build/asm/STL/math_float.o \
	build/asm/STL/extras.o \
	build/asm/STL/float.o \
	build/asm/STL/e_acos.o \
	build/asm/STL/e_asin.o \
	build/asm/STL/e_atan2.o \
	build/asm/STL/e_fmod.o \
	build/asm/STL/e_pow.o \
	build/asm/STL/e_rem_pio2.o \
	build/asm/STL/k_cos.o \
	build/asm/STL/k_rem_pio2.o \
	build/asm/STL/k_sin.o \
	build/asm/STL/k_tan.o \
	build/asm/STL/s_atan.o \
	build/asm/STL/s_ceil.o \
	build/asm/STL/s_copysign.o \
	build/asm/STL/s_cos.o \
	build/asm/STL/s_floor.o \
	build/asm/STL/s_frexp.o \
	build/asm/STL/s_ldexp.o \
	build/asm/STL/s_modf.o \
	build/asm/STL/s_sin.o \
	build/asm/STL/s_tan.o \
	build/asm/STL/w_acos.o \
	build/asm/STL/w_asin.o \
	build/asm/STL/w_atan2.o \
	build/asm/STL/w_fmod.o \
	build/asm/STL/w_pow.o \
	build/asm/STL/e_sqrt.o \
	build/asm/STL/math_ppc.o \
	build/asm/STL/w_sqrt.o \

TRK_DEBUGGER_O_FILES := \
	build/asm/RevoSDK/TRK/debugger/mainloop.o \
	build/asm/RevoSDK/TRK/debugger/nubevent.o \

GROUP_1_O_FILES := \
	build/asm/data.o \
	build/asm/sdata.o \
	build/asm/text.o \
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

O_FILES := $(GROUP_0_O_FILES) $(NW4R_O_FILES) $(EGG_O_FILES) $(TRK_RUNTIME_O_FILES) $(STL_O_FILES) $(TRK_DEBUGGER_O_FILES) $(GROUP_1_O_FILES) $(TRK_INIT_O_FILES)

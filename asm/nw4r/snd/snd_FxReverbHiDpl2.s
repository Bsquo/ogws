.include "macros.inc"

.section .rodata, "a"  # 0x80375780 - 0x80393A80

.balign 0x8

lbl_80375B78:
	.single 0e0.02
	.single 0e3
	.single 0e0.6
	.single 0e0.4
	.single 0e0.1
	.single 0e1

.section .data, "wa"  # 0x80393A80 - 0x803CAF00

.balign 0x8

.global lbl_80395D78
lbl_80395D78:
	.long 0
	.long 0
	.long __dt__Q34nw4r3snd14FxReverbHiDpl2Fv
	.long StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv
	.long Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv
	.long UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.long AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl
	.long ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv

.section .sdata2, "a"  # 0x804BFA20 - 0x804C69E0

.balign 0x8

lbl_804C0008: .single 0e0.1
lbl_804C000C: .single 0e0
lbl_804C0010: .single 0e10
lbl_804C0014: .single 0e1

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q34nw4r3snd14FxReverbHiDpl2Fv
__ct__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003AAF8 000359F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003AAFC 000359FC  7C 08 02 A6 */	mflr r0
/* 8003AB00 00035A00  3C A0 80 39 */	lis r5, lbl_80395D78@ha
/* 8003AB04 00035A04  3D 40 80 37 */	lis r10, 0x8037
/* 8003AB08 00035A08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003AB0C 00035A0C  38 00 00 00 */	li r0, 0
/* 8003AB10 00035A10  38 A5 5D 78 */	addi r5, r5, lbl_80395D78@l
/* 8003AB14 00035A14  38 81 00 08 */	addi r4, r1, 8
/* 8003AB18 00035A18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8003AB1C 00035A1C  7C 7F 1B 78 */	mr r31, r3
/* 8003AB20 00035A20  90 03 00 04 */	stw r0, 4(r3)
/* 8003AB24 00035A24  90 03 00 08 */	stw r0, 8(r3)
/* 8003AB28 00035A28  90 A3 00 00 */	stw r5, 0(r3)
/* 8003AB2C 00035A2C  98 03 00 0C */	stb r0, 0xc(r3)
/* 8003AB30 00035A30  90 03 00 10 */	stw r0, 0x10(r3)
/* 8003AB34 00035A34  90 03 00 14 */	stw r0, 0x14(r3)
/* 8003AB38 00035A38  85 2A 5B 78 */	lwzu r9, 0x5b78(r10)
/* 8003AB3C 00035A3C  81 0A 00 04 */	lwz r8, 4(r10)
/* 8003AB40 00035A40  80 EA 00 08 */	lwz r7, 8(r10)
/* 8003AB44 00035A44  80 CA 00 0C */	lwz r6, 0xc(r10)
/* 8003AB48 00035A48  80 AA 00 10 */	lwz r5, 0x10(r10)
/* 8003AB4C 00035A4C  80 0A 00 14 */	lwz r0, 0x14(r10)
/* 8003AB50 00035A50  91 21 00 08 */	stw r9, 8(r1)
/* 8003AB54 00035A54  91 01 00 0C */	stw r8, 0xc(r1)
/* 8003AB58 00035A58  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8003AB5C 00035A5C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8003AB60 00035A60  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8003AB64 00035A64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8003AB68 00035A68  48 00 01 75 */	bl SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param
/* 8003AB6C 00035A6C  7F E3 FB 78 */	mr r3, r31
/* 8003AB70 00035A70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8003AB74 00035A74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003AB78 00035A78  7C 08 03 A6 */	mtlr r0
/* 8003AB7C 00035A7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8003AB80 00035A80  4E 80 00 20 */	blr 

.global GetRequiredMemSize__Q34nw4r3snd14FxReverbHiDpl2Fv
GetRequiredMemSize__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003AB84 00035A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003AB88 00035A88  7C 08 02 A6 */	mflr r0
/* 8003AB8C 00035A8C  38 63 00 30 */	addi r3, r3, 0x30
/* 8003AB90 00035A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003AB94 00035A94  48 0C CB 51 */	bl func_801076E4
/* 8003AB98 00035A98  38 03 00 87 */	addi r0, r3, 0x87
/* 8003AB9C 00035A9C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8003ABA0 00035AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003ABA4 00035AA4  7C 08 03 A6 */	mtlr r0
/* 8003ABA8 00035AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003ABAC 00035AAC  4E 80 00 20 */	blr 

.global AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl
AssignWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2FPvUl:
/* 8003ABB0 00035AB0  38 63 00 0C */	addi r3, r3, 0xc
/* 8003ABB4 00035AB4  4B FF AD CC */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

.global ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv
ReleaseWorkBuffer__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003ABB8 00035AB8  38 63 00 0C */	addi r3, r3, 0xc
/* 8003ABBC 00035ABC  4B FF AE 0C */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

.global StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv
StartUp__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003ABC0 00035AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003ABC4 00035AC4  7C 08 02 A6 */	mflr r0
/* 8003ABC8 00035AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003ABCC 00035ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003ABD0 00035AD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003ABD4 00035AD4  7C 7E 1B 78 */	mr r30, r3
/* 8003ABD8 00035AD8  38 63 00 30 */	addi r3, r3, 0x30
/* 8003ABDC 00035ADC  48 0C CB 09 */	bl func_801076E4
/* 8003ABE0 00035AE0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8003ABE4 00035AE4  38 03 00 87 */	addi r0, r3, 0x87
/* 8003ABE8 00035AE8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8003ABEC 00035AEC  2C 04 00 00 */	cmpwi r4, 0
/* 8003ABF0 00035AF0  40 82 00 0C */	bne lbl_8003ABFC
/* 8003ABF4 00035AF4  38 00 00 00 */	li r0, 0
/* 8003ABF8 00035AF8  48 00 00 0C */	b lbl_8003AC04
lbl_8003ABFC:
/* 8003ABFC 00035AFC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8003AC00 00035B00  7C 04 00 50 */	subf r0, r4, r0
lbl_8003AC04:
/* 8003AC04 00035B04  7C 03 00 40 */	cmplw r3, r0
/* 8003AC08 00035B08  40 81 00 0C */	ble lbl_8003AC14
/* 8003AC0C 00035B0C  38 60 00 00 */	li r3, 0
/* 8003AC10 00035B10  48 00 00 54 */	b lbl_8003AC64
lbl_8003AC14:
/* 8003AC14 00035B14  38 7E 00 0C */	addi r3, r30, 0xc
/* 8003AC18 00035B18  38 81 00 0C */	addi r4, r1, 0xc
/* 8003AC1C 00035B1C  38 A1 00 08 */	addi r5, r1, 8
/* 8003AC20 00035B20  4B FF AD BD */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8003AC24 00035B24  38 00 00 00 */	li r0, 0
/* 8003AC28 00035B28  38 7E 00 30 */	addi r3, r30, 0x30
/* 8003AC2C 00035B2C  90 0D 96 F4 */	stw r0, mAllocatedSize__Q44nw4r3snd6detail8AxfxImpl-_SDA_BASE_(r13)
/* 8003AC30 00035B30  48 0C CA C1 */	bl func_801076F0
/* 8003AC34 00035B34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003AC38 00035B38  7C 7F 1B 78 */	mr r31, r3
/* 8003AC3C 00035B3C  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003AC40 00035B40  38 7E 00 0C */	addi r3, r30, 0xc
/* 8003AC44 00035B44  4B FF AD E5 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 8003AC48 00035B48  38 7E 00 30 */	addi r3, r30, 0x30
/* 8003AC4C 00035B4C  48 0C CA 99 */	bl func_801076E4
/* 8003AC50 00035B50  7C 1F 00 D0 */	neg r0, r31
/* 8003AC54 00035B54  38 60 00 01 */	li r3, 1
/* 8003AC58 00035B58  7C 00 FB 78 */	or r0, r0, r31
/* 8003AC5C 00035B5C  98 7E 00 0C */	stb r3, 0xc(r30)
/* 8003AC60 00035B60  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8003AC64:
/* 8003AC64 00035B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003AC68 00035B68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003AC6C 00035B6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003AC70 00035B70  7C 08 03 A6 */	mtlr r0
/* 8003AC74 00035B74  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AC78 00035B78  4E 80 00 20 */	blr 

.global Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv
Shutdown__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003AC7C 00035B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AC80 00035B80  7C 08 02 A6 */	mflr r0
/* 8003AC84 00035B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003AC88 00035B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003AC8C 00035B8C  7C 7F 1B 78 */	mr r31, r3
/* 8003AC90 00035B90  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8003AC94 00035B94  2C 00 00 00 */	cmpwi r0, 0
/* 8003AC98 00035B98  41 82 00 30 */	beq lbl_8003ACC8
/* 8003AC9C 00035B9C  38 00 00 00 */	li r0, 0
/* 8003ACA0 00035BA0  38 81 00 0C */	addi r4, r1, 0xc
/* 8003ACA4 00035BA4  9C 03 00 0C */	stbu r0, 0xc(r3)
/* 8003ACA8 00035BA8  38 A1 00 08 */	addi r5, r1, 8
/* 8003ACAC 00035BAC  4B FF AD 31 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8003ACB0 00035BB0  38 7F 00 30 */	addi r3, r31, 0x30
/* 8003ACB4 00035BB4  48 0C CA E1 */	bl func_80107794
/* 8003ACB8 00035BB8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003ACBC 00035BBC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8003ACC0 00035BC0  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003ACC4 00035BC4  4B FF AD 65 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
lbl_8003ACC8:
/* 8003ACC8 00035BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003ACCC 00035BCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003ACD0 00035BD0  7C 08 03 A6 */	mtlr r0
/* 8003ACD4 00035BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8003ACD8 00035BD8  4E 80 00 20 */	blr 

.global SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param
SetParam__Q34nw4r3snd14FxReverbHiDpl2FRCQ44nw4r3snd14FxReverbHiDpl217ReverbHiDpl2Param:
/* 8003ACDC 00035BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003ACE0 00035BE0  7C 08 02 A6 */	mflr r0
/* 8003ACE4 00035BE4  C0 A4 00 00 */	lfs f5, 0(r4)
/* 8003ACE8 00035BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003ACEC 00035BEC  C0 C2 85 E8 */	lfs f6, lbl_804C0008-_SDA2_BASE_(r2)
/* 8003ACF0 00035BF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003ACF4 00035BF4  C0 84 00 04 */	lfs f4, 4(r4)
/* 8003ACF8 00035BF8  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 8003ACFC 00035BFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003AD00 00035C00  7C 7E 1B 78 */	mr r30, r3
/* 8003AD04 00035C04  C0 64 00 08 */	lfs f3, 8(r4)
/* 8003AD08 00035C08  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8003AD0C 00035C0C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8003AD10 00035C10  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8003AD14 00035C14  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 8003AD18 00035C18  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8003AD1C 00035C1C  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8003AD20 00035C20  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 8003AD24 00035C24  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8003AD28 00035C28  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8003AD2C 00035C2C  40 81 00 08 */	ble lbl_8003AD34
/* 8003AD30 00035C30  48 00 00 18 */	b lbl_8003AD48
lbl_8003AD34:
/* 8003AD34 00035C34  C0 C2 85 EC */	lfs f6, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003AD38 00035C38  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 8003AD3C 00035C3C  40 80 00 08 */	bge lbl_8003AD44
/* 8003AD40 00035C40  48 00 00 08 */	b lbl_8003AD48
lbl_8003AD44:
/* 8003AD44 00035C44  FC C0 28 90 */	fmr f6, f5
lbl_8003AD48:
/* 8003AD48 00035C48  C0 04 00 04 */	lfs f0, 4(r4)
/* 8003AD4C 00035C4C  C0 22 85 F0 */	lfs f1, lbl_804C0010-_SDA2_BASE_(r2)
/* 8003AD50 00035C50  D0 C3 01 B8 */	stfs f6, 0x1b8(r3)
/* 8003AD54 00035C54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003AD58 00035C58  40 81 00 08 */	ble lbl_8003AD60
/* 8003AD5C 00035C5C  48 00 00 18 */	b lbl_8003AD74
lbl_8003AD60:
/* 8003AD60 00035C60  C0 22 85 EC */	lfs f1, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003AD64 00035C64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003AD68 00035C68  40 80 00 08 */	bge lbl_8003AD70
/* 8003AD6C 00035C6C  48 00 00 08 */	b lbl_8003AD74
lbl_8003AD70:
/* 8003AD70 00035C70  FC 20 00 90 */	fmr f1, f0
lbl_8003AD74:
/* 8003AD74 00035C74  C0 04 00 08 */	lfs f0, 8(r4)
/* 8003AD78 00035C78  C0 42 85 F4 */	lfs f2, lbl_804C0014-_SDA2_BASE_(r2)
/* 8003AD7C 00035C7C  D0 23 01 B0 */	stfs f1, 0x1b0(r3)
/* 8003AD80 00035C80  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8003AD84 00035C84  40 81 00 08 */	ble lbl_8003AD8C
/* 8003AD88 00035C88  48 00 00 18 */	b lbl_8003ADA0
lbl_8003AD8C:
/* 8003AD8C 00035C8C  C0 42 85 EC */	lfs f2, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003AD90 00035C90  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8003AD94 00035C94  40 80 00 08 */	bge lbl_8003AD9C
/* 8003AD98 00035C98  48 00 00 08 */	b lbl_8003ADA0
lbl_8003AD9C:
/* 8003AD9C 00035C9C  FC 40 00 90 */	fmr f2, f0
lbl_8003ADA0:
/* 8003ADA0 00035CA0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8003ADA4 00035CA4  C0 22 85 F4 */	lfs f1, lbl_804C0014-_SDA2_BASE_(r2)
/* 8003ADA8 00035CA8  D0 43 01 A8 */	stfs f2, 0x1a8(r3)
/* 8003ADAC 00035CAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003ADB0 00035CB0  40 81 00 08 */	ble lbl_8003ADB8
/* 8003ADB4 00035CB4  48 00 00 18 */	b lbl_8003ADCC
lbl_8003ADB8:
/* 8003ADB8 00035CB8  C0 22 85 EC */	lfs f1, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003ADBC 00035CBC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003ADC0 00035CC0  40 80 00 08 */	bge lbl_8003ADC8
/* 8003ADC4 00035CC4  48 00 00 08 */	b lbl_8003ADCC
lbl_8003ADC8:
/* 8003ADC8 00035CC8  FC 20 00 90 */	fmr f1, f0
lbl_8003ADCC:
/* 8003ADCC 00035CCC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8003ADD0 00035CD0  C0 42 85 F4 */	lfs f2, lbl_804C0014-_SDA2_BASE_(r2)
/* 8003ADD4 00035CD4  D0 23 01 B4 */	stfs f1, 0x1b4(r3)
/* 8003ADD8 00035CD8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8003ADDC 00035CDC  40 81 00 08 */	ble lbl_8003ADE4
/* 8003ADE0 00035CE0  48 00 00 18 */	b lbl_8003ADF8
lbl_8003ADE4:
/* 8003ADE4 00035CE4  C0 42 85 EC */	lfs f2, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003ADE8 00035CE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8003ADEC 00035CEC  40 80 00 08 */	bge lbl_8003ADF4
/* 8003ADF0 00035CF0  48 00 00 08 */	b lbl_8003ADF8
lbl_8003ADF4:
/* 8003ADF4 00035CF4  FC 40 00 90 */	fmr f2, f0
lbl_8003ADF8:
/* 8003ADF8 00035CF8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8003ADFC 00035CFC  C0 22 85 F4 */	lfs f1, lbl_804C0014-_SDA2_BASE_(r2)
/* 8003AE00 00035D00  D0 43 01 BC */	stfs f2, 0x1bc(r3)
/* 8003AE04 00035D04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003AE08 00035D08  40 81 00 08 */	ble lbl_8003AE10
/* 8003AE0C 00035D0C  48 00 00 18 */	b lbl_8003AE24
lbl_8003AE10:
/* 8003AE10 00035D10  C0 22 85 EC */	lfs f1, lbl_804C000C-_SDA2_BASE_(r2)
/* 8003AE14 00035D14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8003AE18 00035D18  40 80 00 08 */	bge lbl_8003AE20
/* 8003AE1C 00035D1C  48 00 00 08 */	b lbl_8003AE24
lbl_8003AE20:
/* 8003AE20 00035D20  FC 20 00 90 */	fmr f1, f0
lbl_8003AE24:
/* 8003AE24 00035D24  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8003AE28 00035D28  D0 23 01 AC */	stfs f1, 0x1ac(r3)
/* 8003AE2C 00035D2C  2C 00 00 00 */	cmpwi r0, 0
/* 8003AE30 00035D30  40 82 00 0C */	bne lbl_8003AE3C
/* 8003AE34 00035D34  38 60 00 01 */	li r3, 1
/* 8003AE38 00035D38  48 00 00 78 */	b lbl_8003AEB0
lbl_8003AE3C:
/* 8003AE3C 00035D3C  38 63 00 30 */	addi r3, r3, 0x30
/* 8003AE40 00035D40  48 0C C8 A5 */	bl func_801076E4
/* 8003AE44 00035D44  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8003AE48 00035D48  38 03 00 87 */	addi r0, r3, 0x87
/* 8003AE4C 00035D4C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8003AE50 00035D50  2C 04 00 00 */	cmpwi r4, 0
/* 8003AE54 00035D54  40 82 00 0C */	bne lbl_8003AE60
/* 8003AE58 00035D58  38 00 00 00 */	li r0, 0
/* 8003AE5C 00035D5C  48 00 00 0C */	b lbl_8003AE68
lbl_8003AE60:
/* 8003AE60 00035D60  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8003AE64 00035D64  7C 04 00 50 */	subf r0, r4, r0
lbl_8003AE68:
/* 8003AE68 00035D68  7C 03 00 40 */	cmplw r3, r0
/* 8003AE6C 00035D6C  40 81 00 0C */	ble lbl_8003AE78
/* 8003AE70 00035D70  38 60 00 00 */	li r3, 0
/* 8003AE74 00035D74  48 00 00 3C */	b lbl_8003AEB0
lbl_8003AE78:
/* 8003AE78 00035D78  38 7E 00 0C */	addi r3, r30, 0xc
/* 8003AE7C 00035D7C  38 81 00 0C */	addi r4, r1, 0xc
/* 8003AE80 00035D80  38 A1 00 08 */	addi r5, r1, 8
/* 8003AE84 00035D84  4B FF AB 59 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8003AE88 00035D88  38 7E 00 30 */	addi r3, r30, 0x30
/* 8003AE8C 00035D8C  48 0C C9 2D */	bl func_801077B8
/* 8003AE90 00035D90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8003AE94 00035D94  7C 7F 1B 78 */	mr r31, r3
/* 8003AE98 00035D98  80 A1 00 08 */	lwz r5, 8(r1)
/* 8003AE9C 00035D9C  38 7E 00 0C */	addi r3, r30, 0xc
/* 8003AEA0 00035DA0  4B FF AB 89 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 8003AEA4 00035DA4  7C 1F 00 D0 */	neg r0, r31
/* 8003AEA8 00035DA8  7C 00 FB 78 */	or r0, r0, r31
/* 8003AEAC 00035DAC  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8003AEB0:
/* 8003AEB0 00035DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003AEB4 00035DB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003AEB8 00035DB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003AEBC 00035DBC  7C 08 03 A6 */	mtlr r0
/* 8003AEC0 00035DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AEC4 00035DC4  4E 80 00 20 */	blr 

.global UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
UpdateBuffer__Q34nw4r3snd14FxReverbHiDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode:
/* 8003AEC8 00035DC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AECC 00035DCC  7C 08 02 A6 */	mflr r0
/* 8003AED0 00035DD0  7C 64 1B 78 */	mr r4, r3
/* 8003AED4 00035DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003AED8 00035DD8  38 61 00 08 */	addi r3, r1, 8
/* 8003AEDC 00035DDC  38 84 00 30 */	addi r4, r4, 0x30
/* 8003AEE0 00035DE0  80 05 00 00 */	lwz r0, 0(r5)
/* 8003AEE4 00035DE4  90 01 00 08 */	stw r0, 8(r1)
/* 8003AEE8 00035DE8  80 05 00 04 */	lwz r0, 4(r5)
/* 8003AEEC 00035DEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003AEF0 00035DF0  80 05 00 08 */	lwz r0, 8(r5)
/* 8003AEF4 00035DF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003AEF8 00035DF8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8003AEFC 00035DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003AF00 00035E00  48 0C C9 1D */	bl func_8010781C
/* 8003AF04 00035E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003AF08 00035E08  7C 08 03 A6 */	mtlr r0
/* 8003AF0C 00035E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AF10 00035E10  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3snd14FxReverbHiDpl2Fv
__dt__Q34nw4r3snd14FxReverbHiDpl2Fv:
/* 8003AF14 00035E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003AF18 00035E18  7C 08 02 A6 */	mflr r0
/* 8003AF1C 00035E1C  2C 03 00 00 */	cmpwi r3, 0
/* 8003AF20 00035E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003AF24 00035E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003AF28 00035E28  7C 9F 23 78 */	mr r31, r4
/* 8003AF2C 00035E2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8003AF30 00035E30  7C 7E 1B 78 */	mr r30, r3
/* 8003AF34 00035E34  41 82 00 40 */	beq lbl_8003AF74
/* 8003AF38 00035E38  3D 80 80 39 */	lis r12, lbl_80395D78@ha
/* 8003AF3C 00035E3C  39 8C 5D 78 */	addi r12, r12, lbl_80395D78@l
/* 8003AF40 00035E40  91 83 00 00 */	stw r12, 0(r3)
/* 8003AF44 00035E44  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8003AF48 00035E48  7D 89 03 A6 */	mtctr r12
/* 8003AF4C 00035E4C  4E 80 04 21 */	bctrl 
/* 8003AF50 00035E50  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AF54 00035E54  7F C3 F3 78 */	mr r3, r30
/* 8003AF58 00035E58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8003AF5C 00035E5C  7D 89 03 A6 */	mtctr r12
/* 8003AF60 00035E60  4E 80 04 21 */	bctrl 
/* 8003AF64 00035E64  2C 1F 00 00 */	cmpwi r31, 0
/* 8003AF68 00035E68  40 81 00 0C */	ble lbl_8003AF74
/* 8003AF6C 00035E6C  7F C3 F3 78 */	mr r3, r30
/* 8003AF70 00035E70  48 06 83 15 */	bl __dl__FPv
lbl_8003AF74:
/* 8003AF74 00035E74  7F C3 F3 78 */	mr r3, r30
/* 8003AF78 00035E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003AF7C 00035E7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003AF80 00035E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003AF84 00035E84  7C 08 03 A6 */	mtlr r0
/* 8003AF88 00035E88  38 21 00 10 */	addi r1, r1, 0x10
/* 8003AF8C 00035E8C  4E 80 00 20 */	blr 

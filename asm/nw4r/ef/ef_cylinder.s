.include "macros.inc"

.section .data, "wa"  # 0x80393A80 - 0x803CAF00

.balign 0x8

.global __vt__Q34nw4r2ef19EmitterFormCylinder
__vt__Q34nw4r2ef19EmitterFormCylinder:
	.long 0
	.long 0
	.long Emission__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34

.section .sdata2, "a"  # 0x804BFA20 - 0x804C69E0

.balign 0x8

lbl_804BFC90: .single 0e65536
lbl_804BFC94: .single 0e100
lbl_804BFC98: .single 0e1
lbl_804BFC9C: .single 0e0
lbl_804BFCA0: .single 0e2
lbl_804BFCA4: .single 0e0.01
lbl_804BFCA8: .double 0e4.503599627370496E15
lbl_804BFCB0: .double 0e4.503601774854144E15
lbl_804BFCB8: .single 0e1.1920929E-7
lbl_804BFCBC: .single 0e3.1415927
lbl_804BFCC0: .double 0e6.2831854820251465
lbl_804BFCC8: .single 0e1.917476E-4
lbl_804BFCCC: .single 0e6.282994
lbl_804BFCD0: .single 0e0.5

.section .text, "ax"  # 0x800076E0 - 0x80355080

.global EmissionSub__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34fffffff
EmissionSub__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34fffffff:
/* 8001E9F0 000198F0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 8001E9F4 000198F4  7C 08 02 A6 */	mflr r0
/* 8001E9F8 000198F8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8001E9FC 000198FC  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 8001EA00 00019900  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, qr0
/* 8001EA04 00019904  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 8001EA08 00019908  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, qr0
/* 8001EA0C 0001990C  DB A1 01 A0 */	stfd f29, 0x1a0(r1)
/* 8001EA10 00019910  F3 A1 01 A8 */	psq_st f29, 424(r1), 0, qr0
/* 8001EA14 00019914  DB 81 01 90 */	stfd f28, 0x190(r1)
/* 8001EA18 00019918  F3 81 01 98 */	psq_st f28, 408(r1), 0, qr0
/* 8001EA1C 0001991C  DB 61 01 80 */	stfd f27, 0x180(r1)
/* 8001EA20 00019920  F3 61 01 88 */	.4byte 0xF3610188
/* 8001EA24 00019924  DB 41 01 70 */	stfd f26, 0x170(r1)
/* 8001EA28 00019928  F3 41 01 78 */	psq_st f26, 376(r1), 0, qr0
/* 8001EA2C 0001992C  DB 21 01 60 */	stfd f25, 0x160(r1)
/* 8001EA30 00019930  F3 21 01 68 */	psq_st f25, 360(r1), 0, qr0
/* 8001EA34 00019934  DB 01 01 50 */	stfd f24, 0x150(r1)
/* 8001EA38 00019938  F3 01 01 58 */	.4byte 0xF3010158
/* 8001EA3C 0001993C  DA E1 01 40 */	stfd f23, 0x140(r1)
/* 8001EA40 00019940  F2 E1 01 48 */	.4byte 0xF2E10148
/* 8001EA44 00019944  DA C1 01 30 */	stfd f22, 0x130(r1)
/* 8001EA48 00019948  F2 C1 01 38 */	psq_st f22, 312(r1), 0, qr0
/* 8001EA4C 0001994C  DA A1 01 20 */	stfd f21, 0x120(r1)
/* 8001EA50 00019950  F2 A1 01 28 */	psq_st f21, 296(r1), 0, qr0
/* 8001EA54 00019954  DA 81 01 10 */	stfd f20, 0x110(r1)
/* 8001EA58 00019958  F2 81 01 18 */	.4byte 0xF2810118
/* 8001EA5C 0001995C  DA 61 01 00 */	stfd f19, 0x100(r1)
/* 8001EA60 00019960  F2 61 01 08 */	.4byte 0xF2610108
/* 8001EA64 00019964  DA 41 00 F0 */	stfd f18, 0xf0(r1)
/* 8001EA68 00019968  F2 41 00 F8 */	psq_st f18, 248(r1), 0, qr0
/* 8001EA6C 0001996C  DA 21 00 E0 */	stfd f17, 0xe0(r1)
/* 8001EA70 00019970  F2 21 00 E8 */	psq_st f17, 232(r1), 0, qr0
/* 8001EA74 00019974  DA 01 00 D0 */	stfd f16, 0xd0(r1)
/* 8001EA78 00019978  F2 01 00 D8 */	psq_st f16, 216(r1), 0, qr0
/* 8001EA7C 0001997C  D9 E1 00 C0 */	stfd f15, 0xc0(r1)
/* 8001EA80 00019980  F1 E1 00 C8 */	psq_st f15, 200(r1), 0, qr0
/* 8001EA84 00019984  D9 C1 00 B0 */	stfd f14, 0xb0(r1)
/* 8001EA88 00019988  F1 C1 00 B8 */	psq_st f14, 184(r1), 0, qr0
/* 8001EA8C 0001998C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8001EA90 00019990  48 09 32 95 */	bl _savegpr_19
/* 8001EA94 00019994  3C 00 43 30 */	lis r0, 0x4330
/* 8001EA98 00019998  FF 00 08 90 */	fmr f24, f1
/* 8001EA9C 0001999C  3F E0 00 03 */	lis r31, 0x000343FD@ha
/* 8001EAA0 000199A0  FF 20 10 90 */	fmr f25, f2
/* 8001EAA4 000199A4  FF 40 18 90 */	fmr f26, f3
/* 8001EAA8 000199A8  90 01 00 60 */	stw r0, 0x60(r1)
/* 8001EAAC 000199AC  FF 60 20 90 */	fmr f27, f4
/* 8001EAB0 000199B0  FF 80 28 90 */	fmr f28, f5
/* 8001EAB4 000199B4  90 01 00 68 */	stw r0, 0x68(r1)
/* 8001EAB8 000199B8  FF A0 30 90 */	fmr f29, f6
/* 8001EABC 000199BC  FF C0 38 90 */	fmr f30, f7
/* 8001EAC0 000199C0  C2 62 82 78 */	lfs f19, lbl_804BFC98-_SDA2_BASE_(r2)
/* 8001EAC4 000199C4  FF E0 40 90 */	fmr f31, f8
/* 8001EAC8 000199C8  CA 02 82 88 */	lfd f16, lbl_804BFCA8-_SDA2_BASE_(r2)
/* 8001EACC 000199CC  7C 74 1B 78 */	mr r20, r3
/* 8001EAD0 000199D0  C2 22 82 70 */	lfs f17, lbl_804BFC90-_SDA2_BASE_(r2)
/* 8001EAD4 000199D4  C2 42 82 74 */	lfs f18, lbl_804BFC94-_SDA2_BASE_(r2)
/* 8001EAD8 000199D8  7C 95 23 78 */	mr r21, r4
/* 8001EADC 000199DC  C2 82 82 7C */	lfs f20, lbl_804BFC9C-_SDA2_BASE_(r2)
/* 8001EAE0 000199E0  7C B6 2B 78 */	mr r22, r5
/* 8001EAE4 000199E4  C2 A2 82 80 */	lfs f21, lbl_804BFCA0-_SDA2_BASE_(r2)
/* 8001EAE8 000199E8  7C D7 33 78 */	mr r23, r6
/* 8001EAEC 000199EC  CA C2 82 90 */	lfd f22, lbl_804BFCB0-_SDA2_BASE_(r2)
/* 8001EAF0 000199F0  7D 18 43 78 */	mr r24, r8
/* 8001EAF4 000199F4  C2 E2 82 84 */	lfs f23, lbl_804BFCA4-_SDA2_BASE_(r2)
/* 8001EAF8 000199F8  7D 39 4B 78 */	mr r25, r9
/* 8001EAFC 000199FC  7D 5A 53 78 */	mr r26, r10
/* 8001EB00 00019A00  54 FD 01 CE */	rlwinm r29, r7, 0, 7, 7
/* 8001EB04 00019A04  54 FC 03 9C */	rlwinm r28, r7, 0, 0xe, 0xe
/* 8001EB08 00019A08  3B DF 43 FD */	addi r30, r31, 0x000343FD@l
/* 8001EB0C 00019A0C  3B 60 00 00 */	li r27, 0
/* 8001EB10 00019A10  48 00 02 9C */	b lbl_8001EDAC
lbl_8001EB14:
/* 8001EB14 00019A14  80 15 00 EC */	lwz r0, 0xec(r21)
/* 8001EB18 00019A18  2C 1D 00 00 */	cmpwi r29, 0
/* 8001EB1C 00019A1C  7C 60 F1 D6 */	mullw r3, r0, r30
/* 8001EB20 00019A20  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001EB24 00019A24  3A 63 9E C3 */	addi r19, r3, -24893
/* 8001EB28 00019A28  56 60 84 3E */	srwi r0, r19, 0x10
/* 8001EB2C 00019A2C  92 75 00 EC */	stw r19, 0xec(r21)
/* 8001EB30 00019A30  90 01 00 64 */	stw r0, 0x64(r1)
/* 8001EB34 00019A34  C0 18 00 04 */	lfs f0, 4(r24)
/* 8001EB38 00019A38  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 8001EB3C 00019A3C  EC 60 90 24 */	fdivs f3, f0, f18
/* 8001EB40 00019A40  EC 01 80 28 */	fsubs f0, f1, f16
/* 8001EB44 00019A44  EC 40 88 24 */	fdivs f2, f0, f17
/* 8001EB48 00019A48  41 82 00 20 */	beq lbl_8001EB68
/* 8001EB4C 00019A4C  EC 33 10 28 */	fsubs f1, f19, f2
/* 8001EB50 00019A50  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8001EB54 00019A54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001EB58 00019A58  EC 22 00 2A */	fadds f1, f2, f0
/* 8001EB5C 00019A5C  48 0A 25 75 */	bl sqrt
/* 8001EB60 00019A60  FD C0 08 18 */	frsp f14, f1
/* 8001EB64 00019A64  48 00 00 10 */	b lbl_8001EB74
lbl_8001EB68:
/* 8001EB68 00019A68  EC 13 10 28 */	fsubs f0, f19, f2
/* 8001EB6C 00019A6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8001EB70 00019A70  ED C2 00 2A */	fadds f14, f2, f0
lbl_8001EB74:
/* 8001EB74 00019A74  2C 1C 00 00 */	cmpwi r28, 0
/* 8001EB78 00019A78  40 82 00 3C */	bne lbl_8001EBB4
/* 8001EB7C 00019A7C  38 1F 43 FD */	addi r0, r31, 0x43fd
/* 8001EB80 00019A80  7C 73 01 D6 */	mullw r3, r19, r0
/* 8001EB84 00019A84  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001EB88 00019A88  38 63 9E C3 */	addi r3, r3, -24893
/* 8001EB8C 00019A8C  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001EB90 00019A90  90 75 00 EC */	stw r3, 0xec(r21)
/* 8001EB94 00019A94  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8001EB98 00019A98  C0 38 00 0C */	lfs f1, 0xc(r24)
/* 8001EB9C 00019A9C  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 8001EBA0 00019AA0  C0 18 00 08 */	lfs f0, 8(r24)
/* 8001EBA4 00019AA4  EC 42 80 28 */	fsubs f2, f2, f16
/* 8001EBA8 00019AA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001EBAC 00019AAC  EC 22 88 24 */	fdivs f1, f2, f17
/* 8001EBB0 00019AB0  EF 80 00 72 */	fmuls f28, f0, f1
lbl_8001EBB4:
/* 8001EBB4 00019AB4  EC 3E E0 2A */	fadds f1, f30, f28
/* 8001EBB8 00019AB8  48 0A 21 69 */	bl sin
/* 8001EBBC 00019ABC  FD E0 08 18 */	frsp f15, f1
/* 8001EBC0 00019AC0  EC 3E E0 2A */	fadds f1, f30, f28
/* 8001EBC4 00019AC4  48 0A 1C 55 */	bl cos
/* 8001EBC8 00019AC8  FC 20 08 18 */	frsp f1, f1
/* 8001EBCC 00019ACC  2C 1C 00 00 */	cmpwi r28, 0
/* 8001EBD0 00019AD0  EC 0F 03 B2 */	fmuls f0, f15, f14
/* 8001EBD4 00019AD4  D1 E1 00 38 */	stfs f15, 0x38(r1)
/* 8001EBD8 00019AD8  FC 20 08 50 */	fneg f1, f1
/* 8001EBDC 00019ADC  D2 81 00 3C */	stfs f20, 0x3c(r1)
/* 8001EBE0 00019AE0  EC 19 00 32 */	fmuls f0, f25, f0
/* 8001EBE4 00019AE4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8001EBE8 00019AE8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8001EBEC 00019AEC  41 82 00 0C */	beq lbl_8001EBF8
/* 8001EBF0 00019AF0  D3 E1 00 54 */	stfs f31, 0x54(r1)
/* 8001EBF4 00019AF4  48 00 00 40 */	b lbl_8001EC34
lbl_8001EBF8:
/* 8001EBF8 00019AF8  80 75 00 EC */	lwz r3, 0xec(r21)
/* 8001EBFC 00019AFC  38 1F 43 FD */	addi r0, r31, 0x43fd
/* 8001EC00 00019B00  7C 63 01 D6 */	mullw r3, r3, r0
/* 8001EC04 00019B04  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001EC08 00019B08  38 63 9E C3 */	addi r3, r3, -24893
/* 8001EC0C 00019B0C  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001EC10 00019B10  90 75 00 EC */	stw r3, 0xec(r21)
/* 8001EC14 00019B14  90 01 00 64 */	stw r0, 0x64(r1)
/* 8001EC18 00019B18  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8001EC1C 00019B1C  EC 00 80 28 */	fsubs f0, f0, f16
/* 8001EC20 00019B20  EC 00 88 24 */	fdivs f0, f0, f17
/* 8001EC24 00019B24  EC 15 00 32 */	fmuls f0, f21, f0
/* 8001EC28 00019B28  EC 00 98 28 */	fsubs f0, f0, f19
/* 8001EC2C 00019B2C  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8001EC30 00019B30  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8001EC34:
/* 8001EC34 00019B34  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8001EC38 00019B38  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8001EC3C 00019B3C  EC 00 03 B2 */	fmuls f0, f0, f14
/* 8001EC40 00019B40  D2 81 00 30 */	stfs f20, 0x30(r1)
/* 8001EC44 00019B44  FC 14 08 00 */	fcmpu cr0, f20, f1
/* 8001EC48 00019B48  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8001EC4C 00019B4C  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8001EC50 00019B50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8001EC54 00019B54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8001EC58 00019B58  40 82 00 0C */	bne lbl_8001EC64
/* 8001EC5C 00019B5C  FC 14 00 00 */	fcmpu cr0, f20, f0
/* 8001EC60 00019B60  41 82 00 10 */	beq lbl_8001EC70
lbl_8001EC64:
/* 8001EC64 00019B64  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001EC68 00019B68  7C 64 1B 78 */	mr r4, r3
/* 8001EC6C 00019B6C  48 0C 98 A9 */	bl PSVECNormalize
lbl_8001EC70:
/* 8001EC70 00019B70  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8001EC74 00019B74  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8001EC78 00019B78  90 01 00 20 */	stw r0, 0x20(r1)
/* 8001EC7C 00019B7C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8001EC80 00019B80  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8001EC84 00019B84  90 61 00 24 */	stw r3, 0x24(r1)
/* 8001EC88 00019B88  FC 14 00 00 */	fcmpu cr0, f20, f0
/* 8001EC8C 00019B8C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8001EC90 00019B90  40 82 00 1C */	bne lbl_8001ECAC
/* 8001EC94 00019B94  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8001EC98 00019B98  FC 14 00 00 */	fcmpu cr0, f20, f0
/* 8001EC9C 00019B9C  40 82 00 10 */	bne lbl_8001ECAC
/* 8001ECA0 00019BA0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8001ECA4 00019BA4  FC 14 00 00 */	fcmpu cr0, f20, f0
/* 8001ECA8 00019BA8  41 82 00 10 */	beq lbl_8001ECB8
lbl_8001ECAC:
/* 8001ECAC 00019BAC  38 61 00 20 */	addi r3, r1, 0x20
/* 8001ECB0 00019BB0  7C 64 1B 78 */	mr r4, r3
/* 8001ECB4 00019BB4  48 0C 98 61 */	bl PSVECNormalize
lbl_8001ECB8:
/* 8001ECB8 00019BB8  7E 83 A3 78 */	mr r3, r20
/* 8001ECBC 00019BBC  7E A5 AB 78 */	mr r5, r21
/* 8001ECC0 00019BC0  38 81 00 44 */	addi r4, r1, 0x44
/* 8001ECC4 00019BC4  38 C1 00 50 */	addi r6, r1, 0x50
/* 8001ECC8 00019BC8  38 E1 00 2C */	addi r7, r1, 0x2c
/* 8001ECCC 00019BCC  39 01 00 20 */	addi r8, r1, 0x20
/* 8001ECD0 00019BD0  39 21 00 38 */	addi r9, r1, 0x38
/* 8001ECD4 00019BD4  4B FF DE B1 */	bl CalcVelocity__Q34nw4r2ef11EmitterFormCFPQ34nw4r4math4VEC3PQ34nw4r2ef7EmitterRCQ34nw4r4math4VEC3RCQ34nw4r4math4VEC3RCQ34nw4r4math4VEC3RCQ34nw4r4math4VEC3
/* 8001ECD8 00019BD8  80 15 00 EC */	lwz r0, 0xec(r21)
/* 8001ECDC 00019BDC  FC 20 C0 90 */	fmr f1, f24
/* 8001ECE0 00019BE0  7E 83 A3 78 */	mr r3, r20
/* 8001ECE4 00019BE4  7F 24 CB 78 */	mr r4, r25
/* 8001ECE8 00019BE8  7C C0 F1 D6 */	mullw r6, r0, r30
/* 8001ECEC 00019BEC  7E A5 AB 78 */	mr r5, r21
/* 8001ECF0 00019BF0  3C C6 00 27 */	addis r6, r6, 0x27
/* 8001ECF4 00019BF4  38 C6 9E C3 */	addi r6, r6, -24893
/* 8001ECF8 00019BF8  54 C0 84 3E */	srwi r0, r6, 0x10
/* 8001ECFC 00019BFC  90 D5 00 EC */	stw r6, 0xec(r21)
/* 8001ED00 00019C00  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8001ED04 00019C04  81 41 00 44 */	lwz r10, 0x44(r1)
/* 8001ED08 00019C08  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8001ED0C 00019C0C  81 21 00 48 */	lwz r9, 0x48(r1)
/* 8001ED10 00019C10  EC 00 80 28 */	fsubs f0, f0, f16
/* 8001ED14 00019C14  81 01 00 4C */	lwz r8, 0x4c(r1)
/* 8001ED18 00019C18  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 8001ED1C 00019C1C  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8001ED20 00019C20  ED E0 88 24 */	fdivs f15, f0, f17
/* 8001ED24 00019C24  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8001ED28 00019C28  91 41 00 08 */	stw r10, 8(r1)
/* 8001ED2C 00019C2C  91 21 00 0C */	stw r9, 0xc(r1)
/* 8001ED30 00019C30  91 01 00 10 */	stw r8, 0x10(r1)
/* 8001ED34 00019C34  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8001ED38 00019C38  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8001ED3C 00019C3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001ED40 00019C40  4B FF E3 61 */	bl CalcLife__Q34nw4r2ef11EmitterFormFUsfPQ34nw4r2ef7Emitter
/* 8001ED44 00019C44  88 15 00 67 */	lbz r0, 0x67(r21)
/* 8001ED48 00019C48  7C 64 1B 78 */	mr r4, r3
/* 8001ED4C 00019C4C  81 96 00 1C */	lwz r12, 0x1c(r22)
/* 8001ED50 00019C50  7E C3 B3 78 */	mr r3, r22
/* 8001ED54 00019C54  7C 00 07 74 */	extsb r0, r0
/* 8001ED58 00019C58  7F 47 D3 78 */	mr r7, r26
/* 8001ED5C 00019C5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001ED60 00019C60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8001ED64 00019C64  90 01 00 64 */	stw r0, 0x64(r1)
/* 8001ED68 00019C68  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8001ED6C 00019C6C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001ED70 00019C70  38 C1 00 08 */	addi r6, r1, 8
/* 8001ED74 00019C74  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8001ED78 00019C78  39 15 00 FC */	addi r8, r21, 0xfc
/* 8001ED7C 00019C7C  81 35 00 F8 */	lwz r9, 0xf8(r21)
/* 8001ED80 00019C80  EC 00 B0 28 */	fsubs f0, f0, f22
/* 8001ED84 00019C84  A1 55 00 E8 */	lhz r10, 0xe8(r21)
/* 8001ED88 00019C88  EC 17 00 32 */	fmuls f0, f23, f0
/* 8001ED8C 00019C8C  EC 00 03 F2 */	fmuls f0, f0, f15
/* 8001ED90 00019C90  EC 33 00 2A */	fadds f1, f19, f0
/* 8001ED94 00019C94  7D 89 03 A6 */	mtctr r12
/* 8001ED98 00019C98  4E 80 04 21 */	bctrl 
/* 8001ED9C 00019C9C  2C 1C 00 00 */	cmpwi r28, 0
/* 8001EDA0 00019CA0  41 82 00 08 */	beq lbl_8001EDA8
/* 8001EDA4 00019CA4  EF 9C E8 2A */	fadds f28, f28, f29
lbl_8001EDA8:
/* 8001EDA8 00019CA8  3B 7B 00 01 */	addi r27, r27, 1
lbl_8001EDAC:
/* 8001EDAC 00019CAC  7C 1B B8 00 */	cmpw r27, r23
/* 8001EDB0 00019CB0  41 80 FD 64 */	blt lbl_8001EB14
/* 8001EDB4 00019CB4  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, qr0
/* 8001EDB8 00019CB8  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 8001EDBC 00019CBC  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, qr0
/* 8001EDC0 00019CC0  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 8001EDC4 00019CC4  E3 A1 01 A8 */	psq_l f29, 424(r1), 0, qr0
/* 8001EDC8 00019CC8  CB A1 01 A0 */	lfd f29, 0x1a0(r1)
/* 8001EDCC 00019CCC  E3 81 01 98 */	psq_l f28, 408(r1), 0, qr0
/* 8001EDD0 00019CD0  CB 81 01 90 */	lfd f28, 0x190(r1)
/* 8001EDD4 00019CD4  E3 61 01 88 */	psq_l f27, 392(r1), 0, qr0
/* 8001EDD8 00019CD8  CB 61 01 80 */	lfd f27, 0x180(r1)
/* 8001EDDC 00019CDC  E3 41 01 78 */	psq_l f26, 376(r1), 0, qr0
/* 8001EDE0 00019CE0  CB 41 01 70 */	lfd f26, 0x170(r1)
/* 8001EDE4 00019CE4  E3 21 01 68 */	psq_l f25, 360(r1), 0, qr0
/* 8001EDE8 00019CE8  CB 21 01 60 */	lfd f25, 0x160(r1)
/* 8001EDEC 00019CEC  E3 01 01 58 */	psq_l f24, 344(r1), 0, qr0
/* 8001EDF0 00019CF0  CB 01 01 50 */	lfd f24, 0x150(r1)
/* 8001EDF4 00019CF4  E2 E1 01 48 */	psq_l f23, 328(r1), 0, qr0
/* 8001EDF8 00019CF8  CA E1 01 40 */	lfd f23, 0x140(r1)
/* 8001EDFC 00019CFC  E2 C1 01 38 */	psq_l f22, 312(r1), 0, qr0
/* 8001EE00 00019D00  CA C1 01 30 */	lfd f22, 0x130(r1)
/* 8001EE04 00019D04  E2 A1 01 28 */	psq_l f21, 296(r1), 0, qr0
/* 8001EE08 00019D08  CA A1 01 20 */	lfd f21, 0x120(r1)
/* 8001EE0C 00019D0C  E2 81 01 18 */	psq_l f20, 280(r1), 0, qr0
/* 8001EE10 00019D10  CA 81 01 10 */	lfd f20, 0x110(r1)
/* 8001EE14 00019D14  E2 61 01 08 */	psq_l f19, 264(r1), 0, qr0
/* 8001EE18 00019D18  CA 61 01 00 */	lfd f19, 0x100(r1)
/* 8001EE1C 00019D1C  E2 41 00 F8 */	psq_l f18, 248(r1), 0, qr0
/* 8001EE20 00019D20  CA 41 00 F0 */	lfd f18, 0xf0(r1)
/* 8001EE24 00019D24  E2 21 00 E8 */	psq_l f17, 232(r1), 0, qr0
/* 8001EE28 00019D28  CA 21 00 E0 */	lfd f17, 0xe0(r1)
/* 8001EE2C 00019D2C  E2 01 00 D8 */	psq_l f16, 216(r1), 0, qr0
/* 8001EE30 00019D30  CA 01 00 D0 */	lfd f16, 0xd0(r1)
/* 8001EE34 00019D34  E1 E1 00 C8 */	psq_l f15, 200(r1), 0, qr0
/* 8001EE38 00019D38  C9 E1 00 C0 */	lfd f15, 0xc0(r1)
/* 8001EE3C 00019D3C  E1 C1 00 B8 */	psq_l f14, 184(r1), 0, qr0
/* 8001EE40 00019D40  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8001EE44 00019D44  C9 C1 00 B0 */	lfd f14, 0xb0(r1)
/* 8001EE48 00019D48  48 09 2F 29 */	bl _restgpr_19
/* 8001EE4C 00019D4C  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8001EE50 00019D50  7C 08 03 A6 */	mtlr r0
/* 8001EE54 00019D54  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8001EE58 00019D58  4E 80 00 20 */	blr 

.global Emission__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34
Emission__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34:
/* 8001EE5C 00019D5C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8001EE60 00019D60  7C 08 02 A6 */	mflr r0
/* 8001EE64 00019D64  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8001EE68 00019D68  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8001EE6C 00019D6C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8001EE70 00019D70  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8001EE74 00019D74  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8001EE78 00019D78  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8001EE7C 00019D7C  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8001EE80 00019D80  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8001EE84 00019D84  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8001EE88 00019D88  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8001EE8C 00019D8C  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8001EE90 00019D90  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8001EE94 00019D94  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 8001EE98 00019D98  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 8001EE9C 00019D9C  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 8001EEA0 00019DA0  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 8001EEA4 00019DA4  F3 01 00 68 */	psq_st f24, 104(r1), 0, qr0
/* 8001EEA8 00019DA8  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 8001EEAC 00019DAC  F2 E1 00 58 */	psq_st f23, 88(r1), 0, qr0
/* 8001EEB0 00019DB0  DA C1 00 40 */	stfd f22, 0x40(r1)
/* 8001EEB4 00019DB4  F2 C1 00 48 */	psq_st f22, 72(r1), 0, qr0
/* 8001EEB8 00019DB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8001EEBC 00019DBC  48 09 2E 79 */	bl _savegpr_23
/* 8001EEC0 00019DC0  3C 00 43 30 */	lis r0, 0x4330
/* 8001EEC4 00019DC4  FF 40 08 90 */	fmr f26, f1
/* 8001EEC8 00019DC8  2C 06 00 01 */	cmpwi r6, 1
/* 8001EECC 00019DCC  90 01 00 08 */	stw r0, 8(r1)
/* 8001EED0 00019DD0  7C 78 1B 78 */	mr r24, r3
/* 8001EED4 00019DD4  7C 99 23 78 */	mr r25, r4
/* 8001EED8 00019DD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001EEDC 00019DDC  7C BA 2B 78 */	mr r26, r5
/* 8001EEE0 00019DE0  7C DB 33 78 */	mr r27, r6
/* 8001EEE4 00019DE4  7C FC 3B 78 */	mr r28, r7
/* 8001EEE8 00019DE8  7D 1D 43 78 */	mr r29, r8
/* 8001EEEC 00019DEC  7D 3E 4B 78 */	mr r30, r9
/* 8001EEF0 00019DF0  7D 5F 53 78 */	mr r31, r10
/* 8001EEF4 00019DF4  41 80 02 48 */	blt lbl_8001F13C
/* 8001EEF8 00019DF8  C3 E8 00 00 */	lfs f31, 0(r8)
/* 8001EEFC 00019DFC  C0 02 82 98 */	lfs f0, lbl_804BFCB8-_SDA2_BASE_(r2)
/* 8001EF00 00019E00  FC 20 FA 10 */	fabs f1, f31
/* 8001EF04 00019E04  FC 20 08 18 */	frsp f1, f1
/* 8001EF08 00019E08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001EF0C 00019E0C  40 81 00 08 */	ble lbl_8001EF14
/* 8001EF10 00019E10  48 00 00 08 */	b lbl_8001EF18
lbl_8001EF14:
/* 8001EF14 00019E14  FF E0 00 90 */	fmr f31, f0
lbl_8001EF18:
/* 8001EF18 00019E18  C3 C8 00 10 */	lfs f30, 0x10(r8)
/* 8001EF1C 00019E1C  C0 02 82 98 */	lfs f0, lbl_804BFCB8-_SDA2_BASE_(r2)
/* 8001EF20 00019E20  FC 20 F2 10 */	fabs f1, f30
/* 8001EF24 00019E24  FC 20 08 18 */	frsp f1, f1
/* 8001EF28 00019E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001EF2C 00019E2C  40 81 00 08 */	ble lbl_8001EF34
/* 8001EF30 00019E30  48 00 00 08 */	b lbl_8001EF38
lbl_8001EF34:
/* 8001EF34 00019E34  FF C0 00 90 */	fmr f30, f0
lbl_8001EF38:
/* 8001EF38 00019E38  54 E0 01 8D */	rlwinm. r0, r7, 0, 6, 6
/* 8001EF3C 00019E3C  41 82 00 0C */	beq lbl_8001EF48
/* 8001EF40 00019E40  FF A0 F8 90 */	fmr f29, f31
/* 8001EF44 00019E44  48 00 00 24 */	b lbl_8001EF68
lbl_8001EF48:
/* 8001EF48 00019E48  C3 A8 00 14 */	lfs f29, 0x14(r8)
/* 8001EF4C 00019E4C  C0 02 82 98 */	lfs f0, lbl_804BFCB8-_SDA2_BASE_(r2)
/* 8001EF50 00019E50  FC 20 EA 10 */	fabs f1, f29
/* 8001EF54 00019E54  FC 20 08 18 */	frsp f1, f1
/* 8001EF58 00019E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001EF5C 00019E5C  40 81 00 08 */	ble lbl_8001EF64
/* 8001EF60 00019E60  48 00 00 08 */	b lbl_8001EF68
lbl_8001EF64:
/* 8001EF64 00019E64  FF A0 00 90 */	fmr f29, f0
lbl_8001EF68:
/* 8001EF68 00019E68  54 E0 03 5B */	rlwinm. r0, r7, 0, 0xd, 0xd
/* 8001EF6C 00019E6C  C3 82 82 7C */	lfs f28, lbl_804BFC9C-_SDA2_BASE_(r2)
/* 8001EF70 00019E70  41 82 00 0C */	beq lbl_8001EF7C
/* 8001EF74 00019E74  C3 68 00 08 */	lfs f27, 8(r8)
/* 8001EF78 00019E78  48 00 00 4C */	b lbl_8001EFC4
lbl_8001EF7C:
/* 8001EF7C 00019E7C  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 8001EF80 00019E80  80 A4 00 EC */	lwz r5, 0xec(r4)
/* 8001EF84 00019E84  38 03 43 FD */	addi r0, r3, 0x000343FD@l
/* 8001EF88 00019E88  C8 82 82 88 */	lfd f4, lbl_804BFCA8-_SDA2_BASE_(r2)
/* 8001EF8C 00019E8C  7C 65 01 D6 */	mullw r3, r5, r0
/* 8001EF90 00019E90  C0 42 82 70 */	lfs f2, lbl_804BFC90-_SDA2_BASE_(r2)
/* 8001EF94 00019E94  C0 22 82 9C */	lfs f1, lbl_804BFCBC-_SDA2_BASE_(r2)
/* 8001EF98 00019E98  C0 02 82 80 */	lfs f0, lbl_804BFCA0-_SDA2_BASE_(r2)
/* 8001EF9C 00019E9C  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001EFA0 00019EA0  38 63 9E C3 */	addi r3, r3, -24893
/* 8001EFA4 00019EA4  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001EFA8 00019EA8  90 64 00 EC */	stw r3, 0xec(r4)
/* 8001EFAC 00019EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001EFB0 00019EB0  C8 61 00 08 */	lfd f3, 8(r1)
/* 8001EFB4 00019EB4  EC 63 20 28 */	fsubs f3, f3, f4
/* 8001EFB8 00019EB8  EC 43 10 24 */	fdivs f2, f3, f2
/* 8001EFBC 00019EBC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8001EFC0 00019EC0  EF 60 00 72 */	fmuls f27, f0, f1
lbl_8001EFC4:
/* 8001EFC4 00019EC4  54 E0 03 9D */	rlwinm. r0, r7, 0, 0xe, 0xe
/* 8001EFC8 00019EC8  41 82 01 30 */	beq lbl_8001F0F8
/* 8001EFCC 00019ECC  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 8001EFD0 00019ED0  C0 08 00 08 */	lfs f0, 8(r8)
/* 8001EFD4 00019ED4  C8 42 82 A0 */	lfd f2, lbl_804BFCC0-_SDA2_BASE_(r2)
/* 8001EFD8 00019ED8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8001EFDC 00019EDC  48 0A 1E A1 */	bl fmod
/* 8001EFE0 00019EE0  FC 20 08 18 */	frsp f1, f1
/* 8001EFE4 00019EE4  C0 02 82 A8 */	lfs f0, lbl_804BFCC8-_SDA2_BASE_(r2)
/* 8001EFE8 00019EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001EFEC 00019EEC  41 80 00 10 */	blt lbl_8001EFFC
/* 8001EFF0 00019EF0  C0 02 82 AC */	lfs f0, lbl_804BFCCC-_SDA2_BASE_(r2)
/* 8001EFF4 00019EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001EFF8 00019EF8  40 81 00 2C */	ble lbl_8001F024
lbl_8001EFFC:
/* 8001EFFC 00019EFC  A0 19 00 32 */	lhz r0, 0x32(r25)
/* 8001F000 00019F00  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 8001F004 00019F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F008 00019F08  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8001F00C 00019F0C  C8 22 82 88 */	lfd f1, lbl_804BFCA8-_SDA2_BASE_(r2)
/* 8001F010 00019F10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8001F014 00019F14  EC 43 10 28 */	fsubs f2, f3, f2
/* 8001F018 00019F18  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001F01C 00019F1C  EE C2 00 24 */	fdivs f22, f2, f0
/* 8001F020 00019F20  48 00 00 30 */	b lbl_8001F050
lbl_8001F024:
/* 8001F024 00019F24  A0 79 00 32 */	lhz r3, 0x32(r25)
/* 8001F028 00019F28  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8001F02C 00019F2C  38 03 FF FF */	addi r0, r3, -1
/* 8001F030 00019F30  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8001F034 00019F34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001F038 00019F38  C8 22 82 90 */	lfd f1, lbl_804BFCB0-_SDA2_BASE_(r2)
/* 8001F03C 00019F3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001F040 00019F40  EC 42 00 28 */	fsubs f2, f2, f0
/* 8001F044 00019F44  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001F048 00019F48  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001F04C 00019F4C  EE C2 00 24 */	fdivs f22, f2, f0
lbl_8001F050:
/* 8001F050 00019F50  CA E2 82 90 */	lfd f23, lbl_804BFCB0-_SDA2_BASE_(r2)
/* 8001F054 00019F54  3A E0 00 00 */	li r23, 0
/* 8001F058 00019F58  C3 02 82 B0 */	lfs f24, lbl_804BFCD0-_SDA2_BASE_(r2)
/* 8001F05C 00019F5C  C3 22 82 80 */	lfs f25, lbl_804BFCA0-_SDA2_BASE_(r2)
/* 8001F060 00019F60  48 00 00 8C */	b lbl_8001F0EC
lbl_8001F064:
/* 8001F064 00019F64  2C 1B 00 01 */	cmpwi r27, 1
/* 8001F068 00019F68  41 81 00 0C */	bgt lbl_8001F074
/* 8001F06C 00019F6C  C1 02 82 7C */	lfs f8, lbl_804BFC9C-_SDA2_BASE_(r2)
/* 8001F070 00019F70  48 00 00 38 */	b lbl_8001F0A8
lbl_8001F074:
/* 8001F074 00019F74  38 1B FF FF */	addi r0, r27, -1
/* 8001F078 00019F78  6E E3 80 00 */	xoris r3, r23, 0x8000
/* 8001F07C 00019F7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001F080 00019F80  90 61 00 14 */	stw r3, 0x14(r1)
/* 8001F084 00019F84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001F088 00019F88  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8001F08C 00019F8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001F090 00019F90  EC 21 B8 28 */	fsubs f1, f1, f23
/* 8001F094 00019F94  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8001F098 00019F98  EC 01 00 24 */	fdivs f0, f1, f0
/* 8001F09C 00019F9C  EC 00 C0 28 */	fsubs f0, f0, f24
/* 8001F0A0 00019FA0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8001F0A4 00019FA4  ED 19 00 32 */	fmuls f8, f25, f0
lbl_8001F0A8:
/* 8001F0A8 00019FA8  FC 20 D0 90 */	fmr f1, f26
/* 8001F0AC 00019FAC  7F 03 C3 78 */	mr r3, r24
/* 8001F0B0 00019FB0  FC 40 F8 90 */	fmr f2, f31
/* 8001F0B4 00019FB4  7F 24 CB 78 */	mr r4, r25
/* 8001F0B8 00019FB8  FC 60 F0 90 */	fmr f3, f30
/* 8001F0BC 00019FBC  7F 45 D3 78 */	mr r5, r26
/* 8001F0C0 00019FC0  FC 80 E8 90 */	fmr f4, f29
/* 8001F0C4 00019FC4  7F 66 DB 78 */	mr r6, r27
/* 8001F0C8 00019FC8  FC A0 E0 90 */	fmr f5, f28
/* 8001F0CC 00019FCC  7F 87 E3 78 */	mr r7, r28
/* 8001F0D0 00019FD0  FC C0 B0 90 */	fmr f6, f22
/* 8001F0D4 00019FD4  7F A8 EB 78 */	mr r8, r29
/* 8001F0D8 00019FD8  FC E0 D8 90 */	fmr f7, f27
/* 8001F0DC 00019FDC  7F C9 F3 78 */	mr r9, r30
/* 8001F0E0 00019FE0  7F EA FB 78 */	mr r10, r31
/* 8001F0E4 00019FE4  4B FF F9 0D */	bl EmissionSub__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34fffffff
/* 8001F0E8 00019FE8  3A F7 00 01 */	addi r23, r23, 1
lbl_8001F0EC:
/* 8001F0EC 00019FEC  7C 17 D8 00 */	cmpw r23, r27
/* 8001F0F0 00019FF0  41 80 FF 74 */	blt lbl_8001F064
/* 8001F0F4 00019FF4  48 00 00 48 */	b lbl_8001F13C
lbl_8001F0F8:
/* 8001F0F8 00019FF8  FC 20 D0 90 */	fmr f1, f26
/* 8001F0FC 00019FFC  C1 02 82 7C */	lfs f8, lbl_804BFC9C-_SDA2_BASE_(r2)
/* 8001F100 0001A000  FC 40 F8 90 */	fmr f2, f31
/* 8001F104 0001A004  7F 03 C3 78 */	mr r3, r24
/* 8001F108 0001A008  FC 60 F0 90 */	fmr f3, f30
/* 8001F10C 0001A00C  7F 24 CB 78 */	mr r4, r25
/* 8001F110 0001A010  FC 80 E8 90 */	fmr f4, f29
/* 8001F114 0001A014  7F 45 D3 78 */	mr r5, r26
/* 8001F118 0001A018  FC A0 E0 90 */	fmr f5, f28
/* 8001F11C 0001A01C  7F 66 DB 78 */	mr r6, r27
/* 8001F120 0001A020  FC C0 E0 90 */	fmr f6, f28
/* 8001F124 0001A024  7F 87 E3 78 */	mr r7, r28
/* 8001F128 0001A028  FC E0 D8 90 */	fmr f7, f27
/* 8001F12C 0001A02C  7F A8 EB 78 */	mr r8, r29
/* 8001F130 0001A030  7F C9 F3 78 */	mr r9, r30
/* 8001F134 0001A034  7F EA FB 78 */	mr r10, r31
/* 8001F138 0001A038  4B FF F8 B9 */	bl EmissionSub__Q34nw4r2ef19EmitterFormCylinderFPQ34nw4r2ef7EmitterPQ34nw4r2ef15ParticleManageriUlPfUsfPCQ34nw4r4math5MTX34fffffff
lbl_8001F13C:
/* 8001F13C 0001A03C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8001F140 0001A040  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8001F144 0001A044  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8001F148 0001A048  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8001F14C 0001A04C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8001F150 0001A050  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8001F154 0001A054  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8001F158 0001A058  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8001F15C 0001A05C  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8001F160 0001A060  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8001F164 0001A064  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 8001F168 0001A068  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8001F16C 0001A06C  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 8001F170 0001A070  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 8001F174 0001A074  E3 01 00 68 */	psq_l f24, 104(r1), 0, qr0
/* 8001F178 0001A078  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 8001F17C 0001A07C  E2 E1 00 58 */	psq_l f23, 88(r1), 0, qr0
/* 8001F180 0001A080  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 8001F184 0001A084  E2 C1 00 48 */	psq_l f22, 72(r1), 0, qr0
/* 8001F188 0001A088  39 61 00 40 */	addi r11, r1, 0x40
/* 8001F18C 0001A08C  CA C1 00 40 */	lfd f22, 0x40(r1)
/* 8001F190 0001A090  48 09 2B F1 */	bl _restgpr_23
/* 8001F194 0001A094  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8001F198 0001A098  7C 08 03 A6 */	mtlr r0
/* 8001F19C 0001A09C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8001F1A0 0001A0A0  4E 80 00 20 */	blr 

.include "macros.inc"

.section .sdata2, "a"
.global lbl_804C02A8
lbl_804C02A8:
	.single 0e1
	.balign 8

.section .text, "ax"
.global GetAnmResult__Q34nw4r3g3d9ResAnmShpCFPQ34nw4r3g3d12ShpAnmResultUlfPCQ34nw4r3g3d12ShpAnmVtxSet
GetAnmResult__Q34nw4r3g3d9ResAnmShpCFPQ34nw4r3g3d12ShpAnmResultUlfPCQ34nw4r3g3d12ShpAnmVtxSet:
/* 8005AA98 00055998  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005AA9C 0005599C  7C 08 02 A6 */	mflr r0
/* 8005AAA0 000559A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8005AAA4 000559A4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8005AAA8 000559A8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8005AAAC 000559AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8005AAB0 000559B0  48 05 72 81 */	bl _savegpr_22
/* 8005AAB4 000559B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8005AAB8 000559B8  FF E0 08 90 */	fmr f31, f1
/* 8005AABC 000559BC  7C 97 23 78 */	mr r23, r4
/* 8005AAC0 000559C0  7C D8 33 78 */	mr r24, r6
/* 8005AAC4 000559C4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8005AAC8 000559C8  2C 00 00 00 */	cmpwi r0, 0
/* 8005AACC 000559CC  41 82 00 0C */	beq lbl_8005AAD8
/* 8005AAD0 000559D0  7C 03 02 14 */	add r0, r3, r0
/* 8005AAD4 000559D4  48 00 00 08 */	b lbl_8005AADC
lbl_8005AAD8:
/* 8005AAD8 000559D8  38 00 00 00 */	li r0, 0
lbl_8005AADC:
/* 8005AADC 000559DC  2C 00 00 00 */	cmpwi r0, 0
/* 8005AAE0 000559E0  41 82 00 2C */	beq lbl_8005AB0C
/* 8005AAE4 000559E4  38 65 00 01 */	addi r3, r5, 1
/* 8005AAE8 000559E8  54 63 20 36 */	slwi r3, r3, 4
/* 8005AAEC 000559EC  7C 60 1A 14 */	add r3, r0, r3
/* 8005AAF0 000559F0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8005AAF4 000559F4  2C 03 00 00 */	cmpwi r3, 0
/* 8005AAF8 000559F8  41 82 00 0C */	beq lbl_8005AB04
/* 8005AAFC 000559FC  7F E0 1A 14 */	add r31, r0, r3
/* 8005AB00 00055A00  48 00 00 10 */	b lbl_8005AB10
lbl_8005AB04:
/* 8005AB04 00055A04  3B E0 00 00 */	li r31, 0
/* 8005AB08 00055A08  48 00 00 08 */	b lbl_8005AB10
lbl_8005AB0C:
/* 8005AB0C 00055A0C  3B E0 00 00 */	li r31, 0
lbl_8005AB10:
/* 8005AB10 00055A10  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8005AB14 00055A14  7F FC FB 78 */	mr r28, r31
/* 8005AB18 00055A18  83 5F 00 0C */	lwz r26, 0xc(r31)
/* 8005AB1C 00055A1C  3B C4 00 18 */	addi r30, r4, 0x18
/* 8005AB20 00055A20  80 1F 00 00 */	lwz r0, 0(r31)
/* 8005AB24 00055A24  7F A3 FA 14 */	add r29, r3, r31
/* 8005AB28 00055A28  C0 02 88 88 */	lfs f0, lbl_804C02A8-_SDA2_BASE_(r2)
/* 8005AB2C 00055A2C  3B 7F 00 14 */	addi r27, r31, 0x14
/* 8005AB30 00055A30  90 04 00 00 */	stw r0, 0(r4)
/* 8005AB34 00055A34  3B 20 00 00 */	li r25, 0
/* 8005AB38 00055A38  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8005AB3C 00055A3C  90 04 00 04 */	stw r0, 4(r4)
/* 8005AB40 00055A40  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8005AB44 00055A44  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8005AB48 00055A48  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8005AB4C 00055A4C  7C A6 00 6E */	lwzux r5, r6, r0
/* 8005AB50 00055A50  80 66 00 04 */	lwz r3, 4(r6)
/* 8005AB54 00055A54  80 06 00 08 */	lwz r0, 8(r6)
/* 8005AB58 00055A58  90 A4 00 08 */	stw r5, 8(r4)
/* 8005AB5C 00055A5C  90 64 00 0C */	stw r3, 0xc(r4)
/* 8005AB60 00055A60  90 04 00 10 */	stw r0, 0x10(r4)
/* 8005AB64 00055A64  48 00 00 70 */	b lbl_8005ABD4
lbl_8005AB68:
/* 8005AB68 00055A68  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 8005AB6C 00055A6C  A2 DD 00 00 */	lhz r22, 0(r29)
/* 8005AB70 00055A70  41 82 00 0C */	beq lbl_8005AB7C
/* 8005AB74 00055A74  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 8005AB78 00055A78  48 00 00 14 */	b lbl_8005AB8C
lbl_8005AB7C:
/* 8005AB7C 00055A7C  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8005AB80 00055A80  FC 20 F8 90 */	fmr f1, f31
/* 8005AB84 00055A84  7C 7B 02 14 */	add r3, r27, r0
/* 8005AB88 00055A88  4B FF C3 35 */	bl GetResKeyFrameAnmResult__Q34nw4r3g3d6detailFPCQ34nw4r3g3d18ResKeyFrameAnmDataf
lbl_8005AB8C:
/* 8005AB8C 00055A8C  1C 16 00 0C */	mulli r0, r22, 0xc
/* 8005AB90 00055A90  57 5A F8 7E */	srwi r26, r26, 1
/* 8005AB94 00055A94  3B BD 00 02 */	addi r29, r29, 2
/* 8005AB98 00055A98  3B 9C 00 04 */	addi r28, r28, 4
/* 8005AB9C 00055A9C  7C 98 02 14 */	add r4, r24, r0
/* 8005ABA0 00055AA0  7C 18 00 2E */	lwzx r0, r24, r0
/* 8005ABA4 00055AA4  80 64 00 04 */	lwz r3, 4(r4)
/* 8005ABA8 00055AA8  3B 7B 00 04 */	addi r27, r27, 4
/* 8005ABAC 00055AAC  90 1E 00 00 */	stw r0, 0(r30)
/* 8005ABB0 00055AB0  3B 39 00 01 */	addi r25, r25, 1
/* 8005ABB4 00055AB4  80 04 00 08 */	lwz r0, 8(r4)
/* 8005ABB8 00055AB8  90 7E 00 04 */	stw r3, 4(r30)
/* 8005ABBC 00055ABC  90 1E 00 08 */	stw r0, 8(r30)
/* 8005ABC0 00055AC0  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8005ABC4 00055AC4  3B DE 00 10 */	addi r30, r30, 0x10
/* 8005ABC8 00055AC8  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 8005ABCC 00055ACC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8005ABD0 00055AD0  D0 17 00 14 */	stfs f0, 0x14(r23)
lbl_8005ABD4:
/* 8005ABD4 00055AD4  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8005ABD8 00055AD8  7C 19 00 00 */	cmpw r25, r0
/* 8005ABDC 00055ADC  41 80 FF 8C */	blt lbl_8005AB68
/* 8005ABE0 00055AE0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8005ABE4 00055AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8005ABE8 00055AE8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8005ABEC 00055AEC  48 05 71 91 */	bl _restgpr_22
/* 8005ABF0 00055AF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005ABF4 00055AF4  7C 08 03 A6 */	mtlr r0
/* 8005ABF8 00055AF8  38 21 00 40 */	addi r1, r1, 0x40
/* 8005ABFC 00055AFC  4E 80 00 20 */	blr 
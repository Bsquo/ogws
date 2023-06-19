.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global lbl_804BEC88
lbl_804BEC88:
	.skip 0x8

.section .bss, "wa"
.balign 0x8
.global lbl_8040AA50
lbl_8040AA50:
	.skip 0x10

.section .ctors, "a"
.4byte __sinit_$$3eggDrawHelper_cpp

.section .text, "ax"
.global __dt__Q23EGG8Vector3fFv
__dt__Q23EGG8Vector3fFv:
/* 800A1C30 0009CB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1C34 0009CB34  7C 08 02 A6 */	mflr r0
/* 800A1C38 0009CB38  2C 03 00 00 */	cmpwi r3, 0
/* 800A1C3C 0009CB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1C40 0009CB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A1C44 0009CB44  7C 7F 1B 78 */	mr r31, r3
/* 800A1C48 0009CB48  41 82 00 10 */	beq lbl_800A1C58
/* 800A1C4C 0009CB4C  2C 04 00 00 */	cmpwi r4, 0
/* 800A1C50 0009CB50  40 81 00 08 */	ble lbl_800A1C58
/* 800A1C54 0009CB54  48 00 16 31 */	bl __dl__FPv
lbl_800A1C58:
/* 800A1C58 0009CB58  7F E3 FB 78 */	mr r3, r31
/* 800A1C5C 0009CB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A1C60 0009CB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1C64 0009CB64  7C 08 03 A6 */	mtlr r0
/* 800A1C68 0009CB68  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1C6C 0009CB6C  4E 80 00 20 */	blr 

.global __dt__Q23EGG8Vector2fFv
__dt__Q23EGG8Vector2fFv:
/* 800A1C70 0009CB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1C74 0009CB74  7C 08 02 A6 */	mflr r0
/* 800A1C78 0009CB78  2C 03 00 00 */	cmpwi r3, 0
/* 800A1C7C 0009CB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1C80 0009CB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A1C84 0009CB84  7C 7F 1B 78 */	mr r31, r3
/* 800A1C88 0009CB88  41 82 00 10 */	beq lbl_800A1C98
/* 800A1C8C 0009CB8C  2C 04 00 00 */	cmpwi r4, 0
/* 800A1C90 0009CB90  40 81 00 08 */	ble lbl_800A1C98
/* 800A1C94 0009CB94  48 00 15 F1 */	bl __dl__FPv
lbl_800A1C98:
/* 800A1C98 0009CB98  7F E3 FB 78 */	mr r3, r31
/* 800A1C9C 0009CB9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A1CA0 0009CBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1CA4 0009CBA4  7C 08 03 A6 */	mtlr r0
/* 800A1CA8 0009CBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1CAC 0009CBAC  4E 80 00 20 */	blr 

.global func_800A1CB0
func_800A1CB0:
/* 800A1CB0 0009CBB0  C0 E4 00 08 */	lfs f7, 8(r4)
/* 800A1CB4 0009CBB4  C0 C5 00 04 */	lfs f6, 4(r5)
/* 800A1CB8 0009CBB8  C0 84 00 04 */	lfs f4, 4(r4)
/* 800A1CBC 0009CBBC  C0 25 00 00 */	lfs f1, 0(r5)
/* 800A1CC0 0009CBC0  EC A7 01 B2 */	fmuls f5, f7, f6
/* 800A1CC4 0009CBC4  C0 45 00 08 */	lfs f2, 8(r5)
/* 800A1CC8 0009CBC8  EC 04 00 72 */	fmuls f0, f4, f1
/* 800A1CCC 0009CBCC  C0 64 00 00 */	lfs f3, 0(r4)
/* 800A1CD0 0009CBD0  EC 84 28 B8 */	fmsubs f4, f4, f2, f5
/* 800A1CD4 0009CBD4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800A1CD8 0009CBD8  EC 63 01 B8 */	fmsubs f3, f3, f6, f0
/* 800A1CDC 0009CBDC  D0 83 00 00 */	stfs f4, 0(r3)
/* 800A1CE0 0009CBE0  EC 07 10 78 */	fmsubs f0, f7, f1, f2
/* 800A1CE4 0009CBE4  D0 63 00 08 */	stfs f3, 8(r3)
/* 800A1CE8 0009CBE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 800A1CEC 0009CBEC  4E 80 00 20 */	blr 

.global func_800A1CF0
func_800A1CF0:
/* 800A1CF0 0009CBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A1CF4 0009CBF4  7C 08 02 A6 */	mflr r0
/* 800A1CF8 0009CBF8  2C 03 00 00 */	cmpwi r3, 0
/* 800A1CFC 0009CBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A1D00 0009CC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A1D04 0009CC04  7C 7F 1B 78 */	mr r31, r3
/* 800A1D08 0009CC08  41 82 00 10 */	beq lbl_800A1D18
/* 800A1D0C 0009CC0C  2C 04 00 00 */	cmpwi r4, 0
/* 800A1D10 0009CC10  40 81 00 08 */	ble lbl_800A1D18
/* 800A1D14 0009CC14  48 00 15 71 */	bl __dl__FPv
lbl_800A1D18:
/* 800A1D18 0009CC18  7F E3 FB 78 */	mr r3, r31
/* 800A1D1C 0009CC1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A1D20 0009CC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A1D24 0009CC24  7C 08 03 A6 */	mtlr r0
/* 800A1D28 0009CC28  38 21 00 10 */	addi r1, r1, 0x10
/* 800A1D2C 0009CC2C  4E 80 00 20 */	blr 

.global func_800A1D30
func_800A1D30:
/* 800A1D30 0009CC30  4E 80 00 20 */	blr 

.global func_800A1D34
func_800A1D34:
/* 800A1D34 0009CC34  C0 64 00 08 */	lfs f3, 8(r4)
/* 800A1D38 0009CC38  C0 44 00 04 */	lfs f2, 4(r4)
/* 800A1D3C 0009CC3C  C0 04 00 00 */	lfs f0, 0(r4)
/* 800A1D40 0009CC40  EC 63 00 72 */	fmuls f3, f3, f1
/* 800A1D44 0009CC44  EC 42 00 72 */	fmuls f2, f2, f1
/* 800A1D48 0009CC48  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A1D4C 0009CC4C  D0 63 00 08 */	stfs f3, 8(r3)
/* 800A1D50 0009CC50  D0 03 00 00 */	stfs f0, 0(r3)
/* 800A1D54 0009CC54  D0 43 00 04 */	stfs f2, 4(r3)
/* 800A1D58 0009CC58  4E 80 00 20 */	blr 

.global func_800A1D5C
func_800A1D5C:
/* 800A1D5C 0009CC5C  C0 24 00 08 */	lfs f1, 8(r4)
/* 800A1D60 0009CC60  C0 05 00 08 */	lfs f0, 8(r5)
/* 800A1D64 0009CC64  C0 64 00 04 */	lfs f3, 4(r4)
/* 800A1D68 0009CC68  EC 81 00 2A */	fadds f4, f1, f0
/* 800A1D6C 0009CC6C  C0 45 00 04 */	lfs f2, 4(r5)
/* 800A1D70 0009CC70  C0 24 00 00 */	lfs f1, 0(r4)
/* 800A1D74 0009CC74  C0 05 00 00 */	lfs f0, 0(r5)
/* 800A1D78 0009CC78  EC 43 10 2A */	fadds f2, f3, f2
/* 800A1D7C 0009CC7C  D0 83 00 08 */	stfs f4, 8(r3)
/* 800A1D80 0009CC80  EC 01 00 2A */	fadds f0, f1, f0
/* 800A1D84 0009CC84  D0 43 00 04 */	stfs f2, 4(r3)
/* 800A1D88 0009CC88  D0 03 00 00 */	stfs f0, 0(r3)
/* 800A1D8C 0009CC8C  4E 80 00 20 */	blr 

# __sinit_\eggDrawHelper_cpp
.global __sinit_$$3eggDrawHelper_cpp
__sinit_$$3eggDrawHelper_cpp:
/* 800A1D90 0009CC90  38 00 FF FF */	li r0, -1
/* 800A1D94 0009CC94  3C 80 80 0A */	lis r4, func_800A1CF0@ha
/* 800A1D98 0009CC98  3C A0 80 41 */	lis r5, lbl_8040AA50@ha
/* 800A1D9C 0009CC9C  90 0D 99 08 */	stw r0, lbl_804BEC88-_SDA_BASE_(r13)
/* 800A1DA0 0009CCA0  38 84 1C F0 */	addi r4, r4, func_800A1CF0@l
/* 800A1DA4 0009CCA4  38 6D 99 08 */	addi r3, r13, lbl_804BEC88-_SDA_BASE_
/* 800A1DA8 0009CCA8  38 A5 AA 50 */	addi r5, r5, lbl_8040AA50@l
/* 800A1DAC 0009CCAC  48 00 FA 88 */	b func_800B1834

.include "macros.inc"

.section .data, "wa"
.global __vt__Q34nw4r3lyt8DrawInfo
__vt__Q34nw4r3lyt8DrawInfo:
    .long 0
    .long 0
    .long __dt__Q34nw4r3lyt8DrawInfoFv
    .long 0

.section .text, "ax"
.global __ct__Q34nw4r3lyt8DrawInfoFv
__ct__Q34nw4r3lyt8DrawInfoFv:
/* 80081CF8 0007CBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80081CFC 0007CBFC  7C 08 02 A6 */	mflr r0
/* 80081D00 0007CC00  3C 80 80 39 */	lis r4, __vt__Q34nw4r3lyt8DrawInfo@ha
/* 80081D04 0007CC04  C0 22 8A E8 */	lfs f1, lbl_804C0508-_SDA2_BASE_(r2)
/* 80081D08 0007CC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80081D0C 0007CC0C  38 84 74 A0 */	addi r4, r4, __vt__Q34nw4r3lyt8DrawInfo@l
/* 80081D10 0007CC10  C0 02 8A EC */	lfs f0, lbl_804C050C-_SDA2_BASE_(r2)
/* 80081D14 0007CC14  38 A0 00 01 */	li r5, 1
/* 80081D18 0007CC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80081D1C 0007CC1C  7C 7F 1B 78 */	mr r31, r3
/* 80081D20 0007CC20  90 83 00 00 */	stw r4, 0(r3)
/* 80081D24 0007CC24  38 80 00 00 */	li r4, 0
/* 80081D28 0007CC28  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80081D2C 0007CC2C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80081D30 0007CC30  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 80081D34 0007CC34  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80081D38 0007CC38  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80081D3C 0007CC3C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80081D40 0007CC40  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80081D44 0007CC44  38 63 00 50 */	addi r3, r3, 0x50
/* 80081D48 0007CC48  4B F8 23 BD */	bl memset
/* 80081D4C 0007CC4C  38 7F 00 04 */	addi r3, r31, 4
/* 80081D50 0007CC50  48 06 58 A9 */	bl PSMTXIdentity
/* 80081D54 0007CC54  7F E3 FB 78 */	mr r3, r31
/* 80081D58 0007CC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80081D5C 0007CC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80081D60 0007CC60  7C 08 03 A6 */	mtlr r0
/* 80081D64 0007CC64  38 21 00 10 */	addi r1, r1, 0x10
/* 80081D68 0007CC68  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3lyt8DrawInfoFv
__dt__Q34nw4r3lyt8DrawInfoFv:
/* 80081D6C 0007CC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80081D70 0007CC70  7C 08 02 A6 */	mflr r0
/* 80081D74 0007CC74  2C 03 00 00 */	cmpwi r3, 0
/* 80081D78 0007CC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80081D7C 0007CC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80081D80 0007CC80  7C 7F 1B 78 */	mr r31, r3
/* 80081D84 0007CC84  41 82 00 10 */	beq lbl_80081D94
/* 80081D88 0007CC88  2C 04 00 00 */	cmpwi r4, 0
/* 80081D8C 0007CC8C  40 81 00 08 */	ble lbl_80081D94
/* 80081D90 0007CC90  48 02 14 F5 */	bl __dl__FPv
lbl_80081D94:
/* 80081D94 0007CC94  7F E3 FB 78 */	mr r3, r31
/* 80081D98 0007CC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80081D9C 0007CC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80081DA0 0007CCA0  7C 08 03 A6 */	mtlr r0
/* 80081DA4 0007CCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80081DA8 0007CCA8  4E 80 00 20 */	blr 

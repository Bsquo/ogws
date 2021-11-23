.include "macros.inc"

.section .text, "ax"
.global __write_console
__write_console:
/* 800BD08C 000B7F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BD090 000B7F90  7C 08 02 A6 */	mflr r0
/* 800BD094 000B7F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BD098 000B7F98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BD09C 000B7F9C  7C DF 33 78 */	mr r31, r6
/* 800BD0A0 000B7FA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BD0A4 000B7FA4  7C BE 2B 78 */	mr r30, r5
/* 800BD0A8 000B7FA8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800BD0AC 000B7FAC  7C 9D 23 78 */	mr r29, r4
/* 800BD0B0 000B7FB0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800BD0B4 000B7FB4  7C 7C 1B 78 */	mr r28, r3
/* 800BD0B8 000B7FB8  48 02 EE 65 */	bl func_800EBF1C
/* 800BD0BC 000B7FBC  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 800BD0C0 000B7FC0  40 82 00 64 */	bne lbl_800BD124
/* 800BD0C4 000B7FC4  80 0D 99 F0 */	lwz r0, initialized$552-_SDA_BASE_(r13)
/* 800BD0C8 000B7FC8  38 60 00 00 */	li r3, 0
/* 800BD0CC 000B7FCC  2C 00 00 00 */	cmpwi r0, 0
/* 800BD0D0 000B7FD0  40 82 00 20 */	bne lbl_800BD0F0
/* 800BD0D4 000B7FD4  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 800BD0D8 000B7FD8  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 800BD0DC 000B7FDC  48 01 A7 CD */	bl func_800D78A8
/* 800BD0E0 000B7FE0  2C 03 00 00 */	cmpwi r3, 0
/* 800BD0E4 000B7FE4  40 82 00 0C */	bne lbl_800BD0F0
/* 800BD0E8 000B7FE8  38 00 00 01 */	li r0, 1
/* 800BD0EC 000B7FEC  90 0D 99 F0 */	stw r0, initialized$552-_SDA_BASE_(r13)
lbl_800BD0F0:
/* 800BD0F0 000B7FF0  2C 03 00 00 */	cmpwi r3, 0
/* 800BD0F4 000B7FF4  41 82 00 0C */	beq lbl_800BD100
/* 800BD0F8 000B7FF8  38 60 00 01 */	li r3, 1
/* 800BD0FC 000B7FFC  48 00 00 40 */	b lbl_800BD13C
lbl_800BD100:
/* 800BD100 000B8000  80 9E 00 00 */	lwz r4, 0(r30)
/* 800BD104 000B8004  7F A3 EB 78 */	mr r3, r29
/* 800BD108 000B8008  48 01 A7 E9 */	bl func_800D78F0
/* 800BD10C 000B800C  2C 03 00 00 */	cmpwi r3, 0
/* 800BD110 000B8010  41 82 00 14 */	beq lbl_800BD124
/* 800BD114 000B8014  38 00 00 00 */	li r0, 0
/* 800BD118 000B8018  38 60 00 01 */	li r3, 1
/* 800BD11C 000B801C  90 1E 00 00 */	stw r0, 0(r30)
/* 800BD120 000B8020  48 00 00 1C */	b lbl_800BD13C
lbl_800BD124:
/* 800BD124 000B8024  7F 83 E3 78 */	mr r3, r28
/* 800BD128 000B8028  7F A4 EB 78 */	mr r4, r29
/* 800BD12C 000B802C  7F C5 F3 78 */	mr r5, r30
/* 800BD130 000B8030  7F E6 FB 78 */	mr r6, r31
/* 800BD134 000B8034  48 00 87 2D */	bl __TRK_write_console
/* 800BD138 000B8038  38 60 00 00 */	li r3, 0
lbl_800BD13C:
/* 800BD13C 000B803C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BD140 000B8040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BD144 000B8044  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BD148 000B8048  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800BD14C 000B804C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800BD150 000B8050  7C 08 03 A6 */	mtlr r0
/* 800BD154 000B8054  38 21 00 20 */	addi r1, r1, 0x20
/* 800BD158 000B8058  4E 80 00 20 */	blr 

.global __close_console
__close_console:
/* 800BD15C 000B805C  38 60 00 00 */	li r3, 0
/* 800BD160 000B8060  4E 80 00 20 */	blr 

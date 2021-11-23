.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global gTRKInputPendingPtr
gTRKInputPendingPtr:
	.skip 0x8

.section .text, "ax"
.global TRKNubMainLoop
TRKNubMainLoop:
/* 800C10D4 000BBFD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C10D8 000BBFD8  7C 08 02 A6 */	mflr r0
/* 800C10DC 000BBFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C10E0 000BBFE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C10E4 000BBFE4  3B E0 00 00 */	li r31, 0
/* 800C10E8 000BBFE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C10EC 000BBFEC  3B C0 00 00 */	li r30, 0
/* 800C10F0 000BBFF0  48 00 00 BC */	b lbl_800C11AC
lbl_800C10F4:
/* 800C10F4 000BBFF4  38 61 00 08 */	addi r3, r1, 8
/* 800C10F8 000BBFF8  48 00 01 F1 */	bl TRKGetNextEvent
/* 800C10FC 000BBFFC  2C 03 00 00 */	cmpwi r3, 0
/* 800C1100 000BC000  41 82 00 6C */	beq lbl_800C116C
/* 800C1104 000BC004  80 01 00 08 */	lwz r0, 8(r1)
/* 800C1108 000BC008  3B C0 00 00 */	li r30, 0
/* 800C110C 000BC00C  2C 00 00 02 */	cmpwi r0, 2
/* 800C1110 000BC010  41 82 00 28 */	beq lbl_800C1138
/* 800C1114 000BC014  40 80 00 14 */	bge lbl_800C1128
/* 800C1118 000BC018  2C 00 00 00 */	cmpwi r0, 0
/* 800C111C 000BC01C  41 82 00 44 */	beq lbl_800C1160
/* 800C1120 000BC020  40 80 00 28 */	bge lbl_800C1148
/* 800C1124 000BC024  48 00 00 3C */	b lbl_800C1160
lbl_800C1128:
/* 800C1128 000BC028  2C 00 00 05 */	cmpwi r0, 5
/* 800C112C 000BC02C  41 82 00 30 */	beq lbl_800C115C
/* 800C1130 000BC030  40 80 00 30 */	bge lbl_800C1160
/* 800C1134 000BC034  48 00 00 1C */	b lbl_800C1150
lbl_800C1138:
/* 800C1138 000BC038  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800C113C 000BC03C  48 00 0B 3D */	bl func_800C1C78
/* 800C1140 000BC040  48 00 0E D9 */	bl func_800C2018
/* 800C1144 000BC044  48 00 00 1C */	b lbl_800C1160
lbl_800C1148:
/* 800C1148 000BC048  3B E0 00 01 */	li r31, 1
/* 800C114C 000BC04C  48 00 00 14 */	b lbl_800C1160
lbl_800C1150:
/* 800C1150 000BC050  38 61 00 08 */	addi r3, r1, 8
/* 800C1154 000BC054  48 00 31 85 */	bl func_800C42D8
/* 800C1158 000BC058  48 00 00 08 */	b lbl_800C1160
lbl_800C115C:
/* 800C115C 000BC05C  48 00 2D 75 */	bl func_800C3ED0
lbl_800C1160:
/* 800C1160 000BC060  38 61 00 08 */	addi r3, r1, 8
/* 800C1164 000BC064  48 00 00 69 */	bl TRKDestructEvent
/* 800C1168 000BC068  48 00 00 44 */	b lbl_800C11AC
lbl_800C116C:
/* 800C116C 000BC06C  2C 1E 00 00 */	cmpwi r30, 0
/* 800C1170 000BC070  41 82 00 1C */	beq lbl_800C118C
/* 800C1174 000BC074  3C 60 80 4C */	lis r3, gTRKInputPendingPtr@ha
/* 800C1178 000BC078  38 63 ED 80 */	addi r3, r3, gTRKInputPendingPtr@l
/* 800C117C 000BC07C  80 63 00 00 */	lwz r3, 0(r3)
/* 800C1180 000BC080  88 03 00 00 */	lbz r0, 0(r3)
/* 800C1184 000BC084  28 00 00 00 */	cmplwi r0, 0
/* 800C1188 000BC088  41 82 00 10 */	beq lbl_800C1198
lbl_800C118C:
/* 800C118C 000BC08C  3B C0 00 01 */	li r30, 1
/* 800C1190 000BC090  48 00 0C CD */	bl func_800C1E5C
/* 800C1194 000BC094  48 00 00 18 */	b lbl_800C11AC
lbl_800C1198:
/* 800C1198 000BC098  48 00 2D 29 */	bl func_800C3EC0
/* 800C119C 000BC09C  2C 03 00 00 */	cmpwi r3, 0
/* 800C11A0 000BC0A0  40 82 00 08 */	bne lbl_800C11A8
/* 800C11A4 000BC0A4  48 00 50 55 */	bl func_800C61F8
lbl_800C11A8:
/* 800C11A8 000BC0A8  3B C0 00 00 */	li r30, 0
lbl_800C11AC:
/* 800C11AC 000BC0AC  2C 1F 00 00 */	cmpwi r31, 0
/* 800C11B0 000BC0B0  41 82 FF 44 */	beq lbl_800C10F4
/* 800C11B4 000BC0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C11B8 000BC0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800C11BC 000BC0BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800C11C0 000BC0C0  7C 08 03 A6 */	mtlr r0
/* 800C11C4 000BC0C4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C11C8 000BC0C8  4E 80 00 20 */	blr 

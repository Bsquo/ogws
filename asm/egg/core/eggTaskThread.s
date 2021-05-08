.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global sEndMesgBuffer__Q23EGG10TaskThread
sEndMesgBuffer__Q23EGG10TaskThread:
	.skip 0x4
.global sEndMesgBufSize__Q23EGG10TaskThread
sEndMesgBufSize__Q23EGG10TaskThread:
	.skip 0x4

.section .data, "wa"
.balign 0x8
.global __vt__Q23EGG10TaskThread
__vt__Q23EGG10TaskThread:
    .long 0
    .long 0
    .long __dt__Q23EGG10TaskThreadFv
    .long run__Q23EGG10TaskThreadFv
    .long onEnter__Q23EGG10TaskThreadFv
    .long onExit__Q23EGG10TaskThreadFv

.section .bss, "wa"
.balign 0x8
.global sEndMesgQueue__Q23EGG10TaskThread
sEndMesgQueue__Q23EGG10TaskThread:
	.skip 0x20

.section .rodata, "a"
.balign 0x8
.global lbl_8037A3E8
lbl_8037A3E8:
	.string "eggTaskThread.cpp"
    .string "size > 0"
    .string "sEndMesgBuffer"

.section .text, "ax"
.global create__Q23EGG10TaskThreadFiiUlPQ23EGG4Heap
create__Q23EGG10TaskThreadFiiUlPQ23EGG4Heap:
/* 800A3D34 0009EC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3D38 0009EC38  7C 08 02 A6 */	mflr r0
/* 800A3D3C 0009EC3C  2C 06 00 00 */	cmpwi r6, 0
/* 800A3D40 0009EC40  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3D44 0009EC44  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800A3D48 0009EC48  7C 7E 1B 78 */	mr r30, r3
/* 800A3D4C 0009EC4C  7C 9B 23 78 */	mr r27, r4
/* 800A3D50 0009EC50  7C BC 2B 78 */	mr r28, r5
/* 800A3D54 0009EC54  7C DD 33 78 */	mr r29, r6
/* 800A3D58 0009EC58  40 82 00 08 */	bne lbl_800A3D60
/* 800A3D5C 0009EC5C  83 AD 99 28 */	lwz r29, sCurrentHeap__Q23EGG4Heap-_SDA_BASE_(r13)
lbl_800A3D60:
/* 800A3D60 0009EC60  7F A4 EB 78 */	mr r4, r29
/* 800A3D64 0009EC64  38 60 00 54 */	li r3, 0x54
/* 800A3D68 0009EC68  38 A0 00 04 */	li r5, 4
/* 800A3D6C 0009EC6C  4B FF F4 E5 */	bl __nw__FUlPQ23EGG4Heapi
/* 800A3D70 0009EC70  2C 03 00 00 */	cmpwi r3, 0
/* 800A3D74 0009EC74  7C 7F 1B 78 */	mr r31, r3
/* 800A3D78 0009EC78  41 82 00 34 */	beq lbl_800A3DAC
/* 800A3D7C 0009EC7C  7F 84 E3 78 */	mr r4, r28
/* 800A3D80 0009EC80  7F C5 F3 78 */	mr r5, r30
/* 800A3D84 0009EC84  7F 66 DB 78 */	mr r6, r27
/* 800A3D88 0009EC88  38 E0 00 00 */	li r7, 0
/* 800A3D8C 0009EC8C  4B FF F7 29 */	bl __ct__Q23EGG6ThreadFUliiPQ23EGG4Heap
/* 800A3D90 0009EC90  3C 60 80 3A */	lis r3, __vt__Q23EGG10TaskThread@ha
/* 800A3D94 0009EC94  38 00 00 00 */	li r0, 0
/* 800A3D98 0009EC98  38 63 81 B0 */	addi r3, r3, __vt__Q23EGG10TaskThread@l
/* 800A3D9C 0009EC9C  90 7F 00 00 */	stw r3, 0(r31)
/* 800A3DA0 0009ECA0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800A3DA4 0009ECA4  80 7F 00 08 */	lwz r3, 8(r31)
/* 800A3DA8 0009ECA8  48 05 10 8D */	bl OSResumeThread
lbl_800A3DAC:
/* 800A3DAC 0009ECAC  2C 1F 00 00 */	cmpwi r31, 0
/* 800A3DB0 0009ECB0  40 82 00 0C */	bne lbl_800A3DBC
/* 800A3DB4 0009ECB4  38 60 00 00 */	li r3, 0
/* 800A3DB8 0009ECB8  48 00 02 30 */	b lbl_800A3FE8
lbl_800A3DBC:
/* 800A3DBC 0009ECBC  1C 7E 00 18 */	mulli r3, r30, 0x18
/* 800A3DC0 0009ECC0  38 00 00 00 */	li r0, 0
/* 800A3DC4 0009ECC4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800A3DC8 0009ECC8  7F A4 EB 78 */	mr r4, r29
/* 800A3DCC 0009ECCC  38 A0 00 04 */	li r5, 4
/* 800A3DD0 0009ECD0  38 63 00 10 */	addi r3, r3, 0x10
/* 800A3DD4 0009ECD4  4B FF F4 A1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 800A3DD8 0009ECD8  3C 80 80 0A */	lis r4, __ct__Q33EGG10TaskThread4TJobFv@ha
/* 800A3DDC 0009ECDC  7F C7 F3 78 */	mr r7, r30
/* 800A3DE0 0009ECE0  38 84 3F FC */	addi r4, r4, __ct__Q33EGG10TaskThread4TJobFv@l
/* 800A3DE4 0009ECE4  38 A0 00 00 */	li r5, 0
/* 800A3DE8 0009ECE8  38 C0 00 18 */	li r6, 0x18
/* 800A3DEC 0009ECEC  48 00 DA A9 */	bl __construct_new_array
/* 800A3DF0 0009ECF0  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800A3DF4 0009ECF4  2C 03 00 00 */	cmpwi r3, 0
/* 800A3DF8 0009ECF8  93 DF 00 4C */	stw r30, 0x4c(r31)
/* 800A3DFC 0009ECFC  40 82 00 2C */	bne lbl_800A3E28
/* 800A3E00 0009ED00  2C 1F 00 00 */	cmpwi r31, 0
/* 800A3E04 0009ED04  41 82 00 1C */	beq lbl_800A3E20
/* 800A3E08 0009ED08  81 9F 00 00 */	lwz r12, 0(r31)
/* 800A3E0C 0009ED0C  7F E3 FB 78 */	mr r3, r31
/* 800A3E10 0009ED10  38 80 00 01 */	li r4, 1
/* 800A3E14 0009ED14  81 8C 00 08 */	lwz r12, 8(r12)
/* 800A3E18 0009ED18  7D 89 03 A6 */	mtctr r12
/* 800A3E1C 0009ED1C  4E 80 04 21 */	bctrl 
lbl_800A3E20:
/* 800A3E20 0009ED20  38 60 00 00 */	li r3, 0
/* 800A3E24 0009ED24  48 00 01 C4 */	b lbl_800A3FE8
lbl_800A3E28:
/* 800A3E28 0009ED28  2C 9E 00 00 */	cmpwi cr1, r30, 0
/* 800A3E2C 0009ED2C  38 80 00 00 */	li r4, 0
/* 800A3E30 0009ED30  40 85 01 B4 */	ble cr1, lbl_800A3FE4
/* 800A3E34 0009ED34  2C 1E 00 08 */	cmpwi r30, 8
/* 800A3E38 0009ED38  38 DE FF F8 */	addi r6, r30, -8
/* 800A3E3C 0009ED3C  40 81 01 68 */	ble lbl_800A3FA4
/* 800A3E40 0009ED40  38 A0 00 00 */	li r5, 0
/* 800A3E44 0009ED44  41 84 00 18 */	blt cr1, lbl_800A3E5C
/* 800A3E48 0009ED48  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 800A3E4C 0009ED4C  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 800A3E50 0009ED50  7C 1E 00 00 */	cmpw r30, r0
/* 800A3E54 0009ED54  41 81 00 08 */	bgt lbl_800A3E5C
/* 800A3E58 0009ED58  38 A0 00 01 */	li r5, 1
lbl_800A3E5C:
/* 800A3E5C 0009ED5C  2C 05 00 00 */	cmpwi r5, 0
/* 800A3E60 0009ED60  41 82 01 44 */	beq lbl_800A3FA4
/* 800A3E64 0009ED64  38 A6 00 07 */	addi r5, r6, 7
/* 800A3E68 0009ED68  38 60 00 00 */	li r3, 0
/* 800A3E6C 0009ED6C  54 A5 E8 FE */	srwi r5, r5, 3
/* 800A3E70 0009ED70  38 00 00 00 */	li r0, 0
/* 800A3E74 0009ED74  7C A9 03 A6 */	mtctr r5
/* 800A3E78 0009ED78  2C 06 00 00 */	cmpwi r6, 0
/* 800A3E7C 0009ED7C  40 81 01 28 */	ble lbl_800A3FA4
lbl_800A3E80:
/* 800A3E80 0009ED80  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3E84 0009ED84  38 84 00 08 */	addi r4, r4, 8
/* 800A3E88 0009ED88  7C 05 19 2E */	stwx r0, r5, r3
/* 800A3E8C 0009ED8C  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3E90 0009ED90  7C 05 19 6E */	stwux r0, r5, r3
/* 800A3E94 0009ED94  90 05 00 0C */	stw r0, 0xc(r5)
/* 800A3E98 0009ED98  90 05 00 10 */	stw r0, 0x10(r5)
/* 800A3E9C 0009ED9C  90 05 00 14 */	stw r0, 0x14(r5)
/* 800A3EA0 0009EDA0  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3EA4 0009EDA4  7C A5 1A 14 */	add r5, r5, r3
/* 800A3EA8 0009EDA8  90 05 00 18 */	stw r0, 0x18(r5)
/* 800A3EAC 0009EDAC  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3EB0 0009EDB0  7C A5 1A 14 */	add r5, r5, r3
/* 800A3EB4 0009EDB4  90 05 00 18 */	stw r0, 0x18(r5)
/* 800A3EB8 0009EDB8  90 05 00 24 */	stw r0, 0x24(r5)
/* 800A3EBC 0009EDBC  90 05 00 28 */	stw r0, 0x28(r5)
/* 800A3EC0 0009EDC0  90 05 00 2C */	stw r0, 0x2c(r5)
/* 800A3EC4 0009EDC4  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3EC8 0009EDC8  7C A5 1A 14 */	add r5, r5, r3
/* 800A3ECC 0009EDCC  90 05 00 30 */	stw r0, 0x30(r5)
/* 800A3ED0 0009EDD0  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3ED4 0009EDD4  7C A5 1A 14 */	add r5, r5, r3
/* 800A3ED8 0009EDD8  90 05 00 30 */	stw r0, 0x30(r5)
/* 800A3EDC 0009EDDC  90 05 00 3C */	stw r0, 0x3c(r5)
/* 800A3EE0 0009EDE0  90 05 00 40 */	stw r0, 0x40(r5)
/* 800A3EE4 0009EDE4  90 05 00 44 */	stw r0, 0x44(r5)
/* 800A3EE8 0009EDE8  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3EEC 0009EDEC  7C A5 1A 14 */	add r5, r5, r3
/* 800A3EF0 0009EDF0  90 05 00 48 */	stw r0, 0x48(r5)
/* 800A3EF4 0009EDF4  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3EF8 0009EDF8  7C A5 1A 14 */	add r5, r5, r3
/* 800A3EFC 0009EDFC  90 05 00 48 */	stw r0, 0x48(r5)
/* 800A3F00 0009EE00  90 05 00 54 */	stw r0, 0x54(r5)
/* 800A3F04 0009EE04  90 05 00 58 */	stw r0, 0x58(r5)
/* 800A3F08 0009EE08  90 05 00 5C */	stw r0, 0x5c(r5)
/* 800A3F0C 0009EE0C  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F10 0009EE10  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F14 0009EE14  90 05 00 60 */	stw r0, 0x60(r5)
/* 800A3F18 0009EE18  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F1C 0009EE1C  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F20 0009EE20  90 05 00 60 */	stw r0, 0x60(r5)
/* 800A3F24 0009EE24  90 05 00 6C */	stw r0, 0x6c(r5)
/* 800A3F28 0009EE28  90 05 00 70 */	stw r0, 0x70(r5)
/* 800A3F2C 0009EE2C  90 05 00 74 */	stw r0, 0x74(r5)
/* 800A3F30 0009EE30  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F34 0009EE34  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F38 0009EE38  90 05 00 78 */	stw r0, 0x78(r5)
/* 800A3F3C 0009EE3C  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F40 0009EE40  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F44 0009EE44  90 05 00 78 */	stw r0, 0x78(r5)
/* 800A3F48 0009EE48  90 05 00 84 */	stw r0, 0x84(r5)
/* 800A3F4C 0009EE4C  90 05 00 88 */	stw r0, 0x88(r5)
/* 800A3F50 0009EE50  90 05 00 8C */	stw r0, 0x8c(r5)
/* 800A3F54 0009EE54  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F58 0009EE58  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F5C 0009EE5C  90 05 00 90 */	stw r0, 0x90(r5)
/* 800A3F60 0009EE60  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F64 0009EE64  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F68 0009EE68  90 05 00 90 */	stw r0, 0x90(r5)
/* 800A3F6C 0009EE6C  90 05 00 9C */	stw r0, 0x9c(r5)
/* 800A3F70 0009EE70  90 05 00 A0 */	stw r0, 0xa0(r5)
/* 800A3F74 0009EE74  90 05 00 A4 */	stw r0, 0xa4(r5)
/* 800A3F78 0009EE78  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F7C 0009EE7C  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F80 0009EE80  90 05 00 A8 */	stw r0, 0xa8(r5)
/* 800A3F84 0009EE84  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 800A3F88 0009EE88  7C A5 1A 14 */	add r5, r5, r3
/* 800A3F8C 0009EE8C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A3F90 0009EE90  90 05 00 A8 */	stw r0, 0xa8(r5)
/* 800A3F94 0009EE94  90 05 00 B4 */	stw r0, 0xb4(r5)
/* 800A3F98 0009EE98  90 05 00 B8 */	stw r0, 0xb8(r5)
/* 800A3F9C 0009EE9C  90 05 00 BC */	stw r0, 0xbc(r5)
/* 800A3FA0 0009EEA0  42 00 FE E0 */	bdnz lbl_800A3E80
lbl_800A3FA4:
/* 800A3FA4 0009EEA4  7C 04 F0 50 */	subf r0, r4, r30
/* 800A3FA8 0009EEA8  38 A0 00 00 */	li r5, 0
/* 800A3FAC 0009EEAC  1C C4 00 18 */	mulli r6, r4, 0x18
/* 800A3FB0 0009EEB0  7C 09 03 A6 */	mtctr r0
/* 800A3FB4 0009EEB4  7C 04 F0 00 */	cmpw r4, r30
/* 800A3FB8 0009EEB8  40 80 00 2C */	bge lbl_800A3FE4
lbl_800A3FBC:
/* 800A3FBC 0009EEBC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A3FC0 0009EEC0  7C A3 31 2E */	stwx r5, r3, r6
/* 800A3FC4 0009EEC4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 800A3FC8 0009EEC8  7C A6 01 2E */	stwx r5, r6, r0
/* 800A3FCC 0009EECC  7C 60 32 14 */	add r3, r0, r6
/* 800A3FD0 0009EED0  38 C6 00 18 */	addi r6, r6, 0x18
/* 800A3FD4 0009EED4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 800A3FD8 0009EED8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800A3FDC 0009EEDC  90 A3 00 14 */	stw r5, 0x14(r3)
/* 800A3FE0 0009EEE0  42 00 FF DC */	bdnz lbl_800A3FBC
lbl_800A3FE4:
/* 800A3FE4 0009EEE4  7F E3 FB 78 */	mr r3, r31
lbl_800A3FE8:
/* 800A3FE8 0009EEE8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800A3FEC 0009EEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3FF0 0009EEF0  7C 08 03 A6 */	mtlr r0
/* 800A3FF4 0009EEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3FF8 0009EEF8  4E 80 00 20 */	blr 

.global __ct__Q33EGG10TaskThread4TJobFv
__ct__Q33EGG10TaskThread4TJobFv:
/* 800A3FFC 0009EEFC  38 00 00 00 */	li r0, 0
/* 800A4000 0009EF00  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A4004 0009EF04  90 03 00 10 */	stw r0, 0x10(r3)
/* 800A4008 0009EF08  90 03 00 14 */	stw r0, 0x14(r3)
/* 800A400C 0009EF0C  4E 80 00 20 */	blr 

.global request__Q23EGG10TaskThreadFPFPv_vPvPv
request__Q23EGG10TaskThreadFPFPv_vPvPv:
/* 800A4010 0009EF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4014 0009EF14  7C 08 02 A6 */	mflr r0
/* 800A4018 0009EF18  38 E0 00 00 */	li r7, 0
/* 800A401C 0009EF1C  39 00 00 00 */	li r8, 0
/* 800A4020 0009EF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4024 0009EF24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4028 0009EF28  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 800A402C 0009EF2C  7C 09 03 A6 */	mtctr r0
/* 800A4030 0009EF30  2C 00 00 00 */	cmpwi r0, 0
/* 800A4034 0009EF34  40 81 00 48 */	ble lbl_800A407C
lbl_800A4038:
/* 800A4038 0009EF38  81 23 00 48 */	lwz r9, 0x48(r3)
/* 800A403C 0009EF3C  7C 09 40 2E */	lwzx r0, r9, r8
/* 800A4040 0009EF40  2C 00 00 00 */	cmpwi r0, 0
/* 800A4044 0009EF44  40 82 00 2C */	bne lbl_800A4070
/* 800A4048 0009EF48  1D 07 00 18 */	mulli r8, r7, 0x18
/* 800A404C 0009EF4C  38 00 00 00 */	li r0, 0
/* 800A4050 0009EF50  7C 09 41 2E */	stwx r0, r9, r8
/* 800A4054 0009EF54  7C E9 42 14 */	add r7, r9, r8
/* 800A4058 0009EF58  90 07 00 0C */	stw r0, 0xc(r7)
/* 800A405C 0009EF5C  90 07 00 10 */	stw r0, 0x10(r7)
/* 800A4060 0009EF60  90 07 00 14 */	stw r0, 0x14(r7)
/* 800A4064 0009EF64  80 03 00 48 */	lwz r0, 0x48(r3)
/* 800A4068 0009EF68  7F E0 42 14 */	add r31, r0, r8
/* 800A406C 0009EF6C  48 00 00 14 */	b lbl_800A4080
lbl_800A4070:
/* 800A4070 0009EF70  39 08 00 18 */	addi r8, r8, 0x18
/* 800A4074 0009EF74  38 E7 00 01 */	addi r7, r7, 1
/* 800A4078 0009EF78  42 00 FF C0 */	bdnz lbl_800A4038
lbl_800A407C:
/* 800A407C 0009EF7C  3B E0 00 00 */	li r31, 0
lbl_800A4080:
/* 800A4080 0009EF80  2C 1F 00 00 */	cmpwi r31, 0
/* 800A4084 0009EF84  40 82 00 0C */	bne lbl_800A4090
/* 800A4088 0009EF88  38 60 00 00 */	li r3, 0
/* 800A408C 0009EF8C  48 00 00 38 */	b lbl_800A40C4
lbl_800A4090:
/* 800A4090 0009EF90  90 9F 00 00 */	stw r4, 0(r31)
/* 800A4094 0009EF94  7F E4 FB 78 */	mr r4, r31
/* 800A4098 0009EF98  38 63 00 0C */	addi r3, r3, 0xc
/* 800A409C 0009EF9C  90 BF 00 04 */	stw r5, 4(r31)
/* 800A40A0 0009EFA0  38 A0 00 00 */	li r5, 0
/* 800A40A4 0009EFA4  90 DF 00 08 */	stw r6, 8(r31)
/* 800A40A8 0009EFA8  48 04 E0 15 */	bl func_800F20BC
/* 800A40AC 0009EFAC  7C 03 00 D0 */	neg r0, r3
/* 800A40B0 0009EFB0  7C 00 1B 78 */	or r0, r0, r3
/* 800A40B4 0009EFB4  54 03 0F FF */	rlwinm. r3, r0, 1, 0x1f, 0x1f
/* 800A40B8 0009EFB8  40 82 00 0C */	bne lbl_800A40C4
/* 800A40BC 0009EFBC  38 00 00 00 */	li r0, 0
/* 800A40C0 0009EFC0  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A40C4:
/* 800A40C4 0009EFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A40C8 0009EFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A40CC 0009EFCC  7C 08 03 A6 */	mtlr r0
/* 800A40D0 0009EFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A40D4 0009EFD4  4E 80 00 20 */	blr 

.global createTaskEndMessageQueue__Q23EGG10TaskThreadFiPQ23EGG4Heap
createTaskEndMessageQueue__Q23EGG10TaskThreadFiPQ23EGG4Heap:
/* 800A40D8 0009EFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A40DC 0009EFDC  7C 08 02 A6 */	mflr r0
/* 800A40E0 0009EFE0  2C 03 00 00 */	cmpwi r3, 0
/* 800A40E4 0009EFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A40E8 0009EFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A40EC 0009EFEC  7C 9F 23 78 */	mr r31, r4
/* 800A40F0 0009EFF0  93 C1 00 08 */	stw r30, 8(r1)
/* 800A40F4 0009EFF4  7C 7E 1B 78 */	mr r30, r3
/* 800A40F8 0009EFF8  41 81 00 1C */	bgt lbl_800A4114
/* 800A40FC 0009EFFC  3C 60 80 38 */	lis r3, lbl_8037A3E8@ha
/* 800A4100 0009F000  38 80 01 7A */	li r4, 0x17a
/* 800A4104 0009F004  38 63 A3 E8 */	addi r3, r3, lbl_8037A3E8@l
/* 800A4108 0009F008  38 A3 00 12 */	addi r5, r3, 0x12
/* 800A410C 0009F00C  4C C6 31 82 */	crclr 6
/* 800A4110 0009F010  4B FF DD F9 */	bl system_halt
lbl_800A4114:
/* 800A4114 0009F014  93 CD 99 44 */	stw r30, sEndMesgBufSize__Q23EGG10TaskThread-_SDA_BASE_(r13)
/* 800A4118 0009F018  7F E5 FB 78 */	mr r5, r31
/* 800A411C 0009F01C  57 C3 10 3A */	slwi r3, r30, 2
/* 800A4120 0009F020  38 80 00 04 */	li r4, 4
/* 800A4124 0009F024  4B FF ED 15 */	bl alloc__Q23EGG4HeapFUliPQ23EGG4Heap
/* 800A4128 0009F028  2C 03 00 00 */	cmpwi r3, 0
/* 800A412C 0009F02C  90 6D 99 40 */	stw r3, sEndMesgBuffer__Q23EGG10TaskThread-_SDA_BASE_(r13)
/* 800A4130 0009F030  40 82 00 1C */	bne lbl_800A414C
/* 800A4134 0009F034  3C 60 80 38 */	lis r3, lbl_8037A3E8@ha
/* 800A4138 0009F038  38 80 01 85 */	li r4, 0x185
/* 800A413C 0009F03C  38 63 A3 E8 */	addi r3, r3, lbl_8037A3E8@l
/* 800A4140 0009F040  38 A3 00 1B */	addi r5, r3, 0x1b
/* 800A4144 0009F044  4C C6 31 82 */	crclr 6
/* 800A4148 0009F048  4B FF DD C1 */	bl system_halt
lbl_800A414C:
/* 800A414C 0009F04C  3F E0 80 41 */	lis r31, sEndMesgQueue__Q23EGG10TaskThread@ha
/* 800A4150 0009F050  80 8D 99 40 */	lwz r4, sEndMesgBuffer__Q23EGG10TaskThread-_SDA_BASE_(r13)
/* 800A4154 0009F054  80 AD 99 44 */	lwz r5, sEndMesgBufSize__Q23EGG10TaskThread-_SDA_BASE_(r13)
/* 800A4158 0009F058  38 7F AB 50 */	addi r3, r31, sEndMesgQueue__Q23EGG10TaskThread@l
/* 800A415C 0009F05C  48 04 DF 01 */	bl func_800F205C
/* 800A4160 0009F060  38 7F AB 50 */	addi r3, r31, -21680
/* 800A4164 0009F064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4168 0009F068  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A416C 0009F06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4170 0009F070  7C 08 03 A6 */	mtlr r0
/* 800A4174 0009F074  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4178 0009F078  4E 80 00 20 */	blr 

.global isTaskExist__Q23EGG10TaskThreadCFv
isTaskExist__Q23EGG10TaskThreadCFv:
/* 800A417C 0009F07C  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 800A4180 0009F080  38 A0 00 00 */	li r5, 0
/* 800A4184 0009F084  7C 09 03 A6 */	mtctr r0
/* 800A4188 0009F088  2C 00 00 00 */	cmpwi r0, 0
/* 800A418C 0009F08C  40 81 00 24 */	ble lbl_800A41B0
lbl_800A4190:
/* 800A4190 0009F090  80 83 00 48 */	lwz r4, 0x48(r3)
/* 800A4194 0009F094  7C 04 28 2E */	lwzx r0, r4, r5
/* 800A4198 0009F098  2C 00 00 00 */	cmpwi r0, 0
/* 800A419C 0009F09C  41 82 00 0C */	beq lbl_800A41A8
/* 800A41A0 0009F0A0  38 60 00 01 */	li r3, 1
/* 800A41A4 0009F0A4  4E 80 00 20 */	blr 
lbl_800A41A8:
/* 800A41A8 0009F0A8  38 A5 00 18 */	addi r5, r5, 0x18
/* 800A41AC 0009F0AC  42 00 FF E4 */	bdnz lbl_800A4190
lbl_800A41B0:
/* 800A41B0 0009F0B0  38 60 00 00 */	li r3, 0
/* 800A41B4 0009F0B4  4E 80 00 20 */	blr 

.global __dt__Q23EGG10TaskThreadFv
__dt__Q23EGG10TaskThreadFv:
/* 800A41B8 0009F0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A41BC 0009F0BC  7C 08 02 A6 */	mflr r0
/* 800A41C0 0009F0C0  2C 03 00 00 */	cmpwi r3, 0
/* 800A41C4 0009F0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A41C8 0009F0C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A41CC 0009F0CC  7C 9F 23 78 */	mr r31, r4
/* 800A41D0 0009F0D0  93 C1 00 08 */	stw r30, 8(r1)
/* 800A41D4 0009F0D4  7C 7E 1B 78 */	mr r30, r3
/* 800A41D8 0009F0D8  41 82 00 1C */	beq lbl_800A41F4
/* 800A41DC 0009F0DC  38 80 00 00 */	li r4, 0
/* 800A41E0 0009F0E0  4B FF F4 DD */	bl __dt__Q23EGG6ThreadFv
/* 800A41E4 0009F0E4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A41E8 0009F0E8  40 81 00 0C */	ble lbl_800A41F4
/* 800A41EC 0009F0EC  7F C3 F3 78 */	mr r3, r30
/* 800A41F0 0009F0F0  4B FF F0 95 */	bl __dl__FPv
lbl_800A41F4:
/* 800A41F4 0009F0F4  7F C3 F3 78 */	mr r3, r30
/* 800A41F8 0009F0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A41FC 0009F0FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A4200 0009F100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4204 0009F104  7C 08 03 A6 */	mtlr r0
/* 800A4208 0009F108  38 21 00 10 */	addi r1, r1, 0x10
/* 800A420C 0009F10C  4E 80 00 20 */	blr 

.global onEnter__Q23EGG10TaskThreadFv
onEnter__Q23EGG10TaskThreadFv:
/* 800A4210 0009F110  80 63 00 44 */	lwz r3, 0x44(r3)
/* 800A4214 0009F114  2C 03 00 00 */	cmpwi r3, 0
/* 800A4218 0009F118  4D 82 00 20 */	beqlr 
/* 800A421C 0009F11C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 800A4220 0009F120  2C 0C 00 00 */	cmpwi r12, 0
/* 800A4224 0009F124  4D 82 00 20 */	beqlr 
/* 800A4228 0009F128  80 63 00 04 */	lwz r3, 4(r3)
/* 800A422C 0009F12C  7D 89 03 A6 */	mtctr r12
/* 800A4230 0009F130  4E 80 04 20 */	bctr 
/* 800A4234 0009F134  4E 80 00 20 */	blr 

.global onExit__Q23EGG10TaskThreadFv
onExit__Q23EGG10TaskThreadFv:
/* 800A4238 0009F138  80 63 00 44 */	lwz r3, 0x44(r3)
/* 800A423C 0009F13C  2C 03 00 00 */	cmpwi r3, 0
/* 800A4240 0009F140  4D 82 00 20 */	beqlr 
/* 800A4244 0009F144  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800A4248 0009F148  2C 0C 00 00 */	cmpwi r12, 0
/* 800A424C 0009F14C  4D 82 00 20 */	beqlr 
/* 800A4250 0009F150  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4254 0009F154  7D 89 03 A6 */	mtctr r12
/* 800A4258 0009F158  4E 80 04 20 */	bctr 
/* 800A425C 0009F15C  4E 80 00 20 */	blr 

.global run__Q23EGG10TaskThreadFv
run__Q23EGG10TaskThreadFv:
/* 800A4260 0009F160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4264 0009F164  7C 08 02 A6 */	mflr r0
/* 800A4268 0009F168  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A426C 0009F16C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A4270 0009F170  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A4274 0009F174  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A4278 0009F178  7C 7D 1B 78 */	mr r29, r3
/* 800A427C 0009F17C  38 60 00 04 */	li r3, 4
/* 800A4280 0009F180  64 63 00 04 */	oris r3, r3, 4
/* 800A4284 0009F184  7C 72 E3 A6 */	mtspr 0x392, r3
/* 800A4288 0009F188  38 60 00 05 */	li r3, 5
/* 800A428C 0009F18C  64 63 00 05 */	oris r3, r3, 5
/* 800A4290 0009F190  7C 73 E3 A6 */	mtspr 0x393, r3
/* 800A4294 0009F194  38 60 00 06 */	li r3, 6
/* 800A4298 0009F198  64 63 00 06 */	oris r3, r3, 6
/* 800A429C 0009F19C  7C 74 E3 A6 */	mtspr 0x394, r3
/* 800A42A0 0009F1A0  38 60 00 07 */	li r3, 7
/* 800A42A4 0009F1A4  64 63 00 07 */	oris r3, r3, 7
/* 800A42A8 0009F1A8  7C 75 E3 A6 */	mtspr 0x395, r3
/* 800A42AC 0009F1AC  3B E0 00 00 */	li r31, 0
lbl_800A42B0:
/* 800A42B0 0009F1B0  38 7D 00 0C */	addi r3, r29, 0xc
/* 800A42B4 0009F1B4  38 81 00 08 */	addi r4, r1, 8
/* 800A42B8 0009F1B8  38 A0 00 01 */	li r5, 1
/* 800A42BC 0009F1BC  48 04 DE C9 */	bl func_800F2184
/* 800A42C0 0009F1C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A42C4 0009F1C4  93 DD 00 44 */	stw r30, 0x44(r29)
/* 800A42C8 0009F1C8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A42CC 0009F1CC  2C 0C 00 00 */	cmpwi r12, 0
/* 800A42D0 0009F1D0  41 82 00 28 */	beq lbl_800A42F8
/* 800A42D4 0009F1D4  80 7E 00 04 */	lwz r3, 4(r30)
/* 800A42D8 0009F1D8  7D 89 03 A6 */	mtctr r12
/* 800A42DC 0009F1DC  4E 80 04 21 */	bctrl 
/* 800A42E0 0009F1E0  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 800A42E4 0009F1E4  2C 03 00 00 */	cmpwi r3, 0
/* 800A42E8 0009F1E8  41 82 00 10 */	beq lbl_800A42F8
/* 800A42EC 0009F1EC  80 9E 00 08 */	lwz r4, 8(r30)
/* 800A42F0 0009F1F0  38 A0 00 00 */	li r5, 0
/* 800A42F4 0009F1F4  48 04 DD C9 */	bl func_800F20BC
lbl_800A42F8:
/* 800A42F8 0009F1F8  93 FE 00 00 */	stw r31, 0(r30)
/* 800A42FC 0009F1FC  80 9D 00 44 */	lwz r4, 0x44(r29)
/* 800A4300 0009F200  2C 04 00 00 */	cmpwi r4, 0
/* 800A4304 0009F204  41 82 00 1C */	beq lbl_800A4320
/* 800A4308 0009F208  81 84 00 14 */	lwz r12, 0x14(r4)
/* 800A430C 0009F20C  2C 0C 00 00 */	cmpwi r12, 0
/* 800A4310 0009F210  41 82 00 10 */	beq lbl_800A4320
/* 800A4314 0009F214  80 64 00 04 */	lwz r3, 4(r4)
/* 800A4318 0009F218  7D 89 03 A6 */	mtctr r12
/* 800A431C 0009F21C  4E 80 04 21 */	bctrl 
lbl_800A4320:
/* 800A4320 0009F220  93 FD 00 44 */	stw r31, 0x44(r29)
/* 800A4324 0009F224  93 FE 00 00 */	stw r31, 0(r30)
/* 800A4328 0009F228  93 FE 00 0C */	stw r31, 0xc(r30)
/* 800A432C 0009F22C  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800A4330 0009F230  93 FE 00 14 */	stw r31, 0x14(r30)
/* 800A4334 0009F234  4B FF FF 7C */	b lbl_800A42B0

# Maybe waitMessage__Q23EGG6ThreadFPi ?
.global func_800A4338
func_800A4338:
/* 800A4338 0009F238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A433C 0009F23C  7C 08 02 A6 */	mflr r0
/* 800A4340 0009F240  2C 03 00 00 */	cmpwi r3, 0
/* 800A4344 0009F244  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A4348 0009F248  38 00 00 00 */	li r0, 0
/* 800A434C 0009F24C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A4350 0009F250  7C 9F 23 78 */	mr r31, r4
/* 800A4354 0009F254  90 01 00 08 */	stw r0, 8(r1)
/* 800A4358 0009F258  38 00 00 00 */	li r0, 0
/* 800A435C 0009F25C  41 82 00 14 */	beq lbl_800A4370
/* 800A4360 0009F260  38 81 00 08 */	addi r4, r1, 8
/* 800A4364 0009F264  38 A0 00 00 */	li r5, 0
/* 800A4368 0009F268  48 04 DE 1D */	bl func_800F2184
/* 800A436C 0009F26C  7C 60 1B 78 */	mr r0, r3
lbl_800A4370:
/* 800A4370 0009F270  2C 1F 00 00 */	cmpwi r31, 0
/* 800A4374 0009F274  41 82 00 08 */	beq lbl_800A437C
/* 800A4378 0009F278  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A437C:
/* 800A437C 0009F27C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A4380 0009F280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4384 0009F284  80 61 00 08 */	lwz r3, 8(r1)
/* 800A4388 0009F288  7C 08 03 A6 */	mtlr r0
/* 800A438C 0009F28C  38 21 00 20 */	addi r1, r1, 0x20
/* 800A4390 0009F290  4E 80 00 20 */	blr 

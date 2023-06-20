.include "macros.inc"

.section .data, "wa"
.balign 0x8
TRK_ISR_OFFSETS:
	.incbin "baserom.dol", 0x3954B0, 0x40

.section .bss, "wa"
.balign 0x8
lc_base:
	.skip 0x8

.section .init, "ax"
.global __TRK_reset
__TRK_reset:
/* 800060BC 000021BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800060C0 000021C0  7C 08 02 A6 */	mflr r0
/* 800060C4 000021C4  38 60 00 00 */	li r3, 0
/* 800060C8 000021C8  38 80 00 00 */	li r4, 0
/* 800060CC 000021CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800060D0 000021D0  38 A0 00 00 */	li r5, 0
/* 800060D4 000021D4  48 0E D2 55 */	bl OSResetSystem
/* 800060D8 000021D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800060DC 000021DC  7C 08 03 A6 */	mtlr r0
/* 800060E0 000021E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800060E4 000021E4  4E 80 00 20 */	blr 

.section .text, "ax"
.global InitMetroTRK
InitMetroTRK:
/* 800C59D8 000C08D8  38 21 FF FC */	addi r1, r1, -4
/* 800C59DC 000C08DC  90 61 00 00 */	stw r3, 0(r1)
/* 800C59E0 000C08E0  3C 60 80 40 */	lis r3, gTRKCPUState@h
/* 800C59E4 000C08E4  60 63 D7 40 */	ori r3, r3, gTRKCPUState@l
/* 800C59E8 000C08E8  BC 03 00 00 */	stmw r0, 0(r3)
/* 800C59EC 000C08EC  80 81 00 00 */	lwz r4, 0(r1)
/* 800C59F0 000C08F0  38 21 00 04 */	addi r1, r1, 4
/* 800C59F4 000C08F4  90 23 00 04 */	stw r1, 4(r3)
/* 800C59F8 000C08F8  90 83 00 0C */	stw r4, 0xc(r3)
/* 800C59FC 000C08FC  7C 88 02 A6 */	mflr r4
/* 800C5A00 000C0900  90 83 00 84 */	stw r4, 0x84(r3)
/* 800C5A04 000C0904  90 83 00 80 */	stw r4, 0x80(r3)
/* 800C5A08 000C0908  7C 80 00 26 */	mfcr r4
/* 800C5A0C 000C090C  90 83 00 88 */	stw r4, 0x88(r3)
/* 800C5A10 000C0910  7C 80 00 A6 */	mfmsr r4
/* 800C5A14 000C0914  60 83 80 00 */	ori r3, r4, 0x8000
/* 800C5A18 000C0918  68 63 80 00 */	xori r3, r3, 0x8000
/* 800C5A1C 000C091C  7C 60 01 24 */	mtmsr r3
/* 800C5A20 000C0920  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800C5A24 000C0924  4B FF FA CD */	bl TRKSaveExtended1Block
/* 800C5A28 000C0928  3C 60 80 40 */	lis r3, gTRKCPUState@h
/* 800C5A2C 000C092C  60 63 D7 40 */	ori r3, r3, gTRKCPUState@l
/* 800C5A30 000C0930  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800C5A34 000C0934  38 00 00 00 */	li r0, 0
/* 800C5A38 000C0938  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 800C5A3C 000C093C  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 800C5A40 000C0940  3C 20 80 4D */	lis r1, 0x804D8A20@h
/* 800C5A44 000C0944  60 21 8A 20 */	ori r1, r1, 0x804D8A20@l
/* 800C5A48 000C0948  7C A3 2B 78 */	mr r3, r5
/* 800C5A4C 000C094C  48 00 05 A1 */	bl InitMetroTRKCommTable
/* 800C5A50 000C0950  2C 03 00 01 */	cmpwi r3, 1
/* 800C5A54 000C0954  40 82 00 14 */	bne lbl_800C5A68
/* 800C5A58 000C0958  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800C5A5C 000C095C  7C 88 03 A6 */	mtlr r4
/* 800C5A60 000C0960  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800C5A64 000C0964  4E 80 00 20 */	blr 
lbl_800C5A68:
/* 800C5A68 000C0968  48 00 02 8C */	b TRK_main
/* 800C5A6C 000C096C  4E 80 00 20 */	blr 

.global InitMetroTRK_BBA
InitMetroTRK_BBA:
/* 800C5A70 000C0970  38 21 FF FC */	addi r1, r1, -4
/* 800C5A74 000C0974  90 61 00 00 */	stw r3, 0(r1)
/* 800C5A78 000C0978  3C 60 80 40 */	lis r3, gTRKCPUState@h
/* 800C5A7C 000C097C  60 63 D7 40 */	ori r3, r3, gTRKCPUState@l
/* 800C5A80 000C0980  BC 03 00 00 */	stmw r0, 0(r3)
/* 800C5A84 000C0984  80 81 00 00 */	lwz r4, 0(r1)
/* 800C5A88 000C0988  38 21 00 04 */	addi r1, r1, 4
/* 800C5A8C 000C098C  90 23 00 04 */	stw r1, 4(r3)
/* 800C5A90 000C0990  90 83 00 0C */	stw r4, 0xc(r3)
/* 800C5A94 000C0994  7C 88 02 A6 */	mflr r4
/* 800C5A98 000C0998  90 83 00 84 */	stw r4, 0x84(r3)
/* 800C5A9C 000C099C  90 83 00 80 */	stw r4, 0x80(r3)
/* 800C5AA0 000C09A0  7C 80 00 26 */	mfcr r4
/* 800C5AA4 000C09A4  90 83 00 88 */	stw r4, 0x88(r3)
/* 800C5AA8 000C09A8  7C 80 00 A6 */	mfmsr r4
/* 800C5AAC 000C09AC  60 83 80 00 */	ori r3, r4, 0x8000
/* 800C5AB0 000C09B0  7C 60 01 24 */	mtmsr r3
/* 800C5AB4 000C09B4  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800C5AB8 000C09B8  4B FF FA 39 */	bl TRKSaveExtended1Block
/* 800C5ABC 000C09BC  3C 60 80 40 */	lis r3, gTRKCPUState@h
/* 800C5AC0 000C09C0  60 63 D7 40 */	ori r3, r3, gTRKCPUState@l
/* 800C5AC4 000C09C4  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800C5AC8 000C09C8  38 00 00 00 */	li r0, 0
/* 800C5ACC 000C09CC  7C 12 FB A6 */	mtspr 0x3f2, r0
/* 800C5AD0 000C09D0  7C 15 FB A6 */	mtspr 0x3f5, r0
/* 800C5AD4 000C09D4  3C 20 80 4D */	lis r1, 0x804D8A20@h
/* 800C5AD8 000C09D8  60 21 8A 20 */	ori r1, r1, 0x804D8A20@l
/* 800C5ADC 000C09DC  38 60 00 02 */	li r3, 2
/* 800C5AE0 000C09E0  48 00 05 0D */	bl InitMetroTRKCommTable
/* 800C5AE4 000C09E4  2C 03 00 01 */	cmpwi r3, 1
/* 800C5AE8 000C09E8  40 82 00 14 */	bne lbl_800C5AFC
/* 800C5AEC 000C09EC  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800C5AF0 000C09F0  7C 88 03 A6 */	mtlr r4
/* 800C5AF4 000C09F4  B8 03 00 00 */	.4byte 0xB8030000  /* illegal lmw r0, 0(r3) */
/* 800C5AF8 000C09F8  4E 80 00 20 */	blr 
lbl_800C5AFC:
/* 800C5AFC 000C09FC  48 00 01 F8 */	b TRK_main
/* 800C5B00 000C0A00  4E 80 00 20 */	blr 

.global TRKInitializeTarget
TRKInitializeTarget:
/* 800C5B04 000C0A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5B08 000C0A08  7C 08 02 A6 */	mflr r0
/* 800C5B0C 000C0A0C  3C 60 80 41 */	lis r3, gTRKState@ha
/* 800C5B10 000C0A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5B14 000C0A14  38 00 00 01 */	li r0, 1
/* 800C5B18 000C0A18  38 63 D6 9C */	addi r3, r3, gTRKState@l
/* 800C5B1C 000C0A1C  90 03 00 98 */	stw r0, 0x98(r3)
/* 800C5B20 000C0A20  4B FF DF 8D */	bl __TRK_get_MSR
/* 800C5B24 000C0A24  3C A0 80 41 */	lis r5, gTRKState@ha
/* 800C5B28 000C0A28  3C 80 80 41 */	lis r4, lc_base@ha
/* 800C5B2C 000C0A2C  38 A5 D6 9C */	addi r5, r5, gTRKState@l
/* 800C5B30 000C0A30  3C 00 E0 00 */	lis r0, 0xe000
/* 800C5B34 000C0A34  90 65 00 8C */	stw r3, 0x8c(r5)
/* 800C5B38 000C0A38  38 60 00 00 */	li r3, 0
/* 800C5B3C 000C0A3C  90 04 DC 18 */	stw r0, lc_base@l(r4)
/* 800C5B40 000C0A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5B44 000C0A44  7C 08 03 A6 */	mtlr r0
/* 800C5B48 000C0A48  38 21 00 10 */	addi r1, r1, 0x10
/* 800C5B4C 000C0A4C  4E 80 00 20 */	blr 

.global __TRK_copy_vectors
__TRK_copy_vectors:
/* 800C5B50 000C0A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C5B54 000C0A54  7C 08 02 A6 */	mflr r0
/* 800C5B58 000C0A58  3C 60 80 41 */	lis r3, lc_base@ha
/* 800C5B5C 000C0A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C5B60 000C0A60  38 63 DC 18 */	addi r3, r3, lc_base@l
/* 800C5B64 000C0A64  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800C5B68 000C0A68  80 63 00 00 */	lwz r3, 0(r3)
/* 800C5B6C 000C0A6C  28 03 00 44 */	cmplwi r3, 0x44
/* 800C5B70 000C0A70  41 81 00 2C */	bgt lbl_800C5B9C
/* 800C5B74 000C0A74  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C5B78 000C0A78  28 00 00 44 */	cmplwi r0, 0x44
/* 800C5B7C 000C0A7C  40 81 00 20 */	ble lbl_800C5B9C
/* 800C5B80 000C0A80  3C 60 80 41 */	lis r3, gTRKCPUState@ha
/* 800C5B84 000C0A84  38 63 D7 40 */	addi r3, r3, gTRKCPUState@l
/* 800C5B88 000C0A88  80 03 02 38 */	lwz r0, 0x238(r3)
/* 800C5B8C 000C0A8C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C5B90 000C0A90  41 82 00 0C */	beq lbl_800C5B9C
/* 800C5B94 000C0A94  38 A0 00 44 */	li r5, 0x44
/* 800C5B98 000C0A98  48 00 00 0C */	b lbl_800C5BA4
lbl_800C5B9C:
/* 800C5B9C 000C0A9C  3C 60 80 00 */	lis r3, 0x80000044@ha
/* 800C5BA0 000C0AA0  38 A3 00 44 */	addi r5, r3, 0x80000044@l
lbl_800C5BA4:
/* 800C5BA4 000C0AA4  3C 80 80 3A */	lis r4, TRK_ISR_OFFSETS@ha
/* 800C5BA8 000C0AA8  3C 60 80 41 */	lis r3, gTRKCPUState@ha
/* 800C5BAC 000C0AAC  83 A5 00 00 */	lwz r29, 0(r5)
/* 800C5BB0 000C0AB0  3B E4 93 B0 */	addi r31, r4, TRK_ISR_OFFSETS@l
/* 800C5BB4 000C0AB4  3B 83 D7 40 */	addi r28, r3, gTRKCPUState@l
/* 800C5BB8 000C0AB8  3B C0 00 00 */	li r30, 0
lbl_800C5BBC:
/* 800C5BBC 000C0ABC  38 00 00 01 */	li r0, 1
/* 800C5BC0 000C0AC0  7C 00 F0 30 */	slw r0, r0, r30
/* 800C5BC4 000C0AC4  7F A0 00 39 */	and. r0, r29, r0
/* 800C5BC8 000C0AC8  41 82 00 90 */	beq lbl_800C5C58
/* 800C5BCC 000C0ACC  2C 1E 00 04 */	cmpwi r30, 4
/* 800C5BD0 000C0AD0  41 82 00 88 */	beq lbl_800C5C58
/* 800C5BD4 000C0AD4  3C 60 80 41 */	lis r3, lc_base@ha
/* 800C5BD8 000C0AD8  80 DF 00 00 */	lwz r6, 0(r31)
/* 800C5BDC 000C0ADC  38 63 DC 18 */	addi r3, r3, lc_base@l
/* 800C5BE0 000C0AE0  80 63 00 00 */	lwz r3, 0(r3)
/* 800C5BE4 000C0AE4  7C 06 18 40 */	cmplw r6, r3
/* 800C5BE8 000C0AE8  41 80 00 24 */	blt lbl_800C5C0C
/* 800C5BEC 000C0AEC  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C5BF0 000C0AF0  7C 06 00 40 */	cmplw r6, r0
/* 800C5BF4 000C0AF4  40 80 00 18 */	bge lbl_800C5C0C
/* 800C5BF8 000C0AF8  80 1C 02 38 */	lwz r0, 0x238(r28)
/* 800C5BFC 000C0AFC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C5C00 000C0B00  41 82 00 0C */	beq lbl_800C5C0C
/* 800C5C04 000C0B04  7C DB 33 78 */	mr r27, r6
/* 800C5C08 000C0B08  48 00 00 2C */	b lbl_800C5C34
lbl_800C5C0C:
/* 800C5C0C 000C0B0C  3C 00 7E 00 */	lis r0, 0x7e00
/* 800C5C10 000C0B10  7C 06 00 40 */	cmplw r6, r0
/* 800C5C14 000C0B14  41 80 00 18 */	blt lbl_800C5C2C
/* 800C5C18 000C0B18  3C 00 80 00 */	lis r0, 0x8000
/* 800C5C1C 000C0B1C  7C 06 00 40 */	cmplw r6, r0
/* 800C5C20 000C0B20  41 81 00 0C */	bgt lbl_800C5C2C
/* 800C5C24 000C0B24  7C DB 33 78 */	mr r27, r6
/* 800C5C28 000C0B28  48 00 00 0C */	b lbl_800C5C34
lbl_800C5C2C:
/* 800C5C2C 000C0B2C  54 C0 00 BE */	clrlwi r0, r6, 2
/* 800C5C30 000C0B30  64 1B 80 00 */	oris r27, r0, 0x8000
lbl_800C5C34:
/* 800C5C34 000C0B34  3C 80 80 00 */	lis r4, gTRKInterruptVectorTable@ha
/* 800C5C38 000C0B38  7F 63 DB 78 */	mr r3, r27
/* 800C5C3C 000C0B3C  38 04 41 88 */	addi r0, r4, gTRKInterruptVectorTable@l
/* 800C5C40 000C0B40  38 A0 01 00 */	li r5, 0x100
/* 800C5C44 000C0B44  7C 80 32 14 */	add r4, r0, r6
/* 800C5C48 000C0B48  4B F3 E5 1D */	bl TRK_memcpy
/* 800C5C4C 000C0B4C  7F 63 DB 78 */	mr r3, r27
/* 800C5C50 000C0B50  38 80 01 00 */	li r4, 0x100
/* 800C5C54 000C0B54  4B FF DD 4D */	bl TRK_flush_cache
lbl_800C5C58:
/* 800C5C58 000C0B58  3B DE 00 01 */	addi r30, r30, 1
/* 800C5C5C 000C0B5C  3B FF 00 04 */	addi r31, r31, 4
/* 800C5C60 000C0B60  2C 1E 00 0E */	cmpwi r30, 0xe
/* 800C5C64 000C0B64  40 81 FF 58 */	ble lbl_800C5BBC
/* 800C5C68 000C0B68  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800C5C6C 000C0B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C5C70 000C0B70  7C 08 03 A6 */	mtlr r0
/* 800C5C74 000C0B74  38 21 00 20 */	addi r1, r1, 0x20
/* 800C5C78 000C0B78  4E 80 00 20 */	blr 

.global TRKTargetTranslate
TRKTargetTranslate:
/* 800C5C7C 000C0B7C  3C 80 80 41 */	lis r4, lc_base@ha
/* 800C5C80 000C0B80  38 84 DC 18 */	addi r4, r4, lc_base@l
/* 800C5C84 000C0B84  80 84 00 00 */	lwz r4, 0(r4)
/* 800C5C88 000C0B88  7C 03 20 40 */	cmplw r3, r4
/* 800C5C8C 000C0B8C  41 80 00 24 */	blt lbl_800C5CB0
/* 800C5C90 000C0B90  38 04 40 00 */	addi r0, r4, 0x4000
/* 800C5C94 000C0B94  7C 03 00 40 */	cmplw r3, r0
/* 800C5C98 000C0B98  40 80 00 18 */	bge lbl_800C5CB0
/* 800C5C9C 000C0B9C  3C 80 80 41 */	lis r4, gTRKCPUState@ha
/* 800C5CA0 000C0BA0  38 84 D7 40 */	addi r4, r4, gTRKCPUState@l
/* 800C5CA4 000C0BA4  80 04 02 38 */	lwz r0, 0x238(r4)
/* 800C5CA8 000C0BA8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800C5CAC 000C0BAC  4C 82 00 20 */	bnelr 
lbl_800C5CB0:
/* 800C5CB0 000C0BB0  3C 00 7E 00 */	lis r0, 0x7e00
/* 800C5CB4 000C0BB4  7C 03 00 40 */	cmplw r3, r0
/* 800C5CB8 000C0BB8  41 80 00 10 */	blt lbl_800C5CC8
/* 800C5CBC 000C0BBC  3C 00 80 00 */	lis r0, 0x8000
/* 800C5CC0 000C0BC0  7C 03 00 40 */	cmplw r3, r0
/* 800C5CC4 000C0BC4  4C 81 00 20 */	blelr 
lbl_800C5CC8:
/* 800C5CC8 000C0BC8  54 60 00 BE */	clrlwi r0, r3, 2
/* 800C5CCC 000C0BCC  64 03 80 00 */	oris r3, r0, 0x8000
/* 800C5CD0 000C0BD0  4E 80 00 20 */	blr 

.global EnableMetroTRKInterrupts
EnableMetroTRKInterrupts:
/* 800C5CD4 000C0BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C5CD8 000C0BD8  7C 08 02 A6 */	mflr r0
/* 800C5CDC 000C0BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C5CE0 000C0BE0  48 00 02 75 */	bl EnableEXI2Interrupts
/* 800C5CE4 000C0BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C5CE8 000C0BE8  7C 08 03 A6 */	mtlr r0
/* 800C5CEC 000C0BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C5CF0 000C0BF0  4E 80 00 20 */	blr 

.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
AlarmQueue:
	.skip 0x8

.section .data, "wa"
.balign 0x8
ShutdownFunctionInfo:
	.long OnReset
    .long 0xFFFFFFFF
    .long 0x00000000
    .long 0x00000000

.section .text, "ax"
.global __OSInitAlarm
__OSInitAlarm:
/* 800ED0BC 000E7FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED0C0 000E7FC0  7C 08 02 A6 */	mflr r0
/* 800ED0C4 000E7FC4  38 60 00 08 */	li r3, 8
/* 800ED0C8 000E7FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED0CC 000E7FCC  4B FF FE 0D */	bl __OSGetExceptionHandler
/* 800ED0D0 000E7FD0  3C 80 80 0F */	lis r4, DecrementerExceptionHandler@ha
/* 800ED0D4 000E7FD4  38 84 D7 AC */	addi r4, r4, DecrementerExceptionHandler@l
/* 800ED0D8 000E7FD8  7C 03 20 40 */	cmplw r3, r4
/* 800ED0DC 000E7FDC  41 82 00 28 */	beq lbl_800ED104
/* 800ED0E0 000E7FE0  38 00 00 00 */	li r0, 0
/* 800ED0E4 000E7FE4  38 6D 9B D0 */	addi r3, r13, AlarmQueue-_SDA_BASE_
/* 800ED0E8 000E7FE8  90 03 00 04 */	stw r0, 4(r3)
/* 800ED0EC 000E7FEC  38 60 00 08 */	li r3, 8
/* 800ED0F0 000E7FF0  90 0D 9B D0 */	stw r0, AlarmQueue-_SDA_BASE_(r13)
/* 800ED0F4 000E7FF4  4B FF FD D1 */	bl __OSSetExceptionHandler
/* 800ED0F8 000E7FF8  3C 60 80 3A */	lis r3, ShutdownFunctionInfo@ha
/* 800ED0FC 000E7FFC  38 63 BE E0 */	addi r3, r3, ShutdownFunctionInfo@l
/* 800ED100 000E8000  48 00 5D 49 */	bl func_800F2E48
lbl_800ED104:
/* 800ED104 000E8004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED108 000E8008  7C 08 03 A6 */	mtlr r0
/* 800ED10C 000E800C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED110 000E8010  4E 80 00 20 */	blr 

.global OSCreateAlarm
OSCreateAlarm:
/* 800ED114 000E8014  38 00 00 00 */	li r0, 0
/* 800ED118 000E8018  90 03 00 00 */	stw r0, 0(r3)
/* 800ED11C 000E801C  90 03 00 04 */	stw r0, 4(r3)
/* 800ED120 000E8020  4E 80 00 20 */	blr 

.global InsertAlarm
InsertAlarm:
/* 800ED124 000E8024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800ED128 000E8028  7C 08 02 A6 */	mflr r0
/* 800ED12C 000E802C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800ED130 000E8030  39 61 00 30 */	addi r11, r1, 0x30
/* 800ED134 000E8034  4B FC 4C 09 */	bl _savegpr_25
/* 800ED138 000E8038  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800ED13C 000E803C  3B A0 00 00 */	li r29, 0
/* 800ED140 000E8040  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 800ED144 000E8044  7C 7E 1B 78 */	mr r30, r3
/* 800ED148 000E8048  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 800ED14C 000E804C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 800ED150 000E8050  7C 68 E8 10 */	subfc r3, r8, r29
/* 800ED154 000E8054  7C FF 3B 78 */	mr r31, r7
/* 800ED158 000E8058  7C 84 01 10 */	subfe r4, r4, r0
/* 800ED15C 000E805C  7C 80 01 10 */	subfe r4, r0, r0
/* 800ED160 000E8060  7C 84 00 D1 */	neg. r4, r4
/* 800ED164 000E8064  41 82 00 7C */	beq lbl_800ED1E0
/* 800ED168 000E8068  48 00 84 BD */	bl func_800F5624
/* 800ED16C 000E806C  83 9E 00 20 */	lwz r28, 0x20(r30)
/* 800ED170 000E8070  6C 67 80 00 */	xoris r7, r3, 0x8000
/* 800ED174 000E8074  83 7E 00 24 */	lwz r27, 0x24(r30)
/* 800ED178 000E8078  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 800ED17C 000E807C  7F 85 E3 78 */	mr r5, r28
/* 800ED180 000E8080  7C C4 D8 10 */	subfc r6, r4, r27
/* 800ED184 000E8084  7C E7 01 10 */	subfe r7, r7, r0
/* 800ED188 000E8088  7C E0 01 10 */	subfe r7, r0, r0
/* 800ED18C 000E808C  7F 66 DB 78 */	mr r6, r27
/* 800ED190 000E8090  7C E7 00 D1 */	neg. r7, r7
/* 800ED194 000E8094  41 82 00 4C */	beq lbl_800ED1E0
/* 800ED198 000E8098  83 5E 00 18 */	lwz r26, 0x18(r30)
/* 800ED19C 000E809C  7C 9B 20 10 */	subfc r4, r27, r4
/* 800ED1A0 000E80A0  83 3E 00 1C */	lwz r25, 0x1c(r30)
/* 800ED1A4 000E80A4  7C 7C 19 10 */	subfe r3, r28, r3
/* 800ED1A8 000E80A8  7F 45 D3 78 */	mr r5, r26
/* 800ED1AC 000E80AC  7F 26 CB 78 */	mr r6, r25
/* 800ED1B0 000E80B0  4B FC 4C E5 */	bl __div2i
/* 800ED1B4 000E80B4  38 00 00 01 */	li r0, 1
/* 800ED1B8 000E80B8  7C 84 00 14 */	addc r4, r4, r0
/* 800ED1BC 000E80BC  7C 19 20 16 */	mulhwu r0, r25, r4
/* 800ED1C0 000E80C0  7C A3 E9 14 */	adde r5, r3, r29
/* 800ED1C4 000E80C4  7C 7A 21 D6 */	mullw r3, r26, r4
/* 800ED1C8 000E80C8  7C 99 21 D6 */	mullw r4, r25, r4
/* 800ED1CC 000E80CC  7C 60 1A 14 */	add r3, r0, r3
/* 800ED1D0 000E80D0  7C 19 29 D6 */	mullw r0, r25, r5
/* 800ED1D4 000E80D4  7C DB 20 14 */	addc r6, r27, r4
/* 800ED1D8 000E80D8  7C 03 02 14 */	add r0, r3, r0
/* 800ED1DC 000E80DC  7C BC 01 14 */	adde r5, r28, r0
lbl_800ED1E0:
/* 800ED1E0 000E80E0  93 FE 00 00 */	stw r31, 0(r30)
/* 800ED1E4 000E80E4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800ED1E8 000E80E8  90 DE 00 0C */	stw r6, 0xc(r30)
/* 800ED1EC 000E80EC  90 BE 00 08 */	stw r5, 8(r30)
/* 800ED1F0 000E80F0  80 ED 9B D0 */	lwz r7, AlarmQueue-_SDA_BASE_(r13)
/* 800ED1F4 000E80F4  48 00 00 C4 */	b lbl_800ED2B8
lbl_800ED1F8:
/* 800ED1F8 000E80F8  80 67 00 08 */	lwz r3, 8(r7)
/* 800ED1FC 000E80FC  80 A7 00 0C */	lwz r5, 0xc(r7)
/* 800ED200 000E8100  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800ED204 000E8104  7C 65 30 10 */	subfc r3, r5, r6
/* 800ED208 000E8108  7C 84 01 10 */	subfe r4, r4, r0
/* 800ED20C 000E810C  7C 80 01 10 */	subfe r4, r0, r0
/* 800ED210 000E8110  7C 84 00 D1 */	neg. r4, r4
/* 800ED214 000E8114  41 82 00 A0 */	beq lbl_800ED2B4
/* 800ED218 000E8118  80 07 00 10 */	lwz r0, 0x10(r7)
/* 800ED21C 000E811C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800ED220 000E8120  93 C7 00 10 */	stw r30, 0x10(r7)
/* 800ED224 000E8124  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800ED228 000E8128  90 FE 00 14 */	stw r7, 0x14(r30)
/* 800ED22C 000E812C  2C 03 00 00 */	cmpwi r3, 0
/* 800ED230 000E8130  41 82 00 0C */	beq lbl_800ED23C
/* 800ED234 000E8134  93 C3 00 14 */	stw r30, 0x14(r3)
/* 800ED238 000E8138  48 00 01 24 */	b lbl_800ED35C
lbl_800ED23C:
/* 800ED23C 000E813C  93 CD 9B D0 */	stw r30, AlarmQueue-_SDA_BASE_(r13)
/* 800ED240 000E8140  48 00 83 E5 */	bl func_800F5624
/* 800ED244 000E8144  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800ED248 000E8148  38 E0 00 00 */	li r7, 0
/* 800ED24C 000E814C  80 1E 00 08 */	lwz r0, 8(r30)
/* 800ED250 000E8150  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800ED254 000E8154  7D 04 28 10 */	subfc r8, r4, r5
/* 800ED258 000E8158  7C 03 01 10 */	subfe r0, r3, r0
/* 800ED25C 000E815C  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800ED260 000E8160  7C 07 40 10 */	subfc r0, r7, r8
/* 800ED264 000E8164  7C C6 29 10 */	subfe r6, r6, r5
/* 800ED268 000E8168  7C C5 29 10 */	subfe r6, r5, r5
/* 800ED26C 000E816C  7C C6 00 D1 */	neg. r6, r6
/* 800ED270 000E8170  41 82 00 10 */	beq lbl_800ED280
/* 800ED274 000E8174  38 60 00 00 */	li r3, 0
/* 800ED278 000E8178  48 01 D7 D1 */	bl func_8010AA48
/* 800ED27C 000E817C  48 00 00 E0 */	b lbl_800ED35C
lbl_800ED280:
/* 800ED280 000E8180  3C 80 80 00 */	lis r4, 0x8000
/* 800ED284 000E8184  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800ED288 000E8188  7C 04 40 10 */	subfc r0, r4, r8
/* 800ED28C 000E818C  7C 63 29 10 */	subfe r3, r3, r5
/* 800ED290 000E8190  7C 65 29 10 */	subfe r3, r5, r5
/* 800ED294 000E8194  7C 63 00 D1 */	neg. r3, r3
/* 800ED298 000E8198  41 82 00 10 */	beq lbl_800ED2A8
/* 800ED29C 000E819C  7D 03 43 78 */	mr r3, r8
/* 800ED2A0 000E81A0  48 01 D7 A9 */	bl func_8010AA48
/* 800ED2A4 000E81A4  48 00 00 B8 */	b lbl_800ED35C
lbl_800ED2A8:
/* 800ED2A8 000E81A8  38 64 FF FF */	addi r3, r4, -1
/* 800ED2AC 000E81AC  48 01 D7 9D */	bl func_8010AA48
/* 800ED2B0 000E81B0  48 00 00 AC */	b lbl_800ED35C
lbl_800ED2B4:
/* 800ED2B4 000E81B4  80 E7 00 14 */	lwz r7, 0x14(r7)
lbl_800ED2B8:
/* 800ED2B8 000E81B8  2C 07 00 00 */	cmpwi r7, 0
/* 800ED2BC 000E81BC  40 82 FF 3C */	bne lbl_800ED1F8
/* 800ED2C0 000E81C0  3B E0 00 00 */	li r31, 0
/* 800ED2C4 000E81C4  38 6D 9B D0 */	addi r3, r13, AlarmQueue-_SDA_BASE_
/* 800ED2C8 000E81C8  93 FE 00 14 */	stw r31, 0x14(r30)
/* 800ED2CC 000E81CC  80 83 00 04 */	lwz r4, 4(r3)
/* 800ED2D0 000E81D0  93 C3 00 04 */	stw r30, 4(r3)
/* 800ED2D4 000E81D4  2C 04 00 00 */	cmpwi r4, 0
/* 800ED2D8 000E81D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 800ED2DC 000E81DC  41 82 00 0C */	beq lbl_800ED2E8
/* 800ED2E0 000E81E0  93 C4 00 14 */	stw r30, 0x14(r4)
/* 800ED2E4 000E81E4  48 00 00 78 */	b lbl_800ED35C
lbl_800ED2E8:
/* 800ED2E8 000E81E8  93 C3 00 04 */	stw r30, 4(r3)
/* 800ED2EC 000E81EC  93 CD 9B D0 */	stw r30, AlarmQueue-_SDA_BASE_(r13)
/* 800ED2F0 000E81F0  48 00 83 35 */	bl func_800F5624
/* 800ED2F4 000E81F4  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800ED2F8 000E81F8  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 800ED2FC 000E81FC  80 1E 00 08 */	lwz r0, 8(r30)
/* 800ED300 000E8200  7C E4 28 10 */	subfc r7, r4, r5
/* 800ED304 000E8204  7C 03 01 10 */	subfe r0, r3, r0
/* 800ED308 000E8208  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800ED30C 000E820C  7C 1F 38 10 */	subfc r0, r31, r7
/* 800ED310 000E8210  7C C6 29 10 */	subfe r6, r6, r5
/* 800ED314 000E8214  7C C5 29 10 */	subfe r6, r5, r5
/* 800ED318 000E8218  7C C6 00 D1 */	neg. r6, r6
/* 800ED31C 000E821C  41 82 00 10 */	beq lbl_800ED32C
/* 800ED320 000E8220  38 60 00 00 */	li r3, 0
/* 800ED324 000E8224  48 01 D7 25 */	bl func_8010AA48
/* 800ED328 000E8228  48 00 00 34 */	b lbl_800ED35C
lbl_800ED32C:
/* 800ED32C 000E822C  3C 80 80 00 */	lis r4, 0x8000
/* 800ED330 000E8230  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 800ED334 000E8234  7C 04 38 10 */	subfc r0, r4, r7
/* 800ED338 000E8238  7C 63 29 10 */	subfe r3, r3, r5
/* 800ED33C 000E823C  7C 65 29 10 */	subfe r3, r5, r5
/* 800ED340 000E8240  7C 63 00 D1 */	neg. r3, r3
/* 800ED344 000E8244  41 82 00 10 */	beq lbl_800ED354
/* 800ED348 000E8248  7C E3 3B 78 */	mr r3, r7
/* 800ED34C 000E824C  48 01 D6 FD */	bl func_8010AA48
/* 800ED350 000E8250  48 00 00 0C */	b lbl_800ED35C
lbl_800ED354:
/* 800ED354 000E8254  38 64 FF FF */	addi r3, r4, -1
/* 800ED358 000E8258  48 01 D6 F1 */	bl func_8010AA48
lbl_800ED35C:
/* 800ED35C 000E825C  39 61 00 30 */	addi r11, r1, 0x30
/* 800ED360 000E8260  4B FC 4A 29 */	bl _restgpr_25
/* 800ED364 000E8264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800ED368 000E8268  7C 08 03 A6 */	mtlr r0
/* 800ED36C 000E826C  38 21 00 30 */	addi r1, r1, 0x30
/* 800ED370 000E8270  4E 80 00 20 */	blr 

.global OSSetAlarm
OSSetAlarm:
/* 800ED374 000E8274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED378 000E8278  7C 08 02 A6 */	mflr r0
/* 800ED37C 000E827C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED380 000E8280  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED384 000E8284  4B FC 49 C1 */	bl _savegpr_27
/* 800ED388 000E8288  7C 7B 1B 78 */	mr r27, r3
/* 800ED38C 000E828C  7C BD 2B 78 */	mr r29, r5
/* 800ED390 000E8290  7C DC 33 78 */	mr r28, r6
/* 800ED394 000E8294  7C FE 3B 78 */	mr r30, r7
/* 800ED398 000E8298  48 00 45 29 */	bl OSDisableInterrupts
/* 800ED39C 000E829C  38 00 00 00 */	li r0, 0
/* 800ED3A0 000E82A0  7C 7F 1B 78 */	mr r31, r3
/* 800ED3A4 000E82A4  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 800ED3A8 000E82A8  90 1B 00 18 */	stw r0, 0x18(r27)
/* 800ED3AC 000E82AC  48 00 82 79 */	bl func_800F5624
/* 800ED3B0 000E82B0  7C DC 20 14 */	addc r6, r28, r4
/* 800ED3B4 000E82B4  7F C7 F3 78 */	mr r7, r30
/* 800ED3B8 000E82B8  7C BD 19 14 */	adde r5, r29, r3
/* 800ED3BC 000E82BC  7F 63 DB 78 */	mr r3, r27
/* 800ED3C0 000E82C0  4B FF FD 65 */	bl InsertAlarm
/* 800ED3C4 000E82C4  7F E3 FB 78 */	mr r3, r31
/* 800ED3C8 000E82C8  48 00 45 21 */	bl OSRestoreInterrupts
/* 800ED3CC 000E82CC  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED3D0 000E82D0  4B FC 49 C1 */	bl _restgpr_27
/* 800ED3D4 000E82D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED3D8 000E82D8  7C 08 03 A6 */	mtlr r0
/* 800ED3DC 000E82DC  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED3E0 000E82E0  4E 80 00 20 */	blr 

.global OSSetPeriodicAlarm
OSSetPeriodicAlarm:
/* 800ED3E4 000E82E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED3E8 000E82E8  7C 08 02 A6 */	mflr r0
/* 800ED3EC 000E82EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED3F0 000E82F0  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED3F4 000E82F4  4B FC 49 4D */	bl _savegpr_26
/* 800ED3F8 000E82F8  7C 7A 1B 78 */	mr r26, r3
/* 800ED3FC 000E82FC  7C BC 2B 78 */	mr r28, r5
/* 800ED400 000E8300  7C DB 33 78 */	mr r27, r6
/* 800ED404 000E8304  7C FD 3B 78 */	mr r29, r7
/* 800ED408 000E8308  7D 1F 43 78 */	mr r31, r8
/* 800ED40C 000E830C  7D 3E 4B 78 */	mr r30, r9
/* 800ED410 000E8310  48 00 44 B1 */	bl OSDisableInterrupts
/* 800ED414 000E8314  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 800ED418 000E8318  7C 7F 1B 78 */	mr r31, r3
/* 800ED41C 000E831C  7F 64 DB 78 */	mr r4, r27
/* 800ED420 000E8320  7F 83 E3 78 */	mr r3, r28
/* 800ED424 000E8324  93 BA 00 18 */	stw r29, 0x18(r26)
/* 800ED428 000E8328  48 00 82 61 */	bl func_800F5688
/* 800ED42C 000E832C  90 7A 00 20 */	stw r3, 0x20(r26)
/* 800ED430 000E8330  7F 43 D3 78 */	mr r3, r26
/* 800ED434 000E8334  7F C7 F3 78 */	mr r7, r30
/* 800ED438 000E8338  38 C0 00 00 */	li r6, 0
/* 800ED43C 000E833C  90 9A 00 24 */	stw r4, 0x24(r26)
/* 800ED440 000E8340  38 A0 00 00 */	li r5, 0
/* 800ED444 000E8344  4B FF FC E1 */	bl InsertAlarm
/* 800ED448 000E8348  7F E3 FB 78 */	mr r3, r31
/* 800ED44C 000E834C  48 00 44 9D */	bl OSRestoreInterrupts
/* 800ED450 000E8350  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED454 000E8354  4B FC 49 39 */	bl _restgpr_26
/* 800ED458 000E8358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED45C 000E835C  7C 08 03 A6 */	mtlr r0
/* 800ED460 000E8360  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED464 000E8364  4E 80 00 20 */	blr 

.global OSCancelAlarm
OSCancelAlarm:
/* 800ED468 000E8368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED46C 000E836C  7C 08 02 A6 */	mflr r0
/* 800ED470 000E8370  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED474 000E8374  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800ED478 000E8378  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800ED47C 000E837C  7C 7E 1B 78 */	mr r30, r3
/* 800ED480 000E8380  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800ED484 000E8384  48 00 44 3D */	bl OSDisableInterrupts
/* 800ED488 000E8388  80 1E 00 00 */	lwz r0, 0(r30)
/* 800ED48C 000E838C  7C 7F 1B 78 */	mr r31, r3
/* 800ED490 000E8390  2C 00 00 00 */	cmpwi r0, 0
/* 800ED494 000E8394  40 82 00 0C */	bne lbl_800ED4A0
/* 800ED498 000E8398  48 00 44 51 */	bl OSRestoreInterrupts
/* 800ED49C 000E839C  48 00 00 C8 */	b lbl_800ED564
lbl_800ED4A0:
/* 800ED4A0 000E83A0  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 800ED4A4 000E83A4  2C 1D 00 00 */	cmpwi r29, 0
/* 800ED4A8 000E83A8  40 82 00 14 */	bne lbl_800ED4BC
/* 800ED4AC 000E83AC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800ED4B0 000E83B0  38 6D 9B D0 */	addi r3, r13, AlarmQueue-_SDA_BASE_
/* 800ED4B4 000E83B4  90 03 00 04 */	stw r0, 4(r3)
/* 800ED4B8 000E83B8  48 00 00 0C */	b lbl_800ED4C4
lbl_800ED4BC:
/* 800ED4BC 000E83BC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800ED4C0 000E83C0  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_800ED4C4:
/* 800ED4C4 000E83C4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800ED4C8 000E83C8  2C 03 00 00 */	cmpwi r3, 0
/* 800ED4CC 000E83CC  41 82 00 0C */	beq lbl_800ED4D8
/* 800ED4D0 000E83D0  93 A3 00 14 */	stw r29, 0x14(r3)
/* 800ED4D4 000E83D4  48 00 00 80 */	b lbl_800ED554
lbl_800ED4D8:
/* 800ED4D8 000E83D8  2C 1D 00 00 */	cmpwi r29, 0
/* 800ED4DC 000E83DC  93 AD 9B D0 */	stw r29, AlarmQueue-_SDA_BASE_(r13)
/* 800ED4E0 000E83E0  41 82 00 74 */	beq lbl_800ED554
/* 800ED4E4 000E83E4  48 00 81 41 */	bl func_800F5624
/* 800ED4E8 000E83E8  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 800ED4EC 000E83EC  38 E0 00 00 */	li r7, 0
/* 800ED4F0 000E83F0  80 1D 00 08 */	lwz r0, 8(r29)
/* 800ED4F4 000E83F4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800ED4F8 000E83F8  7D 04 28 10 */	subfc r8, r4, r5
/* 800ED4FC 000E83FC  7C 03 01 10 */	subfe r0, r3, r0
/* 800ED500 000E8400  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800ED504 000E8404  7C 07 40 10 */	subfc r0, r7, r8
/* 800ED508 000E8408  7C C6 29 10 */	subfe r6, r6, r5
/* 800ED50C 000E840C  7C C5 29 10 */	subfe r6, r5, r5
/* 800ED510 000E8410  7C C6 00 D1 */	neg. r6, r6
/* 800ED514 000E8414  41 82 00 10 */	beq lbl_800ED524
/* 800ED518 000E8418  38 60 00 00 */	li r3, 0
/* 800ED51C 000E841C  48 01 D5 2D */	bl func_8010AA48
/* 800ED520 000E8420  48 00 00 34 */	b lbl_800ED554
lbl_800ED524:
/* 800ED524 000E8424  3C 80 80 00 */	lis r4, 0x8000
/* 800ED528 000E8428  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800ED52C 000E842C  7C 04 40 10 */	subfc r0, r4, r8
/* 800ED530 000E8430  7C 63 29 10 */	subfe r3, r3, r5
/* 800ED534 000E8434  7C 65 29 10 */	subfe r3, r5, r5
/* 800ED538 000E8438  7C 63 00 D1 */	neg. r3, r3
/* 800ED53C 000E843C  41 82 00 10 */	beq lbl_800ED54C
/* 800ED540 000E8440  7D 03 43 78 */	mr r3, r8
/* 800ED544 000E8444  48 01 D5 05 */	bl func_8010AA48
/* 800ED548 000E8448  48 00 00 0C */	b lbl_800ED554
lbl_800ED54C:
/* 800ED54C 000E844C  38 64 FF FF */	addi r3, r4, -1
/* 800ED550 000E8450  48 01 D4 F9 */	bl func_8010AA48
lbl_800ED554:
/* 800ED554 000E8454  38 00 00 00 */	li r0, 0
/* 800ED558 000E8458  7F E3 FB 78 */	mr r3, r31
/* 800ED55C 000E845C  90 1E 00 00 */	stw r0, 0(r30)
/* 800ED560 000E8460  48 00 43 89 */	bl OSRestoreInterrupts
lbl_800ED564:
/* 800ED564 000E8464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED568 000E8468  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800ED56C 000E846C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800ED570 000E8470  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800ED574 000E8474  7C 08 03 A6 */	mtlr r0
/* 800ED578 000E8478  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED57C 000E847C  4E 80 00 20 */	blr 

.global DecrementerExceptionCallback
DecrementerExceptionCallback:
/* 800ED580 000E8480  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800ED584 000E8484  7C 08 02 A6 */	mflr r0
/* 800ED588 000E8488  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800ED58C 000E848C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800ED590 000E8490  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 800ED594 000E8494  93 A1 02 D4 */	stw r29, 0x2d4(r1)
/* 800ED598 000E8498  7C 9D 23 78 */	mr r29, r4
/* 800ED59C 000E849C  93 81 02 D0 */	stw r28, 0x2d0(r1)
/* 800ED5A0 000E84A0  48 00 80 85 */	bl func_800F5624
/* 800ED5A4 000E84A4  83 ED 9B D0 */	lwz r31, AlarmQueue-_SDA_BASE_(r13)
/* 800ED5A8 000E84A8  7C 9C 23 78 */	mr r28, r4
/* 800ED5AC 000E84AC  7C 7E 1B 78 */	mr r30, r3
/* 800ED5B0 000E84B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800ED5B4 000E84B4  40 82 00 0C */	bne lbl_800ED5C0
/* 800ED5B8 000E84B8  7F A3 EB 78 */	mr r3, r29
/* 800ED5BC 000E84BC  48 00 14 A1 */	bl OSLoadContext
lbl_800ED5C0:
/* 800ED5C0 000E84C0  80 7F 00 08 */	lwz r3, 8(r31)
/* 800ED5C4 000E84C4  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 800ED5C8 000E84C8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800ED5CC 000E84CC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800ED5D0 000E84D0  7C 65 E0 10 */	subfc r3, r5, r28
/* 800ED5D4 000E84D4  7C 84 01 10 */	subfe r4, r4, r0
/* 800ED5D8 000E84D8  7C 80 01 10 */	subfe r4, r0, r0
/* 800ED5DC 000E84DC  7C 84 00 D1 */	neg. r4, r4
/* 800ED5E0 000E84E0  41 82 00 7C */	beq lbl_800ED65C
/* 800ED5E4 000E84E4  48 00 80 41 */	bl func_800F5624
/* 800ED5E8 000E84E8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800ED5EC 000E84EC  38 E0 00 00 */	li r7, 0
/* 800ED5F0 000E84F0  80 1F 00 08 */	lwz r0, 8(r31)
/* 800ED5F4 000E84F4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800ED5F8 000E84F8  7D 04 28 10 */	subfc r8, r4, r5
/* 800ED5FC 000E84FC  7C 03 01 10 */	subfe r0, r3, r0
/* 800ED600 000E8500  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800ED604 000E8504  7C 07 40 10 */	subfc r0, r7, r8
/* 800ED608 000E8508  7C C6 29 10 */	subfe r6, r6, r5
/* 800ED60C 000E850C  7C C5 29 10 */	subfe r6, r5, r5
/* 800ED610 000E8510  7C C6 00 D1 */	neg. r6, r6
/* 800ED614 000E8514  41 82 00 10 */	beq lbl_800ED624
/* 800ED618 000E8518  38 60 00 00 */	li r3, 0
/* 800ED61C 000E851C  48 01 D4 2D */	bl func_8010AA48
/* 800ED620 000E8520  48 00 00 34 */	b lbl_800ED654
lbl_800ED624:
/* 800ED624 000E8524  3C 80 80 00 */	lis r4, 0x8000
/* 800ED628 000E8528  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800ED62C 000E852C  7C 04 40 10 */	subfc r0, r4, r8
/* 800ED630 000E8530  7C 63 29 10 */	subfe r3, r3, r5
/* 800ED634 000E8534  7C 65 29 10 */	subfe r3, r5, r5
/* 800ED638 000E8538  7C 63 00 D1 */	neg. r3, r3
/* 800ED63C 000E853C  41 82 00 10 */	beq lbl_800ED64C
/* 800ED640 000E8540  7D 03 43 78 */	mr r3, r8
/* 800ED644 000E8544  48 01 D4 05 */	bl func_8010AA48
/* 800ED648 000E8548  48 00 00 0C */	b lbl_800ED654
lbl_800ED64C:
/* 800ED64C 000E854C  38 64 FF FF */	addi r3, r4, -1
/* 800ED650 000E8550  48 01 D3 F9 */	bl func_8010AA48
lbl_800ED654:
/* 800ED654 000E8554  7F A3 EB 78 */	mr r3, r29
/* 800ED658 000E8558  48 00 14 05 */	bl OSLoadContext
lbl_800ED65C:
/* 800ED65C 000E855C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800ED660 000E8560  2C 03 00 00 */	cmpwi r3, 0
/* 800ED664 000E8564  90 6D 9B D0 */	stw r3, AlarmQueue-_SDA_BASE_(r13)
/* 800ED668 000E8568  40 82 00 14 */	bne lbl_800ED67C
/* 800ED66C 000E856C  38 00 00 00 */	li r0, 0
/* 800ED670 000E8570  38 6D 9B D0 */	addi r3, r13, AlarmQueue-_SDA_BASE_
/* 800ED674 000E8574  90 03 00 04 */	stw r0, 4(r3)
/* 800ED678 000E8578  48 00 00 0C */	b lbl_800ED684
lbl_800ED67C:
/* 800ED67C 000E857C  38 00 00 00 */	li r0, 0
/* 800ED680 000E8580  90 03 00 10 */	stw r0, 0x10(r3)
lbl_800ED684:
/* 800ED684 000E8584  83 DF 00 00 */	lwz r30, 0(r31)
/* 800ED688 000E8588  38 C0 00 00 */	li r6, 0
/* 800ED68C 000E858C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800ED690 000E8590  90 DF 00 00 */	stw r6, 0(r31)
/* 800ED694 000E8594  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800ED698 000E8598  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800ED69C 000E859C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800ED6A0 000E85A0  7C 65 30 10 */	subfc r3, r5, r6
/* 800ED6A4 000E85A4  7C 84 01 10 */	subfe r4, r4, r0
/* 800ED6A8 000E85A8  7C 80 01 10 */	subfe r4, r0, r0
/* 800ED6AC 000E85AC  7C 84 00 D1 */	neg. r4, r4
/* 800ED6B0 000E85B0  41 82 00 18 */	beq lbl_800ED6C8
/* 800ED6B4 000E85B4  7F E3 FB 78 */	mr r3, r31
/* 800ED6B8 000E85B8  7F C7 F3 78 */	mr r7, r30
/* 800ED6BC 000E85BC  38 C0 00 00 */	li r6, 0
/* 800ED6C0 000E85C0  38 A0 00 00 */	li r5, 0
/* 800ED6C4 000E85C4  4B FF FA 61 */	bl InsertAlarm
lbl_800ED6C8:
/* 800ED6C8 000E85C8  83 8D 9B D0 */	lwz r28, AlarmQueue-_SDA_BASE_(r13)
/* 800ED6CC 000E85CC  2C 1C 00 00 */	cmpwi r28, 0
/* 800ED6D0 000E85D0  41 82 00 74 */	beq lbl_800ED744
/* 800ED6D4 000E85D4  48 00 7F 51 */	bl func_800F5624
/* 800ED6D8 000E85D8  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 800ED6DC 000E85DC  38 E0 00 00 */	li r7, 0
/* 800ED6E0 000E85E0  80 1C 00 08 */	lwz r0, 8(r28)
/* 800ED6E4 000E85E4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800ED6E8 000E85E8  7D 04 28 10 */	subfc r8, r4, r5
/* 800ED6EC 000E85EC  7C 03 01 10 */	subfe r0, r3, r0
/* 800ED6F0 000E85F0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800ED6F4 000E85F4  7C 07 40 10 */	subfc r0, r7, r8
/* 800ED6F8 000E85F8  7C C6 29 10 */	subfe r6, r6, r5
/* 800ED6FC 000E85FC  7C C5 29 10 */	subfe r6, r5, r5
/* 800ED700 000E8600  7C C6 00 D1 */	neg. r6, r6
/* 800ED704 000E8604  41 82 00 10 */	beq lbl_800ED714
/* 800ED708 000E8608  38 60 00 00 */	li r3, 0
/* 800ED70C 000E860C  48 01 D3 3D */	bl func_8010AA48
/* 800ED710 000E8610  48 00 00 34 */	b lbl_800ED744
lbl_800ED714:
/* 800ED714 000E8614  3C 80 80 00 */	lis r4, 0x8000
/* 800ED718 000E8618  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800ED71C 000E861C  7C 04 40 10 */	subfc r0, r4, r8
/* 800ED720 000E8620  7C 63 29 10 */	subfe r3, r3, r5
/* 800ED724 000E8624  7C 65 29 10 */	subfe r3, r5, r5
/* 800ED728 000E8628  7C 63 00 D1 */	neg. r3, r3
/* 800ED72C 000E862C  41 82 00 10 */	beq lbl_800ED73C
/* 800ED730 000E8630  7D 03 43 78 */	mr r3, r8
/* 800ED734 000E8634  48 01 D3 15 */	bl func_8010AA48
/* 800ED738 000E8638  48 00 00 0C */	b lbl_800ED744
lbl_800ED73C:
/* 800ED73C 000E863C  38 64 FF FF */	addi r3, r4, -1
/* 800ED740 000E8640  48 01 D3 09 */	bl func_8010AA48
lbl_800ED744:
/* 800ED744 000E8644  48 00 6A 4D */	bl func_800F4190
/* 800ED748 000E8648  38 61 00 08 */	addi r3, r1, 8
/* 800ED74C 000E864C  48 00 14 51 */	bl OSClearContext
/* 800ED750 000E8650  38 61 00 08 */	addi r3, r1, 8
/* 800ED754 000E8654  48 00 12 21 */	bl OSSetCurrentContext
/* 800ED758 000E8658  7F CC F3 78 */	mr r12, r30
/* 800ED75C 000E865C  7F E3 FB 78 */	mr r3, r31
/* 800ED760 000E8660  7F A4 EB 78 */	mr r4, r29
/* 800ED764 000E8664  7D 89 03 A6 */	mtctr r12
/* 800ED768 000E8668  4E 80 04 21 */	bctrl 
/* 800ED76C 000E866C  38 61 00 08 */	addi r3, r1, 8
/* 800ED770 000E8670  48 00 14 2D */	bl OSClearContext
/* 800ED774 000E8674  7F A3 EB 78 */	mr r3, r29
/* 800ED778 000E8678  48 00 11 FD */	bl OSSetCurrentContext
/* 800ED77C 000E867C  48 00 6A 51 */	bl func_800F41CC
/* 800ED780 000E8680  48 00 6F 59 */	bl func_800F46D8
/* 800ED784 000E8684  7F A3 EB 78 */	mr r3, r29
/* 800ED788 000E8688  48 00 12 D5 */	bl OSLoadContext
/* 800ED78C 000E868C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800ED790 000E8690  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800ED794 000E8694  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 800ED798 000E8698  83 A1 02 D4 */	lwz r29, 0x2d4(r1)
/* 800ED79C 000E869C  83 81 02 D0 */	lwz r28, 0x2d0(r1)
/* 800ED7A0 000E86A0  7C 08 03 A6 */	mtlr r0
/* 800ED7A4 000E86A4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800ED7A8 000E86A8  4E 80 00 20 */	blr 

.global DecrementerExceptionHandler
DecrementerExceptionHandler:
/* 800ED7AC 000E86AC  90 04 00 00 */	stw r0, 0(r4)
/* 800ED7B0 000E86B0  90 24 00 04 */	stw r1, 4(r4)
/* 800ED7B4 000E86B4  90 44 00 08 */	stw r2, 8(r4)
/* 800ED7B8 000E86B8  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 800ED7BC 000E86BC  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800ED7C0 000E86C0  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 800ED7C4 000E86C4  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800ED7C8 000E86C8  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 800ED7CC 000E86CC  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800ED7D0 000E86D0  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 800ED7D4 000E86D4  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800ED7D8 000E86D8  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 800ED7DC 000E86DC  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800ED7E0 000E86E0  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 800ED7E4 000E86E4  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800ED7E8 000E86E8  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 800ED7EC 000E86EC  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800ED7F0 000E86F0  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 800ED7F4 000E86F4  94 21 FF F8 */	stwu r1, -8(r1)
/* 800ED7F8 000E86F8  4B FF FD 88 */	b DecrementerExceptionCallback

.global OSSetAlarmTag
OSSetAlarmTag:
/* 800ED7FC 000E86FC  90 83 00 04 */	stw r4, 4(r3)
/* 800ED800 000E8700  4E 80 00 20 */	blr 

.global OnReset
OnReset:
/* 800ED804 000E8704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED808 000E8708  7C 08 02 A6 */	mflr r0
/* 800ED80C 000E870C  2C 03 00 00 */	cmpwi r3, 0
/* 800ED810 000E8710  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED814 000E8714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED818 000E8718  93 C1 00 08 */	stw r30, 8(r1)
/* 800ED81C 000E871C  41 82 00 58 */	beq lbl_800ED874
/* 800ED820 000E8720  83 ED 9B D0 */	lwz r31, AlarmQueue-_SDA_BASE_(r13)
/* 800ED824 000E8724  2C 1F 00 00 */	cmpwi r31, 0
/* 800ED828 000E8728  41 82 00 0C */	beq lbl_800ED834
/* 800ED82C 000E872C  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 800ED830 000E8730  48 00 00 3C */	b lbl_800ED86C
lbl_800ED834:
/* 800ED834 000E8734  3B C0 00 00 */	li r30, 0
/* 800ED838 000E8738  48 00 00 34 */	b lbl_800ED86C
lbl_800ED83C:
/* 800ED83C 000E873C  7F E3 FB 78 */	mr r3, r31
/* 800ED840 000E8740  48 05 0B 71 */	bl func_8013E3B0
/* 800ED844 000E8744  2C 03 00 00 */	cmpwi r3, 0
/* 800ED848 000E8748  40 82 00 0C */	bne lbl_800ED854
/* 800ED84C 000E874C  7F E3 FB 78 */	mr r3, r31
/* 800ED850 000E8750  4B FF FC 19 */	bl OSCancelAlarm
lbl_800ED854:
/* 800ED854 000E8754  2C 1E 00 00 */	cmpwi r30, 0
/* 800ED858 000E8758  7F DF F3 78 */	mr r31, r30
/* 800ED85C 000E875C  41 82 00 0C */	beq lbl_800ED868
/* 800ED860 000E8760  83 DE 00 14 */	lwz r30, 0x14(r30)
/* 800ED864 000E8764  48 00 00 08 */	b lbl_800ED86C
lbl_800ED868:
/* 800ED868 000E8768  3B C0 00 00 */	li r30, 0
lbl_800ED86C:
/* 800ED86C 000E876C  2C 1F 00 00 */	cmpwi r31, 0
/* 800ED870 000E8770  40 82 FF CC */	bne lbl_800ED83C
lbl_800ED874:
/* 800ED874 000E8774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED878 000E8778  38 60 00 01 */	li r3, 1
/* 800ED87C 000E877C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ED880 000E8780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED884 000E8784  7C 08 03 A6 */	mtlr r0
/* 800ED888 000E8788  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED88C 000E878C  4E 80 00 20 */	blr 

.global OSSetAlarmUserData
OSSetAlarmUserData:
/* 800ED890 000E8790  90 83 00 28 */	stw r4, 0x28(r3)
/* 800ED894 000E8794  4E 80 00 20 */	blr 

.global OSGetAlarmUserData
OSGetAlarmUserData:
/* 800ED898 000E8798  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800ED89C 000E879C  4E 80 00 20 */	blr 
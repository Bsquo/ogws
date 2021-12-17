.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global sManualProjectionMapMode__Q23EGG10G3DUtility
sManualProjectionMapMode__Q23EGG10G3DUtility:
	.skip 0x4
.global sAllocator__Q23EGG10G3DUtility
sAllocator__Q23EGG10G3DUtility:
	.skip 0x4
.global sTempMem__Q23EGG10G3DUtility
sTempMem__Q23EGG10G3DUtility:
	.skip 0x4
.global sTempMemIndex__Q23EGG10G3DUtility
sTempMemIndex__Q23EGG10G3DUtility:
	.skip 0x4
.global sTempMemSize__Q23EGG10G3DUtility
sTempMemSize__Q23EGG10G3DUtility:
	.skip 0x8

.section .rodata, "a"
.balign 0x8
.global lbl_80379410
lbl_80379410:
	.string "eggG3DUtility.cpp"
    .string "tmpSize % 32 == 0"
    .string "sManualProjectionMapMode == i"
    .string "sManualProjectionMapMode != 0"
    .string "srt.IsValid()"
    .string "pM"
    .string "pName"
    .string "p_resObj"

.section .text, "ax"
.global func_8008F334
func_8008F334:
/* 8008F334 0008A234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008F338 0008A238  7C 08 02 A6 */	mflr r0
/* 8008F33C 0008A23C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008F340 0008A240  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 8008F344 0008A244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008F348 0008A248  7C 7F 1B 78 */	mr r31, r3
/* 8008F34C 0008A24C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008F350 0008A250  7C 9E 23 78 */	mr r30, r4
/* 8008F354 0008A254  41 82 00 1C */	beq lbl_8008F370
/* 8008F358 0008A258  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008F35C 0008A25C  38 80 00 1F */	li r4, 0x1f
/* 8008F360 0008A260  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008F364 0008A264  38 A3 00 12 */	addi r5, r3, 0x12
/* 8008F368 0008A268  4C C6 31 82 */	crclr 6
/* 8008F36C 0008A26C  48 01 2B 9D */	bl system_halt
lbl_8008F370:
/* 8008F370 0008A270  2C 1E 00 00 */	cmpwi r30, 0
/* 8008F374 0008A274  40 82 00 08 */	bne lbl_8008F37C
/* 8008F378 0008A278  83 CD 99 28 */	lwz r30, sCurrentHeap__Q23EGG4Heap-_SDA_BASE_(r13)
lbl_8008F37C:
/* 8008F37C 0008A27C  2C 1F 00 00 */	cmpwi r31, 0
/* 8008F380 0008A280  41 82 00 20 */	beq lbl_8008F3A0
/* 8008F384 0008A284  7F E3 FB 78 */	mr r3, r31
/* 8008F388 0008A288  7F C4 F3 78 */	mr r4, r30
/* 8008F38C 0008A28C  38 A0 00 20 */	li r5, 0x20
/* 8008F390 0008A290  48 01 3E E5 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8008F394 0008A294  90 6D 98 70 */	stw r3, sTempMem__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F398 0008A298  93 ED 98 78 */	stw r31, sTempMemSize__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F39C 0008A29C  48 00 00 10 */	b lbl_8008F3AC
lbl_8008F3A0:
/* 8008F3A0 0008A2A0  38 00 00 00 */	li r0, 0
/* 8008F3A4 0008A2A4  90 0D 98 70 */	stw r0, sTempMem__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F3A8 0008A2A8  90 0D 98 78 */	stw r0, sTempMemSize__Q23EGG10G3DUtility-_SDA_BASE_(r13)
lbl_8008F3AC:
/* 8008F3AC 0008A2AC  38 00 00 00 */	li r0, 0
/* 8008F3B0 0008A2B0  3F E0 80 09 */	lis r31, lbl_8008F548@ha
/* 8008F3B4 0008A2B4  90 0D 98 74 */	stw r0, sTempMemIndex__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F3B8 0008A2B8  3B FF F5 48 */	addi r31, r31, lbl_8008F548@l
/* 8008F3BC 0008A2BC  3B C0 00 05 */	li r30, 5
lbl_8008F3C0:
/* 8008F3C0 0008A2C0  7F C3 F3 78 */	mr r3, r30
/* 8008F3C4 0008A2C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8008F3C8 0008A2C8  38 A0 00 00 */	li r5, 0
/* 8008F3CC 0008A2CC  4B FD 79 B1 */	bl GetScnDependentTexMtxFunc__Q34nw4r3g3d8G3DStateFUlPPFPQ34nw4r4math5MTX34ScSc_vPQ44nw4r3g3d8G3DState26ScnDependentTexMtxFuncType
/* 8008F3D0 0008A2D0  2C 03 00 00 */	cmpwi r3, 0
/* 8008F3D4 0008A2D4  41 82 00 38 */	beq lbl_8008F40C
/* 8008F3D8 0008A2D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008F3DC 0008A2DC  7C 00 F8 40 */	cmplw r0, r31
/* 8008F3E0 0008A2E0  40 82 00 2C */	bne lbl_8008F40C
/* 8008F3E4 0008A2E4  88 0D 98 68 */	lbz r0, sManualProjectionMapMode__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F3E8 0008A2E8  7C 00 F0 40 */	cmplw r0, r30
/* 8008F3EC 0008A2EC  41 82 00 A8 */	beq lbl_8008F494
/* 8008F3F0 0008A2F0  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008F3F4 0008A2F4  38 80 00 38 */	li r4, 0x38
/* 8008F3F8 0008A2F8  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008F3FC 0008A2FC  38 A3 00 24 */	addi r5, r3, 0x24
/* 8008F400 0008A300  4C C6 31 82 */	crclr 6
/* 8008F404 0008A304  48 01 2B 05 */	bl system_halt
/* 8008F408 0008A308  48 00 00 8C */	b lbl_8008F494
lbl_8008F40C:
/* 8008F40C 0008A30C  3B DE 00 01 */	addi r30, r30, 1
/* 8008F410 0008A310  28 1E 01 00 */	cmplwi r30, 0x100
/* 8008F414 0008A314  41 80 FF AC */	blt lbl_8008F3C0
/* 8008F418 0008A318  3F E0 80 06 */	lis r31, DefaultMapping__Q44nw4r3g3d6detail19ScnDependentMtxFuncFPQ34nw4r4math5MTX34ScSc@ha
/* 8008F41C 0008A31C  3B C0 00 05 */	li r30, 5
/* 8008F420 0008A320  3B FF 4A 24 */	addi r31, r31, DefaultMapping__Q44nw4r3g3d6detail19ScnDependentMtxFuncFPQ34nw4r4math5MTX34ScSc@l
lbl_8008F424:
/* 8008F424 0008A324  7F C3 F3 78 */	mr r3, r30
/* 8008F428 0008A328  38 81 00 08 */	addi r4, r1, 8
/* 8008F42C 0008A32C  38 A0 00 00 */	li r5, 0
/* 8008F430 0008A330  4B FD 79 4D */	bl GetScnDependentTexMtxFunc__Q34nw4r3g3d8G3DStateFUlPPFPQ34nw4r4math5MTX34ScSc_vPQ44nw4r3g3d8G3DState26ScnDependentTexMtxFuncType
/* 8008F434 0008A334  2C 03 00 00 */	cmpwi r3, 0
/* 8008F438 0008A338  41 82 00 2C */	beq lbl_8008F464
/* 8008F43C 0008A33C  80 01 00 08 */	lwz r0, 8(r1)
/* 8008F440 0008A340  7C 00 F8 40 */	cmplw r0, r31
/* 8008F444 0008A344  40 82 00 20 */	bne lbl_8008F464
/* 8008F448 0008A348  3C 80 80 09 */	lis r4, lbl_8008F548@ha
/* 8008F44C 0008A34C  9B CD 98 68 */	stb r30, sManualProjectionMapMode__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F450 0008A350  7F C3 F3 78 */	mr r3, r30
/* 8008F454 0008A354  38 A0 00 02 */	li r5, 2
/* 8008F458 0008A358  38 84 F5 48 */	addi r4, r4, lbl_8008F548@l
/* 8008F45C 0008A35C  4B FD 78 B9 */	bl SetScnDependentTexMtxFunc__Q34nw4r3g3d8G3DStateFUlPFPQ34nw4r4math5MTX34ScSc_vQ44nw4r3g3d8G3DState26ScnDependentTexMtxFuncType
/* 8008F460 0008A360  48 00 00 34 */	b lbl_8008F494
lbl_8008F464:
/* 8008F464 0008A364  3B DE 00 01 */	addi r30, r30, 1
/* 8008F468 0008A368  28 1E 01 00 */	cmplwi r30, 0x100
/* 8008F46C 0008A36C  41 80 FF B8 */	blt lbl_8008F424
/* 8008F470 0008A370  88 0D 98 68 */	lbz r0, sManualProjectionMapMode__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F474 0008A374  2C 00 00 00 */	cmpwi r0, 0
/* 8008F478 0008A378  40 82 00 1C */	bne lbl_8008F494
/* 8008F47C 0008A37C  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008F480 0008A380  38 80 00 4D */	li r4, 0x4d
/* 8008F484 0008A384  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008F488 0008A388  38 A3 00 42 */	addi r5, r3, 0x42
/* 8008F48C 0008A38C  4C C6 31 82 */	crclr 6
/* 8008F490 0008A390  48 01 2A 79 */	bl system_halt
lbl_8008F494:
/* 8008F494 0008A394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008F498 0008A398  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008F49C 0008A39C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8008F4A0 0008A3A0  7C 08 03 A6 */	mtlr r0
/* 8008F4A4 0008A3A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8008F4A8 0008A3A8  4E 80 00 20 */	blr 

.global func_8008F4AC
func_8008F4AC:
/* 8008F4AC 0008A3AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008F4B0 0008A3B0  7C 08 02 A6 */	mflr r0
/* 8008F4B4 0008A3B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008F4B8 0008A3B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008F4BC 0008A3BC  7C 9F 23 78 */	mr r31, r4
/* 8008F4C0 0008A3C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008F4C4 0008A3C4  7C 7E 1B 78 */	mr r30, r3
/* 8008F4C8 0008A3C8  80 03 00 00 */	lwz r0, 0(r3)
/* 8008F4CC 0008A3CC  2C 00 00 00 */	cmpwi r0, 0
/* 8008F4D0 0008A3D0  40 82 00 1C */	bne lbl_8008F4EC
/* 8008F4D4 0008A3D4  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008F4D8 0008A3D8  38 80 00 5A */	li r4, 0x5a
/* 8008F4DC 0008A3DC  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008F4E0 0008A3E0  38 A3 00 60 */	addi r5, r3, 0x60
/* 8008F4E4 0008A3E4  4C C6 31 82 */	crclr 6
/* 8008F4E8 0008A3E8  48 01 2A 21 */	bl system_halt
lbl_8008F4EC:
/* 8008F4EC 0008A3EC  7F C3 F3 78 */	mr r3, r30
/* 8008F4F0 0008A3F0  7F E4 FB 78 */	mr r4, r31
/* 8008F4F4 0008A3F4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8008F4F8 0008A3F8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8008F4FC 0008A3FC  38 E1 00 08 */	addi r7, r1, 8
/* 8008F500 0008A400  4B FC 59 21 */	bl func_80054E20
/* 8008F504 0008A404  2C 03 00 00 */	cmpwi r3, 0
/* 8008F508 0008A408  41 82 00 24 */	beq lbl_8008F52C
/* 8008F50C 0008A40C  88 AD 98 68 */	lbz r5, sManualProjectionMapMode__Q23EGG10G3DUtility-_SDA_BASE_(r13)
/* 8008F510 0008A410  7F C3 F3 78 */	mr r3, r30
/* 8008F514 0008A414  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8008F518 0008A418  7F E4 FB 78 */	mr r4, r31
/* 8008F51C 0008A41C  80 E1 00 08 */	lwz r7, 8(r1)
/* 8008F520 0008A420  4B FC 58 79 */	bl func_80054D98
/* 8008F524 0008A424  38 60 00 01 */	li r3, 1
/* 8008F528 0008A428  48 00 00 08 */	b lbl_8008F530
lbl_8008F52C:
/* 8008F52C 0008A42C  38 60 00 00 */	li r3, 0
lbl_8008F530:
/* 8008F530 0008A430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008F534 0008A434  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008F538 0008A438  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8008F53C 0008A43C  7C 08 03 A6 */	mtlr r0
/* 8008F540 0008A440  38 21 00 20 */	addi r1, r1, 0x20
/* 8008F544 0008A444  4E 80 00 20 */	blr 
lbl_8008F548:
/* 8008F548 0008A448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008F54C 0008A44C  7C 08 02 A6 */	mflr r0
/* 8008F550 0008A450  2C 03 00 00 */	cmpwi r3, 0
/* 8008F554 0008A454  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008F558 0008A458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008F55C 0008A45C  7C 7F 1B 78 */	mr r31, r3
/* 8008F560 0008A460  40 82 00 1C */	bne lbl_8008F57C
/* 8008F564 0008A464  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008F568 0008A468  38 80 00 86 */	li r4, 0x86
/* 8008F56C 0008A46C  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008F570 0008A470  38 A3 00 6E */	addi r5, r3, 0x6e
/* 8008F574 0008A474  4C C6 31 82 */	crclr 6
/* 8008F578 0008A478  48 01 29 91 */	bl system_halt
lbl_8008F57C:
/* 8008F57C 0008A47C  4B FD 7B AD */	bl GetProjectionMtxPtr__Q34nw4r3g3d8G3DStateFi
/* 8008F580 0008A480  7F E4 FB 78 */	mr r4, r31
/* 8008F584 0008A484  48 05 80 A1 */	bl PSMTXCopy
/* 8008F588 0008A488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008F58C 0008A48C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008F590 0008A490  7C 08 03 A6 */	mtlr r0
/* 8008F594 0008A494  38 21 00 10 */	addi r1, r1, 0x10
/* 8008F598 0008A498  4E 80 00 20 */	blr 

.global func_8008F59C
func_8008F59C:
/* 8008F59C 0008A49C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008F5A0 0008A4A0  7C 08 02 A6 */	mflr r0
/* 8008F5A4 0008A4A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008F5A8 0008A4A8  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 8008F5AC 0008A4AC  7C 7E 1B 78 */	mr r30, r3
/* 8008F5B0 0008A4B0  7C 9F 23 78 */	mr r31, r4
/* 8008F5B4 0008A4B4  80 C4 00 00 */	lwz r6, 0(r4)
/* 8008F5B8 0008A4B8  2C 06 00 00 */	cmpwi r6, 0
/* 8008F5BC 0008A4BC  40 82 00 0C */	bne lbl_8008F5C8
/* 8008F5C0 0008A4C0  38 60 00 00 */	li r3, 0
/* 8008F5C4 0008A4C4  48 00 01 70 */	b lbl_8008F734
lbl_8008F5C8:
/* 8008F5C8 0008A4C8  A3 43 00 02 */	lhz r26, 2(r3)
/* 8008F5CC 0008A4CC  A0 06 00 38 */	lhz r0, 0x38(r6)
/* 8008F5D0 0008A4D0  7C 00 D0 40 */	cmplw r0, r26
/* 8008F5D4 0008A4D4  40 80 00 08 */	bge lbl_8008F5DC
/* 8008F5D8 0008A4D8  7C 1A 03 78 */	mr r26, r0
lbl_8008F5DC:
/* 8008F5DC 0008A4DC  2C 05 00 00 */	cmpwi r5, 0
/* 8008F5E0 0008A4E0  3B 20 00 00 */	li r25, 0
/* 8008F5E4 0008A4E4  41 80 01 44 */	blt lbl_8008F728
/* 8008F5E8 0008A4E8  7C B9 2B 78 */	mr r25, r5
/* 8008F5EC 0008A4EC  3B 45 00 01 */	addi r26, r5, 1
/* 8008F5F0 0008A4F0  48 00 01 38 */	b lbl_8008F728
lbl_8008F5F4:
/* 8008F5F4 0008A4F4  7F C4 F3 78 */	mr r4, r30
/* 8008F5F8 0008A4F8  7F 25 CB 78 */	mr r5, r25
/* 8008F5FC 0008A4FC  38 61 00 08 */	addi r3, r1, 8
/* 8008F600 0008A500  4B FD 3E AD */	bl GetLightSet__Q34nw4r3g3d12LightSettingFi
/* 8008F604 0008A504  7F E3 FB 78 */	mr r3, r31
/* 8008F608 0008A508  7F 24 CB 78 */	mr r4, r25
/* 8008F60C 0008A50C  4B FC B1 A5 */	bl func_8005A7B0
/* 8008F610 0008A510  80 01 00 08 */	lwz r0, 8(r1)
/* 8008F614 0008A514  7C 7D 1B 78 */	mr r29, r3
/* 8008F618 0008A518  38 80 00 00 */	li r4, 0
/* 8008F61C 0008A51C  2C 00 00 00 */	cmpwi r0, 0
/* 8008F620 0008A520  41 82 00 14 */	beq lbl_8008F634
/* 8008F624 0008A524  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008F628 0008A528  2C 00 00 00 */	cmpwi r0, 0
/* 8008F62C 0008A52C  41 82 00 08 */	beq lbl_8008F634
/* 8008F630 0008A530  38 80 00 01 */	li r4, 1
lbl_8008F634:
/* 8008F634 0008A534  2C 04 00 00 */	cmpwi r4, 0
/* 8008F638 0008A538  40 82 00 0C */	bne lbl_8008F644
/* 8008F63C 0008A53C  38 60 00 00 */	li r3, 0
/* 8008F640 0008A540  48 00 00 F4 */	b lbl_8008F734
lbl_8008F644:
/* 8008F644 0008A544  8A C3 00 1A */	lbz r22, 0x1a(r3)
/* 8008F648 0008A548  3B 00 00 07 */	li r24, 7
/* 8008F64C 0008A54C  3A E0 00 00 */	li r23, 0
/* 8008F650 0008A550  2C 16 00 00 */	cmpwi r22, 0
/* 8008F654 0008A554  41 82 00 90 */	beq lbl_8008F6E4
/* 8008F658 0008A558  7F BB EB 78 */	mr r27, r29
/* 8008F65C 0008A55C  48 00 00 68 */	b lbl_8008F6C4
lbl_8008F660:
/* 8008F660 0008A560  A0 9B 00 3C */	lhz r4, 0x3c(r27)
/* 8008F664 0008A564  28 04 FF FF */	cmplwi r4, 0xffff
/* 8008F668 0008A568  41 82 00 44 */	beq lbl_8008F6AC
/* 8008F66C 0008A56C  7F E3 FB 78 */	mr r3, r31
/* 8008F670 0008A570  4B FC B0 95 */	bl func_8005A704
/* 8008F674 0008A574  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8008F678 0008A578  7C 7C 1B 78 */	mr r28, r3
/* 8008F67C 0008A57C  7E E4 BB 78 */	mr r4, r23
/* 8008F680 0008A580  38 61 00 08 */	addi r3, r1, 8
/* 8008F684 0008A584  4B FE 93 75 */	bl SelectLightObj__Q34nw4r3g3d8LightSetFUli
/* 8008F688 0008A588  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 8008F68C 0008A58C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8008F690 0008A590  41 82 00 2C */	beq lbl_8008F6BC
/* 8008F694 0008A594  80 BC 00 14 */	lwz r5, 0x14(r28)
/* 8008F698 0008A598  7F 04 C3 78 */	mr r4, r24
/* 8008F69C 0008A59C  38 61 00 08 */	addi r3, r1, 8
/* 8008F6A0 0008A5A0  3B 18 FF FF */	addi r24, r24, -1
/* 8008F6A4 0008A5A4  4B FE 93 55 */	bl SelectLightObj__Q34nw4r3g3d8LightSetFUli
/* 8008F6A8 0008A5A8  48 00 00 14 */	b lbl_8008F6BC
lbl_8008F6AC:
/* 8008F6AC 0008A5AC  7E E4 BB 78 */	mr r4, r23
/* 8008F6B0 0008A5B0  38 61 00 08 */	addi r3, r1, 8
/* 8008F6B4 0008A5B4  38 A0 FF FF */	li r5, -1
/* 8008F6B8 0008A5B8  4B FE 93 41 */	bl SelectLightObj__Q34nw4r3g3d8LightSetFUli
lbl_8008F6BC:
/* 8008F6BC 0008A5BC  3B 7B 00 02 */	addi r27, r27, 2
/* 8008F6C0 0008A5C0  3A F7 00 01 */	addi r23, r23, 1
lbl_8008F6C4:
/* 8008F6C4 0008A5C4  7C 17 B0 40 */	cmplw r23, r22
/* 8008F6C8 0008A5C8  41 80 FF 98 */	blt lbl_8008F660
/* 8008F6CC 0008A5CC  48 00 00 18 */	b lbl_8008F6E4
lbl_8008F6D0:
/* 8008F6D0 0008A5D0  7E C4 B3 78 */	mr r4, r22
/* 8008F6D4 0008A5D4  38 61 00 08 */	addi r3, r1, 8
/* 8008F6D8 0008A5D8  38 A0 FF FF */	li r5, -1
/* 8008F6DC 0008A5DC  4B FE 93 1D */	bl SelectLightObj__Q34nw4r3g3d8LightSetFUli
/* 8008F6E0 0008A5E0  3A D6 00 01 */	addi r22, r22, 1
lbl_8008F6E4:
/* 8008F6E4 0008A5E4  7C 16 C0 40 */	cmplw r22, r24
/* 8008F6E8 0008A5E8  40 81 FF E8 */	ble lbl_8008F6D0
/* 8008F6EC 0008A5EC  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8008F6F0 0008A5F0  2C 00 00 00 */	cmpwi r0, 0
/* 8008F6F4 0008A5F4  41 82 00 24 */	beq lbl_8008F718
/* 8008F6F8 0008A5F8  A0 9D 00 18 */	lhz r4, 0x18(r29)
/* 8008F6FC 0008A5FC  7F E3 FB 78 */	mr r3, r31
/* 8008F700 0008A600  4B FC AE D1 */	bl func_8005A5D0
/* 8008F704 0008A604  7C 64 1B 78 */	mr r4, r3
/* 8008F708 0008A608  38 61 00 08 */	addi r3, r1, 8
/* 8008F70C 0008A60C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8008F710 0008A610  4B FE 93 59 */	bl SelectAmbLightObj__Q34nw4r3g3d8LightSetFi
/* 8008F714 0008A614  48 00 00 10 */	b lbl_8008F724
lbl_8008F718:
/* 8008F718 0008A618  38 61 00 08 */	addi r3, r1, 8
/* 8008F71C 0008A61C  38 80 FF FF */	li r4, -1
/* 8008F720 0008A620  4B FE 93 49 */	bl SelectAmbLightObj__Q34nw4r3g3d8LightSetFi
lbl_8008F724:
/* 8008F724 0008A624  3B 39 00 01 */	addi r25, r25, 1
lbl_8008F728:
/* 8008F728 0008A628  7C 19 D0 00 */	cmpw r25, r26
/* 8008F72C 0008A62C  41 80 FE C8 */	blt lbl_8008F5F4
/* 8008F730 0008A630  38 60 00 01 */	li r3, 1
lbl_8008F734:
/* 8008F734 0008A634  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 8008F738 0008A638  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008F73C 0008A63C  7C 08 03 A6 */	mtlr r0
/* 8008F740 0008A640  38 21 00 40 */	addi r1, r1, 0x40
/* 8008F744 0008A644  4E 80 00 20 */	blr 
/* 8008F748 0008A648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8008F74C 0008A64C  7C 08 02 A6 */	mflr r0
/* 8008F750 0008A650  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008F754 0008A654  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8008F758 0008A658  7C 79 1B 78 */	mr r25, r3
/* 8008F75C 0008A65C  7C 9A 23 78 */	mr r26, r4
/* 8008F760 0008A660  7C BB 2B 78 */	mr r27, r5
/* 8008F764 0008A664  7C DC 33 78 */	mr r28, r6
/* 8008F768 0008A668  3B C0 00 00 */	li r30, 0
/* 8008F76C 0008A66C  3B A0 00 00 */	li r29, 0
/* 8008F770 0008A670  48 00 00 80 */	b lbl_8008F7F0
lbl_8008F774:
/* 8008F774 0008A674  7F 23 CB 78 */	mr r3, r25
/* 8008F778 0008A678  7F A4 EB 78 */	mr r4, r29
/* 8008F77C 0008A67C  4B FC 31 19 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFi
/* 8008F780 0008A680  2C 1A 00 00 */	cmpwi r26, 0
/* 8008F784 0008A684  7C 7F 1B 78 */	mr r31, r3
/* 8008F788 0008A688  41 82 00 2C */	beq lbl_8008F7B4
/* 8008F78C 0008A68C  80 03 00 08 */	lwz r0, 8(r3)
/* 8008F790 0008A690  2C 00 00 00 */	cmpwi r0, 0
/* 8008F794 0008A694  41 82 00 0C */	beq lbl_8008F7A0
/* 8008F798 0008A698  7C 63 02 14 */	add r3, r3, r0
/* 8008F79C 0008A69C  48 00 00 08 */	b lbl_8008F7A4
lbl_8008F7A0:
/* 8008F7A0 0008A6A0  38 60 00 00 */	li r3, 0
lbl_8008F7A4:
/* 8008F7A4 0008A6A4  7F 44 D3 78 */	mr r4, r26
/* 8008F7A8 0008A6A8  48 02 97 95 */	bl strstr
/* 8008F7AC 0008A6AC  2C 03 00 00 */	cmpwi r3, 0
/* 8008F7B0 0008A6B0  41 82 00 3C */	beq lbl_8008F7EC
lbl_8008F7B4:
/* 8008F7B4 0008A6B4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8008F7B8 0008A6B8  7C 00 E0 40 */	cmplw r0, r28
/* 8008F7BC 0008A6BC  40 80 00 2C */	bge lbl_8008F7E8
/* 8008F7C0 0008A6C0  57 C0 1B 78 */	rlwinm r0, r30, 3, 0xd, 0x1c
/* 8008F7C4 0008A6C4  7F BB 03 2E */	sthx r29, r27, r0
/* 8008F7C8 0008A6C8  7C 7B 02 14 */	add r3, r27, r0
/* 8008F7CC 0008A6CC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8008F7D0 0008A6D0  2C 00 00 00 */	cmpwi r0, 0
/* 8008F7D4 0008A6D4  41 82 00 0C */	beq lbl_8008F7E0
/* 8008F7D8 0008A6D8  7C 1F 02 14 */	add r0, r31, r0
/* 8008F7DC 0008A6DC  48 00 00 08 */	b lbl_8008F7E4
lbl_8008F7E0:
/* 8008F7E0 0008A6E0  38 00 00 00 */	li r0, 0
lbl_8008F7E4:
/* 8008F7E4 0008A6E4  90 03 00 04 */	stw r0, 4(r3)
lbl_8008F7E8:
/* 8008F7E8 0008A6E8  3B DE 00 01 */	addi r30, r30, 1
lbl_8008F7EC:
/* 8008F7EC 0008A6EC  3B BD 00 01 */	addi r29, r29, 1
lbl_8008F7F0:
/* 8008F7F0 0008A6F0  7F 23 CB 78 */	mr r3, r25
/* 8008F7F4 0008A6F4  4B FC 31 49 */	bl GetResNodeNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 8008F7F8 0008A6F8  7C 1D 18 40 */	cmplw r29, r3
/* 8008F7FC 0008A6FC  41 80 FF 78 */	blt lbl_8008F774
/* 8008F800 0008A700  7F C3 F3 78 */	mr r3, r30
/* 8008F804 0008A704  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8008F808 0008A708  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8008F80C 0008A70C  7C 08 03 A6 */	mtlr r0
/* 8008F810 0008A710  38 21 00 30 */	addi r1, r1, 0x30
/* 8008F814 0008A714  4E 80 00 20 */	blr 
/* 8008F818 0008A718  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8008F81C 0008A71C  7C 08 02 A6 */	mflr r0
/* 8008F820 0008A720  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008F824 0008A724  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8008F828 0008A728  7C 79 1B 78 */	mr r25, r3
/* 8008F82C 0008A72C  7C 9A 23 78 */	mr r26, r4
/* 8008F830 0008A730  7C BB 2B 78 */	mr r27, r5
/* 8008F834 0008A734  7C DC 33 78 */	mr r28, r6
/* 8008F838 0008A738  3B C0 00 00 */	li r30, 0
/* 8008F83C 0008A73C  3B A0 00 00 */	li r29, 0
/* 8008F840 0008A740  48 00 00 80 */	b lbl_8008F8C0
lbl_8008F844:
/* 8008F844 0008A744  7F 23 CB 78 */	mr r3, r25
/* 8008F848 0008A748  7F A4 EB 78 */	mr r4, r29
/* 8008F84C 0008A74C  4B FC 35 91 */	bl GetResMat__Q34nw4r3g3d6ResMdlCFi
/* 8008F850 0008A750  2C 1A 00 00 */	cmpwi r26, 0
/* 8008F854 0008A754  7C 7F 1B 78 */	mr r31, r3
/* 8008F858 0008A758  41 82 00 2C */	beq lbl_8008F884
/* 8008F85C 0008A75C  80 03 00 08 */	lwz r0, 8(r3)
/* 8008F860 0008A760  2C 00 00 00 */	cmpwi r0, 0
/* 8008F864 0008A764  41 82 00 0C */	beq lbl_8008F870
/* 8008F868 0008A768  7C 63 02 14 */	add r3, r3, r0
/* 8008F86C 0008A76C  48 00 00 08 */	b lbl_8008F874
lbl_8008F870:
/* 8008F870 0008A770  38 60 00 00 */	li r3, 0
lbl_8008F874:
/* 8008F874 0008A774  7F 44 D3 78 */	mr r4, r26
/* 8008F878 0008A778  48 02 96 C5 */	bl strstr
/* 8008F87C 0008A77C  2C 03 00 00 */	cmpwi r3, 0
/* 8008F880 0008A780  41 82 00 3C */	beq lbl_8008F8BC
lbl_8008F884:
/* 8008F884 0008A784  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8008F888 0008A788  7C 00 E0 40 */	cmplw r0, r28
/* 8008F88C 0008A78C  40 80 00 2C */	bge lbl_8008F8B8
/* 8008F890 0008A790  57 C0 1B 78 */	rlwinm r0, r30, 3, 0xd, 0x1c
/* 8008F894 0008A794  7F BB 03 2E */	sthx r29, r27, r0
/* 8008F898 0008A798  7C 7B 02 14 */	add r3, r27, r0
/* 8008F89C 0008A79C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8008F8A0 0008A7A0  2C 00 00 00 */	cmpwi r0, 0
/* 8008F8A4 0008A7A4  41 82 00 0C */	beq lbl_8008F8B0
/* 8008F8A8 0008A7A8  7C 1F 02 14 */	add r0, r31, r0
/* 8008F8AC 0008A7AC  48 00 00 08 */	b lbl_8008F8B4
lbl_8008F8B0:
/* 8008F8B0 0008A7B0  38 00 00 00 */	li r0, 0
lbl_8008F8B4:
/* 8008F8B4 0008A7B4  90 03 00 04 */	stw r0, 4(r3)
lbl_8008F8B8:
/* 8008F8B8 0008A7B8  3B DE 00 01 */	addi r30, r30, 1
lbl_8008F8BC:
/* 8008F8BC 0008A7BC  3B BD 00 01 */	addi r29, r29, 1
lbl_8008F8C0:
/* 8008F8C0 0008A7C0  7F 23 CB 78 */	mr r3, r25
/* 8008F8C4 0008A7C4  4B FC 35 C1 */	bl GetResMatNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 8008F8C8 0008A7C8  7C 1D 18 40 */	cmplw r29, r3
/* 8008F8CC 0008A7CC  41 80 FF 78 */	blt lbl_8008F844
/* 8008F8D0 0008A7D0  7F C3 F3 78 */	mr r3, r30
/* 8008F8D4 0008A7D4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8008F8D8 0008A7D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8008F8DC 0008A7DC  7C 08 03 A6 */	mtlr r0
/* 8008F8E0 0008A7E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8008F8E4 0008A7E4  4E 80 00 20 */	blr 
/* 8008F8E8 0008A7E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8008F8EC 0008A7EC  7C 08 02 A6 */	mflr r0
/* 8008F8F0 0008A7F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008F8F4 0008A7F4  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 8008F8F8 0008A7F8  7C 79 1B 78 */	mr r25, r3
/* 8008F8FC 0008A7FC  7C 9A 23 78 */	mr r26, r4
/* 8008F900 0008A800  7C BB 2B 78 */	mr r27, r5
/* 8008F904 0008A804  7C DC 33 78 */	mr r28, r6
/* 8008F908 0008A808  3B E0 00 00 */	li r31, 0
/* 8008F90C 0008A80C  3B C0 00 00 */	li r30, 0
/* 8008F910 0008A810  48 00 00 BC */	b lbl_8008F9CC
lbl_8008F914:
/* 8008F914 0008A814  7F 23 CB 78 */	mr r3, r25
/* 8008F918 0008A818  7F C4 F3 78 */	mr r4, r30
/* 8008F91C 0008A81C  4B FC 36 BD */	bl GetResTexPlttInfoOffsetFromTexName__Q34nw4r3g3d6ResMdlCFi
/* 8008F920 0008A820  7C 77 1B 78 */	mr r23, r3
/* 8008F924 0008A824  3B A0 00 00 */	li r29, 0
/* 8008F928 0008A828  48 00 00 90 */	b lbl_8008F9B8
lbl_8008F92C:
/* 8008F92C 0008A82C  57 A0 1B 78 */	rlwinm r0, r29, 3, 0xd, 0x1c
/* 8008F930 0008A830  7C 77 02 14 */	add r3, r23, r0
/* 8008F934 0008A834  80 03 00 08 */	lwz r0, 8(r3)
/* 8008F938 0008A838  2C 00 00 00 */	cmpwi r0, 0
/* 8008F93C 0008A83C  41 82 00 0C */	beq lbl_8008F948
/* 8008F940 0008A840  7F 17 02 14 */	add r24, r23, r0
/* 8008F944 0008A844  48 00 00 08 */	b lbl_8008F94C
lbl_8008F948:
/* 8008F948 0008A848  3B 00 00 00 */	li r24, 0
lbl_8008F94C:
/* 8008F94C 0008A84C  2C 1A 00 00 */	cmpwi r26, 0
/* 8008F950 0008A850  41 82 00 2C */	beq lbl_8008F97C
/* 8008F954 0008A854  80 18 00 00 */	lwz r0, 0(r24)
/* 8008F958 0008A858  2C 00 00 00 */	cmpwi r0, 0
/* 8008F95C 0008A85C  41 82 00 0C */	beq lbl_8008F968
/* 8008F960 0008A860  7C 78 02 14 */	add r3, r24, r0
/* 8008F964 0008A864  48 00 00 08 */	b lbl_8008F96C
lbl_8008F968:
/* 8008F968 0008A868  38 60 00 00 */	li r3, 0
lbl_8008F96C:
/* 8008F96C 0008A86C  7F 44 D3 78 */	mr r4, r26
/* 8008F970 0008A870  48 02 95 CD */	bl strstr
/* 8008F974 0008A874  2C 03 00 00 */	cmpwi r3, 0
/* 8008F978 0008A878  41 82 00 3C */	beq lbl_8008F9B4
lbl_8008F97C:
/* 8008F97C 0008A87C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8008F980 0008A880  7C 00 E0 40 */	cmplw r0, r28
/* 8008F984 0008A884  40 80 00 2C */	bge lbl_8008F9B0
/* 8008F988 0008A888  57 E0 1B 78 */	rlwinm r0, r31, 3, 0xd, 0x1c
/* 8008F98C 0008A88C  7F DB 03 2E */	sthx r30, r27, r0
/* 8008F990 0008A890  7C 7B 02 14 */	add r3, r27, r0
/* 8008F994 0008A894  80 18 00 00 */	lwz r0, 0(r24)
/* 8008F998 0008A898  2C 00 00 00 */	cmpwi r0, 0
/* 8008F99C 0008A89C  41 82 00 0C */	beq lbl_8008F9A8
/* 8008F9A0 0008A8A0  7C 18 02 14 */	add r0, r24, r0
/* 8008F9A4 0008A8A4  48 00 00 08 */	b lbl_8008F9AC
lbl_8008F9A8:
/* 8008F9A8 0008A8A8  38 00 00 00 */	li r0, 0
lbl_8008F9AC:
/* 8008F9AC 0008A8AC  90 03 00 04 */	stw r0, 4(r3)
lbl_8008F9B0:
/* 8008F9B0 0008A8B0  3B FF 00 01 */	addi r31, r31, 1
lbl_8008F9B4:
/* 8008F9B4 0008A8B4  3B BD 00 01 */	addi r29, r29, 1
lbl_8008F9B8:
/* 8008F9B8 0008A8B8  80 17 00 00 */	lwz r0, 0(r23)
/* 8008F9BC 0008A8BC  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8008F9C0 0008A8C0  7C 03 00 40 */	cmplw r3, r0
/* 8008F9C4 0008A8C4  41 80 FF 68 */	blt lbl_8008F92C
/* 8008F9C8 0008A8C8  3B DE 00 01 */	addi r30, r30, 1
lbl_8008F9CC:
/* 8008F9CC 0008A8CC  7F 23 CB 78 */	mr r3, r25
/* 8008F9D0 0008A8D0  4B FC 36 5D */	bl GetResTexPlttInfoOffsetFromTexNameNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 8008F9D4 0008A8D4  7C 1E 18 40 */	cmplw r30, r3
/* 8008F9D8 0008A8D8  41 80 FF 3C */	blt lbl_8008F914
/* 8008F9DC 0008A8DC  7F E3 FB 78 */	mr r3, r31
/* 8008F9E0 0008A8E0  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 8008F9E4 0008A8E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8008F9E8 0008A8E8  7C 08 03 A6 */	mtlr r0
/* 8008F9EC 0008A8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8008F9F0 0008A8F0  4E 80 00 20 */	blr 

.global func_8008F9F4
func_8008F9F4:
/* 8008F9F4 0008A8F4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8008F9F8 0008A8F8  7C 08 02 A6 */	mflr r0
/* 8008F9FC 0008A8FC  2C 05 00 00 */	cmpwi r5, 0
/* 8008FA00 0008A900  90 01 00 94 */	stw r0, 0x94(r1)
/* 8008FA04 0008A904  BE 41 00 58 */	stmw r18, 0x58(r1)
/* 8008FA08 0008A908  7C 72 1B 78 */	mr r18, r3
/* 8008FA0C 0008A90C  7C 93 23 78 */	mr r19, r4
/* 8008FA10 0008A910  7C B4 2B 78 */	mr r20, r5
/* 8008FA14 0008A914  7C D5 33 78 */	mr r21, r6
/* 8008FA18 0008A918  7C F6 3B 78 */	mr r22, r7
/* 8008FA1C 0008A91C  7D 17 43 78 */	mr r23, r8
/* 8008FA20 0008A920  7D 38 4B 78 */	mr r24, r9
/* 8008FA24 0008A924  40 82 00 1C */	bne lbl_8008FA40
/* 8008FA28 0008A928  3C 60 80 38 */	lis r3, lbl_80379410@ha
/* 8008FA2C 0008A92C  38 80 01 57 */	li r4, 0x157
/* 8008FA30 0008A930  38 63 94 10 */	addi r3, r3, lbl_80379410@l
/* 8008FA34 0008A934  38 A3 00 71 */	addi r5, r3, 0x71
/* 8008FA38 0008A938  4C C6 31 82 */	crclr 6
/* 8008FA3C 0008A93C  48 01 24 CD */	bl system_halt
lbl_8008FA40:
/* 8008FA40 0008A940  80 12 00 00 */	lwz r0, 0(r18)
/* 8008FA44 0008A944  2C 00 00 00 */	cmpwi r0, 0
/* 8008FA48 0008A948  40 82 00 0C */	bne lbl_8008FA54
/* 8008FA4C 0008A94C  38 60 00 00 */	li r3, 0
/* 8008FA50 0008A950  48 00 02 88 */	b lbl_8008FCD8
lbl_8008FA54:
/* 8008FA54 0008A954  3B E1 00 2C */	addi r31, r1, 0x2c
/* 8008FA58 0008A958  3B 60 00 00 */	li r27, 0
/* 8008FA5C 0008A95C  3B 40 00 00 */	li r26, 0
/* 8008FA60 0008A960  3F C0 80 38 */	lis r30, 0x8038
/* 8008FA64 0008A964  48 00 02 5C */	b lbl_8008FCC0
lbl_8008FA68:
/* 8008FA68 0008A968  80 04 00 30 */	lwz r0, 0x30(r4)
/* 8008FA6C 0008A96C  2C 00 00 00 */	cmpwi r0, 0
/* 8008FA70 0008A970  41 82 00 0C */	beq lbl_8008FA7C
/* 8008FA74 0008A974  7C 84 02 14 */	add r4, r4, r0
/* 8008FA78 0008A978  48 00 00 08 */	b lbl_8008FA80
lbl_8008FA7C:
/* 8008FA7C 0008A97C  38 80 00 00 */	li r4, 0
lbl_8008FA80:
/* 8008FA80 0008A980  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 8008FA84 0008A984  7E 83 A3 78 */	mr r3, r20
/* 8008FA88 0008A988  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8008FA8C 0008A98C  7F A4 02 14 */	add r29, r4, r0
/* 8008FA90 0008A990  7C 04 00 2E */	lwzx r0, r4, r0
/* 8008FA94 0008A994  2C 00 00 00 */	cmpwi r0, 0
/* 8008FA98 0008A998  41 82 00 0C */	beq lbl_8008FAA4
/* 8008FA9C 0008A99C  7C 9D 02 14 */	add r4, r29, r0
/* 8008FAA0 0008A9A0  48 00 00 08 */	b lbl_8008FAA8
lbl_8008FAA4:
/* 8008FAA4 0008A9A4  38 80 00 00 */	li r4, 0
lbl_8008FAA8:
/* 8008FAA8 0008A9A8  48 02 93 09 */	bl strcmp
/* 8008FAAC 0008A9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8008FAB0 0008A9B0  40 82 02 0C */	bne lbl_8008FCBC
/* 8008FAB4 0008A9B4  2C 13 00 00 */	cmpwi r19, 0
/* 8008FAB8 0008A9B8  3B 20 00 00 */	li r25, 0
/* 8008FABC 0008A9BC  41 82 00 1C */	beq lbl_8008FAD8
/* 8008FAC0 0008A9C0  7E 63 9B 78 */	mr r3, r19
/* 8008FAC4 0008A9C4  38 80 00 00 */	li r4, 0
/* 8008FAC8 0008A9C8  4B FE 52 55 */	bl GetResTexObj__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
/* 8008FACC 0008A9CC  2C 03 00 00 */	cmpwi r3, 0
/* 8008FAD0 0008A9D0  41 82 00 08 */	beq lbl_8008FAD8
/* 8008FAD4 0008A9D4  3B 20 00 01 */	li r25, 1
lbl_8008FAD8:
/* 8008FAD8 0008A9D8  2C 19 00 00 */	cmpwi r25, 0
/* 8008FADC 0008A9DC  41 82 00 1C */	beq lbl_8008FAF8
/* 8008FAE0 0008A9E0  7E 63 9B 78 */	mr r3, r19
/* 8008FAE4 0008A9E4  38 80 00 00 */	li r4, 0
/* 8008FAE8 0008A9E8  4B FE 52 35 */	bl GetResTexObj__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
/* 8008FAEC 0008A9EC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8008FAF0 0008A9F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8008FAF4 0008A9F4  48 00 00 14 */	b lbl_8008FB08
lbl_8008FAF8:
/* 8008FAF8 0008A9F8  80 72 00 00 */	lwz r3, 0(r18)
/* 8008FAFC 0008A9FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8008FB00 0008AA00  38 03 00 3C */	addi r0, r3, 0x3c
/* 8008FB04 0008AA04  90 01 00 18 */	stw r0, 0x18(r1)
lbl_8008FB08:
/* 8008FB08 0008AA08  80 04 00 00 */	lwz r0, 0(r4)
/* 8008FB0C 0008AA0C  38 61 00 54 */	addi r3, r1, 0x54
/* 8008FB10 0008AA10  90 01 00 54 */	stw r0, 0x54(r1)
/* 8008FB14 0008AA14  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 8008FB18 0008AA18  4B FC 4E AD */	bl GetTexObj__Q34nw4r3g3d9ResTexObjF11_GXTexMapID
/* 8008FB1C 0008AA1C  2C 03 00 00 */	cmpwi r3, 0
/* 8008FB20 0008AA20  7C 7C 1B 78 */	mr r28, r3
/* 8008FB24 0008AA24  40 82 00 18 */	bne lbl_8008FB3C
/* 8008FB28 0008AA28  38 7E 94 10 */	addi r3, r30, -27632
/* 8008FB2C 0008AA2C  38 80 01 68 */	li r4, 0x168
/* 8008FB30 0008AA30  38 A3 00 77 */	addi r5, r3, 0x77
/* 8008FB34 0008AA34  4C C6 31 82 */	crclr 6
/* 8008FB38 0008AA38  48 01 23 D1 */	bl system_halt
lbl_8008FB3C:
/* 8008FB3C 0008AA3C  2C 16 00 00 */	cmpwi r22, 0
/* 8008FB40 0008AA40  41 82 00 B4 */	beq lbl_8008FBF4
/* 8008FB44 0008AA44  7F 83 E3 78 */	mr r3, r28
/* 8008FB48 0008AA48  38 81 00 50 */	addi r4, r1, 0x50
/* 8008FB4C 0008AA4C  38 A1 00 16 */	addi r5, r1, 0x16
/* 8008FB50 0008AA50  38 C1 00 14 */	addi r6, r1, 0x14
/* 8008FB54 0008AA54  38 E1 00 4C */	addi r7, r1, 0x4c
/* 8008FB58 0008AA58  39 01 00 48 */	addi r8, r1, 0x48
/* 8008FB5C 0008AA5C  39 21 00 44 */	addi r9, r1, 0x44
/* 8008FB60 0008AA60  39 41 00 12 */	addi r10, r1, 0x12
/* 8008FB64 0008AA64  48 05 0A 4D */	bl GXGetTexObjAll
/* 8008FB68 0008AA68  93 E1 00 08 */	stw r31, 8(r1)
/* 8008FB6C 0008AA6C  7F 83 E3 78 */	mr r3, r28
/* 8008FB70 0008AA70  38 81 00 40 */	addi r4, r1, 0x40
/* 8008FB74 0008AA74  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8008FB78 0008AA78  38 C1 00 38 */	addi r6, r1, 0x38
/* 8008FB7C 0008AA7C  38 E1 00 34 */	addi r7, r1, 0x34
/* 8008FB80 0008AA80  39 01 00 30 */	addi r8, r1, 0x30
/* 8008FB84 0008AA84  39 21 00 11 */	addi r9, r1, 0x11
/* 8008FB88 0008AA88  39 41 00 10 */	addi r10, r1, 0x10
/* 8008FB8C 0008AA8C  48 05 0A DD */	bl GXGetTexObjLODAll
/* 8008FB90 0008AA90  80 95 00 00 */	lwz r4, 0(r21)
/* 8008FB94 0008AA94  7F 83 E3 78 */	mr r3, r28
/* 8008FB98 0008AA98  80 15 00 04 */	lwz r0, 4(r21)
/* 8008FB9C 0008AA9C  90 9C 00 00 */	stw r4, 0(r28)
/* 8008FBA0 0008AAA0  80 95 00 08 */	lwz r4, 8(r21)
/* 8008FBA4 0008AAA4  90 1C 00 04 */	stw r0, 4(r28)
/* 8008FBA8 0008AAA8  80 15 00 0C */	lwz r0, 0xc(r21)
/* 8008FBAC 0008AAAC  90 9C 00 08 */	stw r4, 8(r28)
/* 8008FBB0 0008AAB0  80 95 00 10 */	lwz r4, 0x10(r21)
/* 8008FBB4 0008AAB4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8008FBB8 0008AAB8  80 15 00 14 */	lwz r0, 0x14(r21)
/* 8008FBBC 0008AABC  90 9C 00 10 */	stw r4, 0x10(r28)
/* 8008FBC0 0008AAC0  80 95 00 18 */	lwz r4, 0x18(r21)
/* 8008FBC4 0008AAC4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8008FBC8 0008AAC8  80 15 00 1C */	lwz r0, 0x1c(r21)
/* 8008FBCC 0008AACC  90 9C 00 18 */	stw r4, 0x18(r28)
/* 8008FBD0 0008AAD0  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 8008FBD4 0008AAD4  80 81 00 40 */	lwz r4, 0x40(r1)
/* 8008FBD8 0008AAD8  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8008FBDC 0008AADC  48 05 09 AD */	bl GXInitTexObjFilter
/* 8008FBE0 0008AAE0  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8008FBE4 0008AAE4  7F 83 E3 78 */	mr r3, r28
/* 8008FBE8 0008AAE8  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8008FBEC 0008AAEC  48 05 09 81 */	bl GXInitTexObjWrapMode
/* 8008FBF0 0008AAF0  48 00 00 44 */	b lbl_8008FC34
lbl_8008FBF4:
/* 8008FBF4 0008AAF4  80 75 00 00 */	lwz r3, 0(r21)
/* 8008FBF8 0008AAF8  80 15 00 04 */	lwz r0, 4(r21)
/* 8008FBFC 0008AAFC  90 7C 00 00 */	stw r3, 0(r28)
/* 8008FC00 0008AB00  80 75 00 08 */	lwz r3, 8(r21)
/* 8008FC04 0008AB04  90 1C 00 04 */	stw r0, 4(r28)
/* 8008FC08 0008AB08  80 15 00 0C */	lwz r0, 0xc(r21)
/* 8008FC0C 0008AB0C  90 7C 00 08 */	stw r3, 8(r28)
/* 8008FC10 0008AB10  80 75 00 10 */	lwz r3, 0x10(r21)
/* 8008FC14 0008AB14  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8008FC18 0008AB18  80 15 00 14 */	lwz r0, 0x14(r21)
/* 8008FC1C 0008AB1C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8008FC20 0008AB20  80 75 00 18 */	lwz r3, 0x18(r21)
/* 8008FC24 0008AB24  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8008FC28 0008AB28  80 15 00 1C */	lwz r0, 0x1c(r21)
/* 8008FC2C 0008AB2C  90 7C 00 18 */	stw r3, 0x18(r28)
/* 8008FC30 0008AB30  90 1C 00 1C */	stw r0, 0x1c(r28)
lbl_8008FC34:
/* 8008FC34 0008AB34  2C 17 00 00 */	cmpwi r23, 0
/* 8008FC38 0008AB38  41 82 00 80 */	beq lbl_8008FCB8
/* 8008FC3C 0008AB3C  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8008FC40 0008AB40  7C 00 C0 40 */	cmplw r0, r24
/* 8008FC44 0008AB44  40 80 00 74 */	bge lbl_8008FCB8
/* 8008FC48 0008AB48  7E 43 93 78 */	mr r3, r18
/* 8008FC4C 0008AB4C  4B FC 68 05 */	bl GetResTev__Q34nw4r3g3d6ResMatFv
/* 8008FC50 0008AB50  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 8008FC54 0008AB54  90 61 00 28 */	stw r3, 0x28(r1)
/* 8008FC58 0008AB58  7F 97 02 14 */	add r28, r23, r0
/* 8008FC5C 0008AB5C  3B 20 00 00 */	li r25, 0
/* 8008FC60 0008AB60  48 00 00 44 */	b lbl_8008FCA4
lbl_8008FC64:
/* 8008FC64 0008AB64  38 61 00 28 */	addi r3, r1, 0x28
/* 8008FC68 0008AB68  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8008FC6C 0008AB6C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8008FC70 0008AB70  38 C1 00 20 */	addi r6, r1, 0x20
/* 8008FC74 0008AB74  38 E0 00 00 */	li r7, 0
/* 8008FC78 0008AB78  4B FC 49 0D */	bl GXGetTevOrder__Q34nw4r3g3d6ResTevCF13_GXTevStageIDP13_GXTexCoordIDP11_GXTexMapIDP12_GXChannelID
/* 8008FC7C 0008AB7C  2C 03 00 00 */	cmpwi r3, 0
/* 8008FC80 0008AB80  41 82 00 20 */	beq lbl_8008FCA0
/* 8008FC84 0008AB84  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8008FC88 0008AB88  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8008FC8C 0008AB8C  7C 03 00 00 */	cmpw r3, r0
/* 8008FC90 0008AB90  40 82 00 10 */	bne lbl_8008FCA0
/* 8008FC94 0008AB94  98 7C 00 02 */	stb r3, 2(r28)
/* 8008FC98 0008AB98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008FC9C 0008AB9C  98 1C 00 03 */	stb r0, 3(r28)
lbl_8008FCA0:
/* 8008FCA0 0008ABA0  3B 39 00 01 */	addi r25, r25, 1
lbl_8008FCA4:
/* 8008FCA4 0008ABA4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8008FCA8 0008ABA8  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8008FCAC 0008ABAC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8008FCB0 0008ABB0  7C 04 00 40 */	cmplw r4, r0
/* 8008FCB4 0008ABB4  41 80 FF B0 */	blt lbl_8008FC64
lbl_8008FCB8:
/* 8008FCB8 0008ABB8  3B 7B 00 01 */	addi r27, r27, 1
lbl_8008FCBC:
/* 8008FCBC 0008ABBC  3B 5A 00 01 */	addi r26, r26, 1
lbl_8008FCC0:
/* 8008FCC0 0008ABC0  80 92 00 00 */	lwz r4, 0(r18)
/* 8008FCC4 0008ABC4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8008FCC8 0008ABC8  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8008FCCC 0008ABCC  7C 03 00 40 */	cmplw r3, r0
/* 8008FCD0 0008ABD0  41 80 FD 98 */	blt lbl_8008FA68
/* 8008FCD4 0008ABD4  7F 63 DB 78 */	mr r3, r27
lbl_8008FCD8:
/* 8008FCD8 0008ABD8  BA 41 00 58 */	lmw r18, 0x58(r1)
/* 8008FCDC 0008ABDC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8008FCE0 0008ABE0  7C 08 03 A6 */	mtlr r0
/* 8008FCE4 0008ABE4  38 21 00 90 */	addi r1, r1, 0x90
/* 8008FCE8 0008ABE8  4E 80 00 20 */	blr 

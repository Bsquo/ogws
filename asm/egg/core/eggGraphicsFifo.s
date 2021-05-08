.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global sGraphicsFifo__Q23EGG12GraphicsFifo
sGraphicsFifo__Q23EGG12GraphicsFifo:
	.skip 0x4
.global sGpStatus__Q23EGG12GraphicsFifo
sGpStatus__Q23EGG12GraphicsFifo:
	.skip 0x5
    # .fills to 0xC

.section .data, "wa"
.balign 0x8
.global __vt__Q23EGG12GraphicsFifo
__vt__Q23EGG12GraphicsFifo:
    .long 0
    .long 0
    .long __dt__Q23EGG12GraphicsFifoFv
    .long 0

.section .rodata, "a"
.balign 0x8
.global lbl_8037A418
lbl_8037A418:
	.string "eggGraphicsFifo.cpp"
    .string "!sGraphicsFifo"
    .string "OSIsMEM1Region( heap )"
    .string "mBufBase"

.section .text, "ax"
.global create__Q23EGG12GraphicsFifoFUlPQ23EGG4Heap
create__Q23EGG12GraphicsFifoFUlPQ23EGG4Heap:
/* 800A4394 0009F294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4398 0009F298  7C 08 02 A6 */	mflr r0
/* 800A439C 0009F29C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A43A0 0009F2A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A43A4 0009F2A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A43A8 0009F2A8  7C 9E 23 78 */	mr r30, r4
/* 800A43AC 0009F2AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A43B0 0009F2B0  7C 7D 1B 78 */	mr r29, r3
/* 800A43B4 0009F2B4  80 0D 99 48 */	lwz r0, sGraphicsFifo__Q23EGG12GraphicsFifo-_SDA_BASE_(r13)
/* 800A43B8 0009F2B8  2C 00 00 00 */	cmpwi r0, 0
/* 800A43BC 0009F2BC  41 82 00 1C */	beq lbl_800A43D8
/* 800A43C0 0009F2C0  3C 60 80 38 */	lis r3, lbl_8037A418@ha
/* 800A43C4 0009F2C4  38 80 00 3B */	li r4, 0x3b
/* 800A43C8 0009F2C8  38 63 A4 18 */	addi r3, r3, lbl_8037A418@l
/* 800A43CC 0009F2CC  38 A3 00 14 */	addi r5, r3, 0x14
/* 800A43D0 0009F2D0  4C C6 31 82 */	crclr 6
/* 800A43D4 0009F2D4  4B FF DB 35 */	bl system_halt
lbl_800A43D8:
/* 800A43D8 0009F2D8  2C 1E 00 00 */	cmpwi r30, 0
/* 800A43DC 0009F2DC  40 82 00 08 */	bne lbl_800A43E4
/* 800A43E0 0009F2E0  83 CD 99 28 */	lwz r30, sCurrentHeap__Q23EGG4Heap-_SDA_BASE_(r13)
lbl_800A43E4:
/* 800A43E4 0009F2E4  57 C0 00 87 */	rlwinm. r0, r30, 0, 2, 3
/* 800A43E8 0009F2E8  41 82 00 1C */	beq lbl_800A4404
/* 800A43EC 0009F2EC  3C 60 80 38 */	lis r3, lbl_8037A418@ha
/* 800A43F0 0009F2F0  38 80 00 45 */	li r4, 0x45
/* 800A43F4 0009F2F4  38 63 A4 18 */	addi r3, r3, lbl_8037A418@l
/* 800A43F8 0009F2F8  38 A3 00 23 */	addi r5, r3, 0x23
/* 800A43FC 0009F2FC  4C C6 31 82 */	crclr 6
/* 800A4400 0009F300  4B FF DB 09 */	bl system_halt
lbl_800A4404:
/* 800A4404 0009F304  7F C4 F3 78 */	mr r4, r30
/* 800A4408 0009F308  38 60 00 10 */	li r3, 0x10
/* 800A440C 0009F30C  38 A0 00 04 */	li r5, 4
/* 800A4410 0009F310  4B FF EE 41 */	bl __nw__FUlPQ23EGG4Heapi
/* 800A4414 0009F314  2C 03 00 00 */	cmpwi r3, 0
/* 800A4418 0009F318  7C 7F 1B 78 */	mr r31, r3
/* 800A441C 0009F31C  41 82 00 64 */	beq lbl_800A4480
/* 800A4420 0009F320  3C 80 80 3A */	lis r4, __vt__Q23EGG12GraphicsFifo@ha
/* 800A4424 0009F324  38 1D 00 1F */	addi r0, r29, 0x1f
/* 800A4428 0009F328  38 84 81 C8 */	addi r4, r4, __vt__Q23EGG12GraphicsFifo@l
/* 800A442C 0009F32C  7F C5 F3 78 */	mr r5, r30
/* 800A4430 0009F330  90 83 00 00 */	stw r4, 0(r3)
/* 800A4434 0009F334  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 800A4438 0009F338  38 80 00 20 */	li r4, 0x20
/* 800A443C 0009F33C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 800A4440 0009F340  38 66 00 A0 */	addi r3, r6, 0xa0
/* 800A4444 0009F344  4B FF E9 F5 */	bl alloc__Q23EGG4HeapFUliPQ23EGG4Heap
/* 800A4448 0009F348  38 03 00 1F */	addi r0, r3, 0x1f
/* 800A444C 0009F34C  54 00 00 35 */	rlwinm. r0, r0, 0, 0, 0x1a
/* 800A4450 0009F350  90 1F 00 08 */	stw r0, 8(r31)
/* 800A4454 0009F354  40 82 00 1C */	bne lbl_800A4470
/* 800A4458 0009F358  3C 60 80 38 */	lis r3, lbl_8037A418@ha
/* 800A445C 0009F35C  38 80 00 91 */	li r4, 0x91
/* 800A4460 0009F360  38 63 A4 18 */	addi r3, r3, lbl_8037A418@l
/* 800A4464 0009F364  38 A3 00 3A */	addi r5, r3, 0x3a
/* 800A4468 0009F368  4C C6 31 82 */	crclr 6
/* 800A446C 0009F36C  4B FF DA 9D */	bl system_halt
lbl_800A4470:
/* 800A4470 0009F370  80 7F 00 08 */	lwz r3, 8(r31)
/* 800A4474 0009F374  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 800A4478 0009F378  48 03 6D BD */	bl func_800DB234
/* 800A447C 0009F37C  90 7F 00 04 */	stw r3, 4(r31)
lbl_800A4480:
/* 800A4480 0009F380  93 ED 99 48 */	stw r31, sGraphicsFifo__Q23EGG12GraphicsFifo-_SDA_BASE_(r13)
/* 800A4484 0009F384  7F E3 FB 78 */	mr r3, r31
/* 800A4488 0009F388  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A448C 0009F38C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A4490 0009F390  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A4494 0009F394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4498 0009F398  7C 08 03 A6 */	mtlr r0
/* 800A449C 0009F39C  38 21 00 20 */	addi r1, r1, 0x20
/* 800A44A0 0009F3A0  4E 80 00 20 */	blr 

.global __dt__Q23EGG12GraphicsFifoFv
__dt__Q23EGG12GraphicsFifoFv:
/* 800A44A4 0009F3A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A44A8 0009F3A8  7C 08 02 A6 */	mflr r0
/* 800A44AC 0009F3AC  2C 03 00 00 */	cmpwi r3, 0
/* 800A44B0 0009F3B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A44B4 0009F3B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A44B8 0009F3B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A44BC 0009F3BC  7C 9E 23 78 */	mr r30, r4
/* 800A44C0 0009F3C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A44C4 0009F3C4  7C 7D 1B 78 */	mr r29, r3
/* 800A44C8 0009F3C8  41 82 00 54 */	beq lbl_800A451C
/* 800A44CC 0009F3CC  3C 80 80 3A */	lis r4, __vt__Q23EGG12GraphicsFifo@ha
/* 800A44D0 0009F3D0  3B ED 99 4C */	addi r31, r13, sGpStatus__Q23EGG12GraphicsFifo-_SDA_BASE_
/* 800A44D4 0009F3D4  38 84 81 C8 */	addi r4, r4, __vt__Q23EGG12GraphicsFifo@l
/* 800A44D8 0009F3D8  90 83 00 00 */	stw r4, 0(r3)
lbl_800A44DC:
/* 800A44DC 0009F3DC  38 9F 00 01 */	addi r4, r31, 1
/* 800A44E0 0009F3E0  38 BF 00 02 */	addi r5, r31, 2
/* 800A44E4 0009F3E4  38 DF 00 03 */	addi r6, r31, 3
/* 800A44E8 0009F3E8  38 FF 00 04 */	addi r7, r31, 4
/* 800A44EC 0009F3EC  38 6D 99 4C */	addi r3, r13, sGpStatus__Q23EGG12GraphicsFifo-_SDA_BASE_
/* 800A44F0 0009F3F0  48 03 83 B5 */	bl func_800DC8A4
/* 800A44F4 0009F3F4  88 1F 00 02 */	lbz r0, 2(r31)
/* 800A44F8 0009F3F8  2C 00 00 00 */	cmpwi r0, 0
/* 800A44FC 0009F3FC  41 82 FF E0 */	beq lbl_800A44DC
/* 800A4500 0009F400  80 7D 00 08 */	lwz r3, 8(r29)
/* 800A4504 0009F404  38 80 00 00 */	li r4, 0
/* 800A4508 0009F408  4B FF EB 99 */	bl free__Q23EGG4HeapFPvPQ23EGG4Heap
/* 800A450C 0009F40C  2C 1E 00 00 */	cmpwi r30, 0
/* 800A4510 0009F410  40 81 00 0C */	ble lbl_800A451C
/* 800A4514 0009F414  7F A3 EB 78 */	mr r3, r29
/* 800A4518 0009F418  4B FF ED 6D */	bl __dl__FPv
lbl_800A451C:
/* 800A451C 0009F41C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A4520 0009F420  7F A3 EB 78 */	mr r3, r29
/* 800A4524 0009F424  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A4528 0009F428  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A452C 0009F42C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A4530 0009F430  7C 08 03 A6 */	mtlr r0
/* 800A4534 0009F434  38 21 00 20 */	addi r1, r1, 0x20
/* 800A4538 0009F438  4E 80 00 20 */	blr 

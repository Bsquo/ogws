.include "macros.inc"

.section .data, "wa"
.global __vt__Q34nw4r3g3d6G3dObj
__vt__Q34nw4r3g3d6G3dObj:
    .long 0
    .long 0
    .long IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj
    .long 0
    .long __dt__Q34nw4r3g3d6G3dObjFv
    .long GetTypeObj__Q34nw4r3g3d6G3dObjCFv
    .long GetTypeName__Q34nw4r3g3d6G3dObjCFv
    .long 0

.section .rodata, "a"
.global lbl_803782F0
lbl_803782F0:
	.long 0x07
	.string "G3dObj"
	.balign 8

.section .text, "ax"
.global __dt__Q34nw4r3g3d6G3dObjFv
__dt__Q34nw4r3g3d6G3dObjFv:
/* 800634E8 0005E3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800634EC 0005E3EC  7C 08 02 A6 */	mflr r0
/* 800634F0 0005E3F0  2C 03 00 00 */	cmpwi r3, 0
/* 800634F4 0005E3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800634F8 0005E3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800634FC 0005E3FC  7C 7F 1B 78 */	mr r31, r3
/* 80063500 0005E400  41 82 00 1C */	beq lbl_8006351C
/* 80063504 0005E404  3C A0 80 39 */	lis r5, __vt__Q34nw4r3g3d6G3dObj@ha
/* 80063508 0005E408  7F E4 FB 78 */	mr r4, r31
/* 8006350C 0005E40C  38 A5 6E 90 */	addi r5, r5, __vt__Q34nw4r3g3d6G3dObj@l
/* 80063510 0005E410  90 A3 00 00 */	stw r5, 0(r3)
/* 80063514 0005E414  80 63 00 08 */	lwz r3, 8(r3)
/* 80063518 0005E418  48 08 3F 85 */	bl MEMFreeToAllocator
lbl_8006351C:
/* 8006351C 0005E41C  7F E3 FB 78 */	mr r3, r31
/* 80063520 0005E420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80063524 0005E424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80063528 0005E428  7C 08 03 A6 */	mtlr r0
/* 8006352C 0005E42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80063530 0005E430  4E 80 00 20 */	blr 

.global Destroy__Q34nw4r3g3d6G3dObjFv
Destroy__Q34nw4r3g3d6G3dObjFv:
/* 80063534 0005E434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80063538 0005E438  7C 08 02 A6 */	mflr r0
/* 8006353C 0005E43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80063540 0005E440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80063544 0005E444  7C 7F 1B 78 */	mr r31, r3
/* 80063548 0005E448  80 03 00 04 */	lwz r0, 4(r3)
/* 8006354C 0005E44C  2C 00 00 00 */	cmpwi r0, 0
/* 80063550 0005E450  41 82 00 28 */	beq lbl_80063578
/* 80063554 0005E454  7C 03 03 78 */	mr r3, r0
/* 80063558 0005E458  3C 80 00 01 */	lis r4, 0x00010001@ha
/* 8006355C 0005E45C  81 83 00 00 */	lwz r12, 0(r3)
/* 80063560 0005E460  7F E6 FB 78 */	mr r6, r31
/* 80063564 0005E464  38 84 00 01 */	addi r4, r4, 0x00010001@l
/* 80063568 0005E468  38 A0 00 00 */	li r5, 0
/* 8006356C 0005E46C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80063570 0005E470  7D 89 03 A6 */	mtctr r12
/* 80063574 0005E474  4E 80 04 21 */	bctrl 
lbl_80063578:
/* 80063578 0005E478  2C 1F 00 00 */	cmpwi r31, 0
/* 8006357C 0005E47C  41 82 00 1C */	beq lbl_80063598
/* 80063580 0005E480  81 9F 00 00 */	lwz r12, 0(r31)
/* 80063584 0005E484  7F E3 FB 78 */	mr r3, r31
/* 80063588 0005E488  38 80 00 01 */	li r4, 1
/* 8006358C 0005E48C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80063590 0005E490  7D 89 03 A6 */	mtctr r12
/* 80063594 0005E494  4E 80 04 21 */	bctrl 
lbl_80063598:
/* 80063598 0005E498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006359C 0005E49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800635A0 0005E4A0  7C 08 03 A6 */	mtlr r0
/* 800635A4 0005E4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800635A8 0005E4A8  4E 80 00 20 */	blr 

.global IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj
IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj:
/* 800635AC 0005E4AC  3C 60 80 38 */	lis r3, lbl_803782F0@ha
/* 800635B0 0005E4B0  80 04 00 00 */	lwz r0, 0(r4)
/* 800635B4 0005E4B4  38 63 82 F0 */	addi r3, r3, lbl_803782F0@l
/* 800635B8 0005E4B8  7C 00 18 50 */	subf r0, r0, r3
/* 800635BC 0005E4BC  7C 00 00 34 */	cntlzw r0, r0
/* 800635C0 0005E4C0  54 03 D9 7E */	srwi r3, r0, 5
/* 800635C4 0005E4C4  4E 80 00 20 */	blr 

.global GetTypeName__Q34nw4r3g3d6G3dObjCFv
GetTypeName__Q34nw4r3g3d6G3dObjCFv:
/* 800635C8 0005E4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800635CC 0005E4CC  7C 08 02 A6 */	mflr r0
/* 800635D0 0005E4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800635D4 0005E4D4  81 83 00 00 */	lwz r12, 0(r3)
/* 800635D8 0005E4D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800635DC 0005E4DC  7D 89 03 A6 */	mtctr r12
/* 800635E0 0005E4E0  4E 80 04 21 */	bctrl 
/* 800635E4 0005E4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800635E8 0005E4E8  38 63 00 04 */	addi r3, r3, 4
/* 800635EC 0005E4EC  7C 08 03 A6 */	mtlr r0
/* 800635F0 0005E4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800635F4 0005E4F4  4E 80 00 20 */	blr 

.global GetTypeObj__Q34nw4r3g3d6G3dObjCFv
GetTypeObj__Q34nw4r3g3d6G3dObjCFv:
/* 800635F8 0005E4F8  3C 60 80 38 */	lis r3, lbl_803782F0@ha
/* 800635FC 0005E4FC  38 63 82 F0 */	addi r3, r3, lbl_803782F0@l
/* 80063600 0005E500  4E 80 00 20 */	blr 

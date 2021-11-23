.include "macros.inc"

.section .text, "ax"
.global memmove
memmove:
/* 800B4DF8 000AFCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B4DFC 000AFCFC  7C 08 02 A6 */	mflr r0
/* 800B4E00 000AFD00  7C 66 22 78 */	xor r6, r3, r4
/* 800B4E04 000AFD04  28 05 00 20 */	cmplwi r5, 0x20
/* 800B4E08 000AFD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B4E0C 000AFD0C  7C C0 00 34 */	cntlzw r0, r6
/* 800B4E10 000AFD10  7C 60 00 30 */	slw r0, r3, r0
/* 800B4E14 000AFD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B4E18 000AFD18  7C 7F 1B 78 */	mr r31, r3
/* 800B4E1C 000AFD1C  54 07 0F FE */	srwi r7, r0, 0x1f
/* 800B4E20 000AFD20  41 80 00 40 */	blt lbl_800B4E60
/* 800B4E24 000AFD24  54 C0 07 BF */	clrlwi. r0, r6, 0x1e
/* 800B4E28 000AFD28  41 82 00 1C */	beq lbl_800B4E44
/* 800B4E2C 000AFD2C  2C 07 00 00 */	cmpwi r7, 0
/* 800B4E30 000AFD30  40 82 00 0C */	bne lbl_800B4E3C
/* 800B4E34 000AFD34  48 00 02 99 */	bl __copy_longs_unaligned
/* 800B4E38 000AFD38  48 00 00 20 */	b lbl_800B4E58
lbl_800B4E3C:
/* 800B4E3C 000AFD3C  48 00 03 51 */	bl __copy_longs_rev_unaligned
/* 800B4E40 000AFD40  48 00 00 18 */	b lbl_800B4E58
lbl_800B4E44:
/* 800B4E44 000AFD44  2C 07 00 00 */	cmpwi r7, 0
/* 800B4E48 000AFD48  40 82 00 0C */	bne lbl_800B4E54
/* 800B4E4C 000AFD4C  48 00 01 1D */	bl __copy_longs_aligned
/* 800B4E50 000AFD50  48 00 00 08 */	b lbl_800B4E58
lbl_800B4E54:
/* 800B4E54 000AFD54  48 00 01 D1 */	bl __copy_longs_rev_aligned
lbl_800B4E58:
/* 800B4E58 000AFD58  7F E3 FB 78 */	mr r3, r31
/* 800B4E5C 000AFD5C  48 00 00 54 */	b lbl_800B4EB0
lbl_800B4E60:
/* 800B4E60 000AFD60  2C 07 00 00 */	cmpwi r7, 0
/* 800B4E64 000AFD64  40 82 00 28 */	bne lbl_800B4E8C
/* 800B4E68 000AFD68  38 84 FF FF */	addi r4, r4, -1
/* 800B4E6C 000AFD6C  38 63 FF FF */	addi r3, r3, -1
/* 800B4E70 000AFD70  38 A5 00 01 */	addi r5, r5, 1
/* 800B4E74 000AFD74  48 00 00 0C */	b lbl_800B4E80
lbl_800B4E78:
/* 800B4E78 000AFD78  8C 04 00 01 */	lbzu r0, 1(r4)
/* 800B4E7C 000AFD7C  9C 03 00 01 */	stbu r0, 1(r3)
lbl_800B4E80:
/* 800B4E80 000AFD80  34 A5 FF FF */	addic. r5, r5, -1
/* 800B4E84 000AFD84  40 82 FF F4 */	bne lbl_800B4E78
/* 800B4E88 000AFD88  48 00 00 24 */	b lbl_800B4EAC
lbl_800B4E8C:
/* 800B4E8C 000AFD8C  7C 84 2A 14 */	add r4, r4, r5
/* 800B4E90 000AFD90  7C 63 2A 14 */	add r3, r3, r5
/* 800B4E94 000AFD94  38 A5 00 01 */	addi r5, r5, 1
/* 800B4E98 000AFD98  48 00 00 0C */	b lbl_800B4EA4
lbl_800B4E9C:
/* 800B4E9C 000AFD9C  8C 04 FF FF */	lbzu r0, -1(r4)
/* 800B4EA0 000AFDA0  9C 03 FF FF */	stbu r0, -1(r3)
lbl_800B4EA4:
/* 800B4EA4 000AFDA4  34 A5 FF FF */	addic. r5, r5, -1
/* 800B4EA8 000AFDA8  40 82 FF F4 */	bne lbl_800B4E9C
lbl_800B4EAC:
/* 800B4EAC 000AFDAC  7F E3 FB 78 */	mr r3, r31
lbl_800B4EB0:
/* 800B4EB0 000AFDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B4EB4 000AFDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B4EB8 000AFDB8  7C 08 03 A6 */	mtlr r0
/* 800B4EBC 000AFDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B4EC0 000AFDC0  4E 80 00 20 */	blr 

.global memchr
memchr:
/* 800B4EC4 000AFDC4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 800B4EC8 000AFDC8  38 63 FF FF */	addi r3, r3, -1
/* 800B4ECC 000AFDCC  38 A5 00 01 */	addi r5, r5, 1
/* 800B4ED0 000AFDD0  48 00 00 10 */	b lbl_800B4EE0
lbl_800B4ED4:
/* 800B4ED4 000AFDD4  8C 03 00 01 */	lbzu r0, 1(r3)
/* 800B4ED8 000AFDD8  7C 00 20 40 */	cmplw r0, r4
/* 800B4EDC 000AFDDC  4D 82 00 20 */	beqlr 
lbl_800B4EE0:
/* 800B4EE0 000AFDE0  34 A5 FF FF */	addic. r5, r5, -1
/* 800B4EE4 000AFDE4  40 82 FF F0 */	bne lbl_800B4ED4
/* 800B4EE8 000AFDE8  38 60 00 00 */	li r3, 0
/* 800B4EEC 000AFDEC  4E 80 00 20 */	blr 

.global __memrchr
__memrchr:
/* 800B4EF0 000AFDF0  7C 63 2A 14 */	add r3, r3, r5
/* 800B4EF4 000AFDF4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 800B4EF8 000AFDF8  38 A5 00 01 */	addi r5, r5, 1
/* 800B4EFC 000AFDFC  48 00 00 10 */	b lbl_800B4F0C
lbl_800B4F00:
/* 800B4F00 000AFE00  8C 03 FF FF */	lbzu r0, -1(r3)
/* 800B4F04 000AFE04  7C 00 20 40 */	cmplw r0, r4
/* 800B4F08 000AFE08  4D 82 00 20 */	beqlr 
lbl_800B4F0C:
/* 800B4F0C 000AFE0C  34 A5 FF FF */	addic. r5, r5, -1
/* 800B4F10 000AFE10  40 82 FF F0 */	bne lbl_800B4F00
/* 800B4F14 000AFE14  38 60 00 00 */	li r3, 0
/* 800B4F18 000AFE18  4E 80 00 20 */	blr 

.global memcmp
memcmp:
/* 800B4F1C 000AFE1C  38 E4 FF FF */	addi r7, r4, -1
/* 800B4F20 000AFE20  38 C3 FF FF */	addi r6, r3, -1
/* 800B4F24 000AFE24  38 85 00 01 */	addi r4, r5, 1
/* 800B4F28 000AFE28  48 00 00 30 */	b lbl_800B4F58
lbl_800B4F2C:
/* 800B4F2C 000AFE2C  8C 66 00 01 */	lbzu r3, 1(r6)
/* 800B4F30 000AFE30  8C 07 00 01 */	lbzu r0, 1(r7)
/* 800B4F34 000AFE34  7C 03 00 40 */	cmplw r3, r0
/* 800B4F38 000AFE38  41 82 00 20 */	beq lbl_800B4F58
/* 800B4F3C 000AFE3C  88 86 00 00 */	lbz r4, 0(r6)
/* 800B4F40 000AFE40  38 60 00 01 */	li r3, 1
/* 800B4F44 000AFE44  88 07 00 00 */	lbz r0, 0(r7)
/* 800B4F48 000AFE48  7C 04 00 40 */	cmplw r4, r0
/* 800B4F4C 000AFE4C  4C 80 00 20 */	bgelr 
/* 800B4F50 000AFE50  38 60 FF FF */	li r3, -1
/* 800B4F54 000AFE54  4E 80 00 20 */	blr 
lbl_800B4F58:
/* 800B4F58 000AFE58  34 84 FF FF */	addic. r4, r4, -1
/* 800B4F5C 000AFE5C  40 82 FF D0 */	bne lbl_800B4F2C
/* 800B4F60 000AFE60  38 60 00 00 */	li r3, 0
/* 800B4F64 000AFE64  4E 80 00 20 */	blr 
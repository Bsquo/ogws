.include "macros.inc"

.section .text, "ax"

.global Get__Q34nw4r3lyt6TexMapCFP9_GXTexObj
Get__Q34nw4r3lyt6TexMapCFP9_GXTexObj:
/* 800819F8 0007C8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800819FC 0007C8FC  7C 08 02 A6 */	mflr r0
/* 80081A00 0007C900  81 43 00 18 */	lwz r10, 0x18(r3)
/* 80081A04 0007C904  90 01 00 24 */	stw r0, 0x24(r1)
/* 80081A08 0007C908  55 47 27 3E */	srwi r7, r10, 0x1c
/* 80081A0C 0007C90C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80081A10 0007C910  38 07 FF F8 */	addi r0, r7, -8
/* 80081A14 0007C914  28 00 00 02 */	cmplwi r0, 2
/* 80081A18 0007C918  7C 9F 23 78 */	mr r31, r4
/* 80081A1C 0007C91C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80081A20 0007C920  7C 7E 1B 78 */	mr r30, r3
/* 80081A24 0007C924  41 81 00 3C */	bgt lbl_80081A60
/* 80081A28 0007C928  7F E3 FB 78 */	mr r3, r31
/* 80081A2C 0007C92C  48 05 ED 21 */	bl func_800E074C
/* 80081A30 0007C930  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80081A34 0007C934  90 61 00 08 */	stw r3, 8(r1)
/* 80081A38 0007C938  7F E3 FB 78 */	mr r3, r31
/* 80081A3C 0007C93C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80081A40 0007C940  54 07 27 3E */	srwi r7, r0, 0x1c
/* 80081A44 0007C944  A0 BE 00 08 */	lhz r5, 8(r30)
/* 80081A48 0007C948  54 08 3F BE */	rlwinm r8, r0, 7, 0x1e, 0x1f
/* 80081A4C 0007C94C  A0 DE 00 0A */	lhz r6, 0xa(r30)
/* 80081A50 0007C950  54 09 4F BE */	rlwinm r9, r0, 9, 0x1e, 0x1f
/* 80081A54 0007C954  54 0A 2F FE */	rlwinm r10, r0, 5, 0x1f, 0x1f
/* 80081A58 0007C958  48 05 E9 C9 */	bl func_800E0420
/* 80081A5C 0007C95C  48 00 00 24 */	b lbl_80081A80
lbl_80081A60:
/* 80081A60 0007C960  80 9E 00 00 */	lwz r4, 0(r30)
/* 80081A64 0007C964  7F E3 FB 78 */	mr r3, r31
/* 80081A68 0007C968  A0 BE 00 08 */	lhz r5, 8(r30)
/* 80081A6C 0007C96C  55 48 3F BE */	rlwinm r8, r10, 7, 0x1e, 0x1f
/* 80081A70 0007C970  55 49 4F BE */	rlwinm r9, r10, 9, 0x1e, 0x1f
/* 80081A74 0007C974  A0 DE 00 0A */	lhz r6, 0xa(r30)
/* 80081A78 0007C978  55 4A 2F FE */	rlwinm r10, r10, 5, 0x1f, 0x1f
/* 80081A7C 0007C97C  48 05 E7 99 */	bl GXInitTexObj
lbl_80081A80:
/* 80081A80 0007C980  A0 9E 00 14 */	lhz r4, 0x14(r30)
/* 80081A84 0007C984  3C A0 43 30 */	lis r5, 0x4330
/* 80081A88 0007C988  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80081A8C 0007C98C  7F E3 FB 78 */	mr r3, r31
/* 80081A90 0007C990  90 81 00 14 */	stw r4, 0x14(r1)
/* 80081A94 0007C994  C8 62 8A D8 */	lfd f3, lbl_804C04F8-_SDA2_BASE_(r2)
/* 80081A98 0007C998  54 04 67 7E */	rlwinm r4, r0, 0xc, 0x1d, 0x1f
/* 80081A9C 0007C99C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80081AA0 0007C9A0  54 05 7F 7E */	rlwinm r5, r0, 0xf, 0x1d, 0x1f
/* 80081AA4 0007C9A4  C0 02 8A D0 */	lfs f0, lbl_804C04F0-_SDA2_BASE_(r2)
/* 80081AA8 0007C9A8  54 06 87 FE */	rlwinm r6, r0, 0x10, 0x1f, 0x1f
/* 80081AAC 0007C9AC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80081AB0 0007C9B0  54 07 8F FE */	rlwinm r7, r0, 0x11, 0x1f, 0x1f
/* 80081AB4 0007C9B4  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80081AB8 0007C9B8  54 08 9F BE */	rlwinm r8, r0, 0x13, 0x1e, 0x1f
/* 80081ABC 0007C9BC  EC 61 18 28 */	fsubs f3, f1, f3
/* 80081AC0 0007C9C0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80081AC4 0007C9C4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80081AC8 0007C9C8  48 05 E9 A1 */	bl GXInitTexObjLOD
/* 80081ACC 0007C9CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80081AD0 0007C9D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80081AD4 0007C9D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80081AD8 0007C9D8  7C 08 03 A6 */	mtlr r0
/* 80081ADC 0007C9DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80081AE0 0007C9E0  4E 80 00 20 */	blr 

.global Get__Q34nw4r3lyt6TexMapCFP10_GXTlutObj
Get__Q34nw4r3lyt6TexMapCFP10_GXTlutObj:
/* 80081AE4 0007C9E4  7C 65 1B 78 */	mr r5, r3
/* 80081AE8 0007C9E8  7C 83 23 78 */	mr r3, r4
/* 80081AEC 0007C9EC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 80081AF0 0007C9F0  80 85 00 04 */	lwz r4, 4(r5)
/* 80081AF4 0007C9F4  A0 C5 00 16 */	lhz r6, 0x16(r5)
/* 80081AF8 0007C9F8  54 05 AF BE */	rlwinm r5, r0, 0x15, 0x1e, 0x1f
/* 80081AFC 0007C9FC  48 05 EE 10 */	b func_800E090C

.global Set__Q34nw4r3lyt6TexMapFP10TPLPaletteUl
Set__Q34nw4r3lyt6TexMapFP10TPLPaletteUl:
/* 80081B00 0007CA00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80081B04 0007CA04  7C 08 02 A6 */	mflr r0
/* 80081B08 0007CA08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80081B0C 0007CA0C  3C 00 80 00 */	lis r0, 0x8000
/* 80081B10 0007CA10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80081B14 0007CA14  7C BF 2B 78 */	mr r31, r5
/* 80081B18 0007CA18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80081B1C 0007CA1C  7C 9E 23 78 */	mr r30, r4
/* 80081B20 0007CA20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80081B24 0007CA24  7C 7D 1B 78 */	mr r29, r3
/* 80081B28 0007CA28  80 C4 00 08 */	lwz r6, 8(r4)
/* 80081B2C 0007CA2C  7C 06 00 40 */	cmplw r6, r0
/* 80081B30 0007CA30  40 80 00 0C */	bge lbl_80081B3C
/* 80081B34 0007CA34  7F C3 F3 78 */	mr r3, r30
/* 80081B38 0007CA38  48 0B FB 05 */	bl func_8014163C
lbl_80081B3C:
/* 80081B3C 0007CA3C  7F C3 F3 78 */	mr r3, r30
/* 80081B40 0007CA40  7F E4 FB 78 */	mr r4, r31
/* 80081B44 0007CA44  48 0B FC 0D */	bl func_80141750
/* 80081B48 0007CA48  7C 7F 1B 78 */	mr r31, r3
/* 80081B4C 0007CA4C  7F A3 EB 78 */	mr r3, r29
/* 80081B50 0007CA50  7F E4 FB 78 */	mr r4, r31
/* 80081B54 0007CA54  48 00 00 95 */	bl SetNoWrap__Q34nw4r3lyt6TexMapFPC13TPLDescriptor
/* 80081B58 0007CA58  80 7F 00 00 */	lwz r3, 0(r31)
/* 80081B5C 0007CA5C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80081B60 0007CA60  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80081B64 0007CA64  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80081B68 0007CA68  50 80 C9 4C */	rlwimi r0, r4, 0x19, 5, 6
/* 80081B6C 0007CA6C  50 60 B9 D0 */	rlwimi r0, r3, 0x17, 7, 8
/* 80081B70 0007CA70  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80081B74 0007CA74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80081B78 0007CA78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80081B7C 0007CA7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80081B80 0007CA80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80081B84 0007CA84  7C 08 03 A6 */	mtlr r0
/* 80081B88 0007CA88  38 21 00 20 */	addi r1, r1, 0x20
/* 80081B8C 0007CA8C  4E 80 00 20 */	blr 

.global SetNoWrap__Q34nw4r3lyt6TexMapFRCQ34nw4r3lyt6TexMap
SetNoWrap__Q34nw4r3lyt6TexMapFRCQ34nw4r3lyt6TexMap:
/* 80081B90 0007CA90  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80081B94 0007CA94  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80081B98 0007CA98  50 A0 01 4C */	rlwimi r0, r5, 0, 5, 6
/* 80081B9C 0007CA9C  81 24 00 00 */	lwz r9, 0(r4)
/* 80081BA0 0007CAA0  50 A0 01 D0 */	rlwimi r0, r5, 0, 7, 8
/* 80081BA4 0007CAA4  81 04 00 04 */	lwz r8, 4(r4)
/* 80081BA8 0007CAA8  A0 E4 00 08 */	lhz r7, 8(r4)
/* 80081BAC 0007CAAC  A0 C4 00 0A */	lhz r6, 0xa(r4)
/* 80081BB0 0007CAB0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80081BB4 0007CAB4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80081BB8 0007CAB8  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80081BBC 0007CABC  A0 84 00 16 */	lhz r4, 0x16(r4)
/* 80081BC0 0007CAC0  91 23 00 00 */	stw r9, 0(r3)
/* 80081BC4 0007CAC4  91 03 00 04 */	stw r8, 4(r3)
/* 80081BC8 0007CAC8  B0 E3 00 08 */	sth r7, 8(r3)
/* 80081BCC 0007CACC  B0 C3 00 0A */	sth r6, 0xa(r3)
/* 80081BD0 0007CAD0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80081BD4 0007CAD4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80081BD8 0007CAD8  B0 A3 00 14 */	sth r5, 0x14(r3)
/* 80081BDC 0007CADC  B0 83 00 16 */	sth r4, 0x16(r3)
/* 80081BE0 0007CAE0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80081BE4 0007CAE4  4E 80 00 20 */	blr 

.global SetNoWrap__Q34nw4r3lyt6TexMapFPC13TPLDescriptor
SetNoWrap__Q34nw4r3lyt6TexMapFPC13TPLDescriptor:
/* 80081BE8 0007CAE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80081BEC 0007CAEC  3C 00 43 30 */	lis r0, 0x4330
/* 80081BF0 0007CAF0  80 E4 00 00 */	lwz r7, 0(r4)
/* 80081BF4 0007CAF4  81 04 00 04 */	lwz r8, 4(r4)
/* 80081BF8 0007CAF8  80 87 00 08 */	lwz r4, 8(r7)
/* 80081BFC 0007CAFC  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80081C00 0007CB00  2C 08 00 00 */	cmpwi r8, 0
/* 80081C04 0007CB04  90 83 00 00 */	stw r4, 0(r3)
/* 80081C08 0007CB08  C8 62 8A D8 */	lfd f3, lbl_804C04F8-_SDA2_BASE_(r2)
/* 80081C0C 0007CB0C  A0 A7 00 00 */	lhz r5, 0(r7)
/* 80081C10 0007CB10  A0 87 00 02 */	lhz r4, 2(r7)
/* 80081C14 0007CB14  90 01 00 08 */	stw r0, 8(r1)
/* 80081C18 0007CB18  C0 02 8A E0 */	lfs f0, lbl_804C0500-_SDA2_BASE_(r2)
/* 80081C1C 0007CB1C  B0 83 00 08 */	sth r4, 8(r3)
/* 80081C20 0007CB20  B0 A3 00 0A */	sth r5, 0xa(r3)
/* 80081C24 0007CB24  80 87 00 04 */	lwz r4, 4(r7)
/* 80081C28 0007CB28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80081C2C 0007CB2C  50 86 E0 06 */	rlwimi r6, r4, 0x1c, 0, 3
/* 80081C30 0007CB30  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80081C34 0007CB34  88 A7 00 21 */	lbz r5, 0x21(r7)
/* 80081C38 0007CB38  88 07 00 22 */	lbz r0, 0x22(r7)
/* 80081C3C 0007CB3C  7C 85 00 50 */	subf r4, r5, r0
/* 80081C40 0007CB40  7C 00 28 50 */	subf r0, r0, r5
/* 80081C44 0007CB44  7C 80 03 78 */	or r0, r4, r0
/* 80081C48 0007CB48  50 06 E1 08 */	rlwimi r6, r0, 0x1c, 4, 4
/* 80081C4C 0007CB4C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80081C50 0007CB50  80 07 00 14 */	lwz r0, 0x14(r7)
/* 80081C54 0007CB54  80 87 00 18 */	lwz r4, 0x18(r7)
/* 80081C58 0007CB58  50 06 A2 56 */	rlwimi r6, r0, 0x14, 9, 0xb
/* 80081C5C 0007CB5C  50 86 8B 1C */	rlwimi r6, r4, 0x11, 0xc, 0xe
/* 80081C60 0007CB60  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80081C64 0007CB64  88 87 00 22 */	lbz r4, 0x22(r7)
/* 80081C68 0007CB68  88 07 00 21 */	lbz r0, 0x21(r7)
/* 80081C6C 0007CB6C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80081C70 0007CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80081C74 0007CB74  C8 41 00 08 */	lfd f2, 8(r1)
/* 80081C78 0007CB78  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80081C7C 0007CB7C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80081C80 0007CB80  EC 21 18 28 */	fsubs f1, f1, f3
/* 80081C84 0007CB84  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80081C88 0007CB88  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80081C8C 0007CB8C  C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 80081C90 0007CB90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80081C94 0007CB94  FC 00 00 1E */	fctiwz f0, f0
/* 80081C98 0007CB98  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80081C9C 0007CB9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80081CA0 0007CBA0  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80081CA4 0007CBA4  88 87 00 20 */	lbz r4, 0x20(r7)
/* 80081CA8 0007CBA8  7C 04 00 D0 */	neg r0, r4
/* 80081CAC 0007CBAC  7C 00 23 78 */	or r0, r0, r4
/* 80081CB0 0007CBB0  50 06 84 20 */	rlwimi r6, r0, 0x10, 0x10, 0x10
/* 80081CB4 0007CBB4  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80081CB8 0007CBB8  41 82 00 24 */	beq lbl_80081CDC
/* 80081CBC 0007CBBC  80 08 00 08 */	lwz r0, 8(r8)
/* 80081CC0 0007CBC0  90 03 00 04 */	stw r0, 4(r3)
/* 80081CC4 0007CBC4  80 08 00 04 */	lwz r0, 4(r8)
/* 80081CC8 0007CBC8  50 06 5C E8 */	rlwimi r6, r0, 0xb, 0x13, 0x14
/* 80081CCC 0007CBCC  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80081CD0 0007CBD0  A0 08 00 00 */	lhz r0, 0(r8)
/* 80081CD4 0007CBD4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80081CD8 0007CBD8  48 00 00 18 */	b lbl_80081CF0
lbl_80081CDC:
/* 80081CDC 0007CBDC  38 80 00 00 */	li r4, 0
/* 80081CE0 0007CBE0  54 C0 05 64 */	rlwinm r0, r6, 0, 0x15, 0x12
/* 80081CE4 0007CBE4  90 83 00 04 */	stw r4, 4(r3)
/* 80081CE8 0007CBE8  90 03 00 18 */	stw r0, 0x18(r3)
/* 80081CEC 0007CBEC  B0 83 00 16 */	sth r4, 0x16(r3)
lbl_80081CF0:
/* 80081CF0 0007CBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80081CF4 0007CBF4  4E 80 00 20 */	blr 

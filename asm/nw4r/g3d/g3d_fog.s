.include "macros.inc"

.section .sdata2, "a"
.global $$26220
$$26220:
	.single 0e0
	.balign 8

.section .text, "ax"
.global __ct__Q34nw4r3g3d3FogFPQ34nw4r3g3d7FogData
__ct__Q34nw4r3g3d3FogFPQ34nw4r3g3d7FogData:
/* 80077F28 00072E28  90 83 00 00 */	stw r4, 0(r3)
/* 80077F2C 00072E2C  4E 80 00 20 */	blr 

.global Init__Q34nw4r3g3d3FogFv
Init__Q34nw4r3g3d3FogFv:
/* 80077F30 00072E30  80 63 00 00 */	lwz r3, 0(r3)
/* 80077F34 00072E34  2C 03 00 00 */	cmpwi r3, 0
/* 80077F38 00072E38  4D 82 00 20 */	beqlr 
/* 80077F3C 00072E3C  38 00 00 00 */	li r0, 0
/* 80077F40 00072E40  C0 02 8A 10 */	lfs f0, $$26220-_SDA2_BASE_(r2)
/* 80077F44 00072E44  90 03 00 00 */	stw r0, 0(r3)
/* 80077F48 00072E48  D0 03 00 04 */	stfs f0, 4(r3)
/* 80077F4C 00072E4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80077F50 00072E50  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80077F54 00072E54  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80077F58 00072E58  98 03 00 17 */	stb r0, 0x17(r3)
/* 80077F5C 00072E5C  98 03 00 16 */	stb r0, 0x16(r3)
/* 80077F60 00072E60  98 03 00 15 */	stb r0, 0x15(r3)
/* 80077F64 00072E64  98 03 00 14 */	stb r0, 0x14(r3)
/* 80077F68 00072E68  98 03 00 18 */	stb r0, 0x18(r3)
/* 80077F6C 00072E6C  98 03 00 19 */	stb r0, 0x19(r3)
/* 80077F70 00072E70  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 80077F74 00072E74  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80077F78 00072E78  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 80077F7C 00072E7C  B0 03 00 20 */	sth r0, 0x20(r3)
/* 80077F80 00072E80  B0 03 00 22 */	sth r0, 0x22(r3)
/* 80077F84 00072E84  B0 03 00 24 */	sth r0, 0x24(r3)
/* 80077F88 00072E88  B0 03 00 26 */	sth r0, 0x26(r3)
/* 80077F8C 00072E8C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 80077F90 00072E90  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 80077F94 00072E94  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 80077F98 00072E98  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 80077F9C 00072E9C  4E 80 00 20 */	blr 

.global CopyTo__Q34nw4r3g3d3FogCFPv
CopyTo__Q34nw4r3g3d3FogCFPv:
/* 80077FA0 00072EA0  2C 04 00 00 */	cmpwi r4, 0
/* 80077FA4 00072EA4  41 82 00 48 */	beq lbl_80077FEC
/* 80077FA8 00072EA8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80077FAC 00072EAC  2C 05 00 00 */	cmpwi r5, 0
/* 80077FB0 00072EB0  41 82 00 3C */	beq lbl_80077FEC
/* 80077FB4 00072EB4  C8 05 00 00 */	lfd f0, 0(r5)
/* 80077FB8 00072EB8  7C 83 23 78 */	mr r3, r4
/* 80077FBC 00072EBC  D8 04 00 00 */	stfd f0, 0(r4)
/* 80077FC0 00072EC0  C8 05 00 08 */	lfd f0, 8(r5)
/* 80077FC4 00072EC4  D8 04 00 08 */	stfd f0, 8(r4)
/* 80077FC8 00072EC8  C8 05 00 10 */	lfd f0, 0x10(r5)
/* 80077FCC 00072ECC  D8 04 00 10 */	stfd f0, 0x10(r4)
/* 80077FD0 00072ED0  C8 05 00 18 */	lfd f0, 0x18(r5)
/* 80077FD4 00072ED4  D8 04 00 18 */	stfd f0, 0x18(r4)
/* 80077FD8 00072ED8  C8 05 00 20 */	lfd f0, 0x20(r5)
/* 80077FDC 00072EDC  D8 04 00 20 */	stfd f0, 0x20(r4)
/* 80077FE0 00072EE0  C8 05 00 28 */	lfd f0, 0x28(r5)
/* 80077FE4 00072EE4  D8 04 00 28 */	stfd f0, 0x28(r4)
/* 80077FE8 00072EE8  4E 80 00 20 */	blr 
lbl_80077FEC:
/* 80077FEC 00072EEC  38 60 00 00 */	li r3, 0
/* 80077FF0 00072EF0  4E 80 00 20 */	blr 

.global SetFogRangeAdjParam__Q34nw4r3g3d3FogFUsUsRCQ34nw4r4math5MTX44
SetFogRangeAdjParam__Q34nw4r3g3d3FogFUsUsRCQ34nw4r4math5MTX44:
/* 80077FF4 00072EF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80077FF8 00072EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80077FFC 00072EFC  4D 82 00 20 */	beqlr 
/* 80078000 00072F00  B0 A3 00 1A */	sth r5, 0x1a(r3)
/* 80078004 00072F04  7C C5 33 78 */	mr r5, r6
/* 80078008 00072F08  38 63 00 1C */	addi r3, r3, 0x1c
/* 8007800C 00072F0C  48 06 9E 24 */	b func_800E1E30
/* 80078010 00072F10  4E 80 00 20 */	blr 

.global SetGP__Q34nw4r3g3d3FogCFv
SetGP__Q34nw4r3g3d3FogCFv:
/* 80078014 00072F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80078018 00072F18  7C 08 02 A6 */	mflr r0
/* 8007801C 00072F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80078020 00072F20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078024 00072F24  83 E3 00 00 */	lwz r31, 0(r3)
/* 80078028 00072F28  2C 1F 00 00 */	cmpwi r31, 0
/* 8007802C 00072F2C  41 82 00 5C */	beq lbl_80078088
/* 80078030 00072F30  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078034 00072F34  2C 00 00 00 */	cmpwi r0, 0
/* 80078038 00072F38  41 82 00 14 */	beq lbl_8007804C
/* 8007803C 00072F3C  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80078040 00072F40  38 BF 00 1C */	addi r5, r31, 0x1c
/* 80078044 00072F44  A0 9F 00 1A */	lhz r4, 0x1a(r31)
/* 80078048 00072F48  48 06 9F 49 */	bl func_800E1F90
lbl_8007804C:
/* 8007804C 00072F4C  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 80078050 00072F50  38 81 00 08 */	addi r4, r1, 8
/* 80078054 00072F54  98 01 00 08 */	stb r0, 8(r1)
/* 80078058 00072F58  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 8007805C 00072F5C  98 01 00 09 */	stb r0, 9(r1)
/* 80078060 00072F60  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80078064 00072F64  98 01 00 0A */	stb r0, 0xa(r1)
/* 80078068 00072F68  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 8007806C 00072F6C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80078070 00072F70  80 7F 00 00 */	lwz r3, 0(r31)
/* 80078074 00072F74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80078078 00072F78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8007807C 00072F7C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80078080 00072F80  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80078084 00072F84  48 06 9B 81 */	bl GXSetFog
lbl_80078088:
/* 80078088 00072F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007808C 00072F8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80078090 00072F90  7C 08 03 A6 */	mtlr r0
/* 80078094 00072F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80078098 00072F98  4E 80 00 20 */	blr 

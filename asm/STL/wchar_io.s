.include "macros.inc"

.section .text, "ax"
.global fwide
fwide:
/* 800BD008 000B7F08  2C 03 00 00 */	cmpwi r3, 0
/* 800BD00C 000B7F0C  41 82 00 10 */	beq lbl_800BD01C
/* 800BD010 000B7F10  80 A3 00 04 */	lwz r5, 4(r3)
/* 800BD014 000B7F14  54 A0 57 7F */	rlwinm. r0, r5, 0xa, 0x1d, 0x1f
/* 800BD018 000B7F18  40 82 00 0C */	bne lbl_800BD024
lbl_800BD01C:
/* 800BD01C 000B7F1C  38 60 00 00 */	li r3, 0
/* 800BD020 000B7F20  4E 80 00 20 */	blr 
lbl_800BD024:
/* 800BD024 000B7F24  54 A0 67 BE */	rlwinm r0, r5, 0xc, 0x1e, 0x1f
/* 800BD028 000B7F28  2C 00 00 01 */	cmpwi r0, 1
/* 800BD02C 000B7F2C  41 82 00 54 */	beq lbl_800BD080
/* 800BD030 000B7F30  40 80 00 10 */	bge lbl_800BD040
/* 800BD034 000B7F34  2C 00 00 00 */	cmpwi r0, 0
/* 800BD038 000B7F38  40 80 00 14 */	bge lbl_800BD04C
/* 800BD03C 000B7F3C  48 00 00 48 */	b lbl_800BD084
lbl_800BD040:
/* 800BD040 000B7F40  2C 00 00 03 */	cmpwi r0, 3
/* 800BD044 000B7F44  40 80 00 40 */	bge lbl_800BD084
/* 800BD048 000B7F48  48 00 00 30 */	b lbl_800BD078
lbl_800BD04C:
/* 800BD04C 000B7F4C  2C 04 00 00 */	cmpwi r4, 0
/* 800BD050 000B7F50  40 81 00 14 */	ble lbl_800BD064
/* 800BD054 000B7F54  38 00 00 02 */	li r0, 2
/* 800BD058 000B7F58  50 05 A2 96 */	rlwimi r5, r0, 0x14, 0xa, 0xb
/* 800BD05C 000B7F5C  90 A3 00 04 */	stw r5, 4(r3)
/* 800BD060 000B7F60  48 00 00 24 */	b lbl_800BD084
lbl_800BD064:
/* 800BD064 000B7F64  40 80 00 20 */	bge lbl_800BD084
/* 800BD068 000B7F68  38 00 00 01 */	li r0, 1
/* 800BD06C 000B7F6C  50 05 A2 96 */	rlwimi r5, r0, 0x14, 0xa, 0xb
/* 800BD070 000B7F70  90 A3 00 04 */	stw r5, 4(r3)
/* 800BD074 000B7F74  48 00 00 10 */	b lbl_800BD084
lbl_800BD078:
/* 800BD078 000B7F78  38 80 00 01 */	li r4, 1
/* 800BD07C 000B7F7C  48 00 00 08 */	b lbl_800BD084
lbl_800BD080:
/* 800BD080 000B7F80  38 80 FF FF */	li r4, -1
lbl_800BD084:
/* 800BD084 000B7F84  7C 83 23 78 */	mr r3, r4
/* 800BD088 000B7F88  4E 80 00 20 */	blr 

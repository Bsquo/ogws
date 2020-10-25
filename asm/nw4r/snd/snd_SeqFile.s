.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
__ct__Q44nw4r3snd6detail13SeqFileReaderFPCv:
/* 8003DD9C 00038C9C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8003DDA0 00038CA0  38 C0 00 00 */	li r6, 0
/* 8003DDA4 00038CA4  90 C3 00 00 */	stw r6, 0(r3)
/* 8003DDA8 00038CA8  3C 05 AD AD */	addis r0, r5, 0xadad
/* 8003DDAC 00038CAC  28 00 45 51 */	cmplwi r0, 0x4551
/* 8003DDB0 00038CB0  90 C3 00 04 */	stw r6, 4(r3)
/* 8003DDB4 00038CB4  41 82 00 0C */	beq lbl_8003DDC0
/* 8003DDB8 00038CB8  38 00 00 00 */	li r0, 0
/* 8003DDBC 00038CBC  48 00 00 30 */	b lbl_8003DDEC
lbl_8003DDC0:
/* 8003DDC0 00038CC0  A0 C4 00 06 */	lhz r6, 6(r4)
/* 8003DDC4 00038CC4  28 06 01 00 */	cmplwi r6, 0x100
/* 8003DDC8 00038CC8  40 80 00 0C */	bge lbl_8003DDD4
/* 8003DDCC 00038CCC  38 00 00 00 */	li r0, 0
/* 8003DDD0 00038CD0  48 00 00 1C */	b lbl_8003DDEC
lbl_8003DDD4:
/* 8003DDD4 00038CD4  20 06 01 00 */	subfic r0, r6, 0x100
/* 8003DDD8 00038CD8  38 A0 01 00 */	li r5, 0x100
/* 8003DDDC 00038CDC  7C A5 33 38 */	orc r5, r5, r6
/* 8003DDE0 00038CE0  54 00 F8 7E */	srwi r0, r0, 1
/* 8003DDE4 00038CE4  7C 00 28 50 */	subf r0, r0, r5
/* 8003DDE8 00038CE8  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8003DDEC:
/* 8003DDEC 00038CEC  2C 00 00 00 */	cmpwi r0, 0
/* 8003DDF0 00038CF0  4D 82 00 20 */	beqlr 
/* 8003DDF4 00038CF4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8003DDF8 00038CF8  90 83 00 00 */	stw r4, 0(r3)
/* 8003DDFC 00038CFC  7C 00 22 14 */	add r0, r0, r4
/* 8003DE00 00038D00  90 03 00 04 */	stw r0, 4(r3)
/* 8003DE04 00038D04  4E 80 00 20 */	blr 

.global GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv:
/* 8003DE08 00038D08  80 63 00 04 */	lwz r3, 4(r3)
/* 8003DE0C 00038D0C  80 03 00 08 */	lwz r0, 8(r3)
/* 8003DE10 00038D10  7C 60 1A 14 */	add r3, r0, r3
/* 8003DE14 00038D14  4E 80 00 20 */	blr 

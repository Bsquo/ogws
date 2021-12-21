.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
FinishQueue:
	.skip 0x8
DrawDone:
	.skip 0x4
DrawDoneCB:
	.skip 0x4
TokenCB:
	.skip 0x8

.section .text, "ax"
.global GXSetMisc
GXSetMisc:
/* 800DDFAC 000D8EAC  2C 03 00 02 */	cmpwi r3, 2
/* 800DDFB0 000D8EB0  41 82 00 58 */	beq lbl_800DE008
/* 800DDFB4 000D8EB4  40 80 00 14 */	bge lbl_800DDFC8
/* 800DDFB8 000D8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 800DDFBC 000D8EBC  4D 82 00 20 */	beqlr 
/* 800DDFC0 000D8EC0  40 80 00 14 */	bge lbl_800DDFD4
/* 800DDFC4 000D8EC4  4E 80 00 20 */	blr 
lbl_800DDFC8:
/* 800DDFC8 000D8EC8  2C 03 00 04 */	cmpwi r3, 4
/* 800DDFCC 000D8ECC  4C 80 00 20 */	bgelr 
/* 800DDFD0 000D8ED0  48 00 00 50 */	b lbl_800DE020
lbl_800DDFD4:
/* 800DDFD4 000D8ED4  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 800DDFD8 000D8ED8  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800DDFDC 000D8EDC  B0 85 00 04 */	sth r4, 4(r5)
/* 800DDFE0 000D8EE0  7C 03 00 34 */	cntlzw r3, r0
/* 800DDFE4 000D8EE4  38 00 00 01 */	li r0, 1
/* 800DDFE8 000D8EE8  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 800DDFEC 000D8EEC  B0 65 00 00 */	sth r3, 0(r5)
/* 800DDFF0 000D8EF0  B0 05 00 02 */	sth r0, 2(r5)
/* 800DDFF4 000D8EF4  4D 82 00 20 */	beqlr 
/* 800DDFF8 000D8EF8  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 800DDFFC 000D8EFC  60 00 00 08 */	ori r0, r0, 8
/* 800DE000 000D8F00  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 800DE004 000D8F04  4E 80 00 20 */	blr 
lbl_800DE008:
/* 800DE008 000D8F08  7C 04 00 D0 */	neg r0, r4
/* 800DE00C 000D8F0C  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800DE010 000D8F10  7C 00 23 78 */	or r0, r0, r4
/* 800DE014 000D8F14  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800DE018 000D8F18  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 800DE01C 000D8F1C  4E 80 00 20 */	blr 
lbl_800DE020:
/* 800DE020 000D8F20  7C 04 00 D0 */	neg r0, r4
/* 800DE024 000D8F24  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800DE028 000D8F28  7C 00 23 78 */	or r0, r0, r4
/* 800DE02C 000D8F2C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800DE030 000D8F30  98 03 05 FA */	stb r0, 0x5fa(r3)
/* 800DE034 000D8F34  4E 80 00 20 */	blr 

.global GXFlush
GXFlush:
/* 800DE038 000D8F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE03C 000D8F3C  7C 08 02 A6 */	mflr r0
/* 800DE040 000D8F40  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800DE044 000D8F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE048 000D8F48  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 800DE04C 000D8F4C  2C 00 00 00 */	cmpwi r0, 0
/* 800DE050 000D8F50  41 82 00 08 */	beq lbl_800DE058
/* 800DE054 000D8F54  48 00 08 09 */	bl __GXSetDirtyState
lbl_800DE058:
/* 800DE058 000D8F58  38 00 00 00 */	li r0, 0
/* 800DE05C 000D8F5C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800DE060 000D8F60  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 800DE064 000D8F64  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE068 000D8F68  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE06C 000D8F6C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE070 000D8F70  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE074 000D8F74  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE078 000D8F78  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE07C 000D8F7C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE080 000D8F80  48 02 C9 D1 */	bl PPCSync
/* 800DE084 000D8F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE088 000D8F88  7C 08 03 A6 */	mtlr r0
/* 800DE08C 000D8F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE090 000D8F90  4E 80 00 20 */	blr 

.global GXResetWriteGatherPipe
GXResetWriteGatherPipe:
/* 800DE094 000D8F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE098 000D8F98  7C 08 02 A6 */	mflr r0
/* 800DE09C 000D8F9C  90 01 00 14 */	stw r0, 0x14(r1)
lbl_800DE0A0:
/* 800DE0A0 000D8FA0  48 02 CA 55 */	bl func_8010AAF4
/* 800DE0A4 000D8FA4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800DE0A8 000D8FA8  40 82 FF F8 */	bne lbl_800DE0A0
/* 800DE0AC 000D8FAC  3C 60 0C 01 */	lis r3, 0x0C008000@ha
/* 800DE0B0 000D8FB0  38 63 80 00 */	addi r3, r3, 0x0C008000@l
/* 800DE0B4 000D8FB4  48 02 CA 4D */	bl func_8010AB00
/* 800DE0B8 000D8FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE0BC 000D8FBC  7C 08 03 A6 */	mtlr r0
/* 800DE0C0 000D8FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE0C4 000D8FC4  4E 80 00 20 */	blr 

.global __GXAbort
__GXAbort:
/* 800DE0C8 000D8FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DE0CC 000D8FCC  7C 08 02 A6 */	mflr r0
/* 800DE0D0 000D8FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DE0D4 000D8FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE0D8 000D8FD8  4B FD 3C 6D */	bl _savegpr_27
/* 800DE0DC 000D8FDC  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800DE0E0 000D8FE0  88 03 05 FA */	lbz r0, 0x5fa(r3)
/* 800DE0E4 000D8FE4  2C 00 00 00 */	cmpwi r0, 0
/* 800DE0E8 000D8FE8  41 82 00 A0 */	beq lbl_800DE188
/* 800DE0EC 000D8FEC  4B FF E7 B1 */	bl __GXIs__GXOverflowCount
/* 800DE0F0 000D8FF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DE0F4 000D8FF4  41 82 00 94 */	beq lbl_800DE188
/* 800DE0F8 000D8FF8  80 AD 9A EC */	lwz r5, __memReg-_SDA_BASE_(r13)
/* 800DE0FC 000D8FFC  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_800DE100:
/* 800DE100 000D9000  7C 03 03 78 */	mr r3, r0
/* 800DE104 000D9004  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800DE108 000D9008  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 800DE10C 000D900C  7C 00 18 40 */	cmplw r0, r3
/* 800DE110 000D9010  40 82 FF F0 */	bne lbl_800DE100
/* 800DE114 000D9014  54 03 80 1E */	slwi r3, r0, 0x10
/* 800DE118 000D9018  38 00 00 00 */	li r0, 0
/* 800DE11C 000D901C  7C 7B 23 78 */	or r27, r3, r4
/* 800DE120 000D9020  3B A0 00 08 */	li r29, 8
/* 800DE124 000D9024  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_800DE128:
/* 800DE128 000D9028  48 01 74 DD */	bl OSGetTime
/* 800DE12C 000D902C  7C 9F 23 78 */	mr r31, r4
/* 800DE130 000D9030  7C 7E 1B 78 */	mr r30, r3
lbl_800DE134:
/* 800DE134 000D9034  48 01 74 D1 */	bl OSGetTime
/* 800DE138 000D9038  7C 9F 20 10 */	subfc r4, r31, r4
/* 800DE13C 000D903C  7C 1E 19 10 */	subfe r0, r30, r3
/* 800DE140 000D9040  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE144 000D9044  7C 04 E8 10 */	subfc r0, r4, r29
/* 800DE148 000D9048  7C 63 E1 10 */	subfe r3, r3, r28
/* 800DE14C 000D904C  7C 7C E1 10 */	subfe r3, r28, r28
/* 800DE150 000D9050  7C 63 00 D1 */	neg. r3, r3
/* 800DE154 000D9054  41 82 FF E0 */	beq lbl_800DE134
/* 800DE158 000D9058  80 AD 9A EC */	lwz r5, __memReg-_SDA_BASE_(r13)
/* 800DE15C 000D905C  A0 05 00 4E */	lhz r0, 0x4e(r5)
lbl_800DE160:
/* 800DE160 000D9060  7C 03 03 78 */	mr r3, r0
/* 800DE164 000D9064  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800DE168 000D9068  A0 05 00 4E */	lhz r0, 0x4e(r5)
/* 800DE16C 000D906C  7C 00 18 40 */	cmplw r0, r3
/* 800DE170 000D9070  40 82 FF F0 */	bne lbl_800DE160
/* 800DE174 000D9074  54 00 80 1E */	slwi r0, r0, 0x10
/* 800DE178 000D9078  7C 00 23 78 */	or r0, r0, r4
/* 800DE17C 000D907C  7C 00 D8 40 */	cmplw r0, r27
/* 800DE180 000D9080  7C 1B 03 78 */	mr r27, r0
/* 800DE184 000D9084  40 82 FF A4 */	bne lbl_800DE128
lbl_800DE188:
/* 800DE188 000D9088  38 00 00 01 */	li r0, 1
/* 800DE18C 000D908C  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800DE190 000D9090  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 800DE194 000D9094  48 01 74 71 */	bl OSGetTime
/* 800DE198 000D9098  38 00 00 00 */	li r0, 0
/* 800DE19C 000D909C  7C 9F 23 78 */	mr r31, r4
/* 800DE1A0 000D90A0  7C 7E 1B 78 */	mr r30, r3
/* 800DE1A4 000D90A4  3B A0 00 32 */	li r29, 0x32
/* 800DE1A8 000D90A8  6C 1C 80 00 */	xoris r28, r0, 0x8000
lbl_800DE1AC:
/* 800DE1AC 000D90AC  48 01 74 59 */	bl OSGetTime
/* 800DE1B0 000D90B0  7C 9F 20 10 */	subfc r4, r31, r4
/* 800DE1B4 000D90B4  7C 1E 19 10 */	subfe r0, r30, r3
/* 800DE1B8 000D90B8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE1BC 000D90BC  7C 04 E8 10 */	subfc r0, r4, r29
/* 800DE1C0 000D90C0  7C 63 E1 10 */	subfe r3, r3, r28
/* 800DE1C4 000D90C4  7C 7C E1 10 */	subfe r3, r28, r28
/* 800DE1C8 000D90C8  7C 63 00 D1 */	neg. r3, r3
/* 800DE1CC 000D90CC  41 82 FF E0 */	beq lbl_800DE1AC
/* 800DE1D0 000D90D0  3B C0 00 00 */	li r30, 0
/* 800DE1D4 000D90D4  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800DE1D8 000D90D8  93 C3 30 18 */	stw r30, 0xCC003018@l(r3)
/* 800DE1DC 000D90DC  48 01 74 29 */	bl OSGetTime
/* 800DE1E0 000D90E0  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 800DE1E4 000D90E4  7C 9C 23 78 */	mr r28, r4
/* 800DE1E8 000D90E8  7C 7D 1B 78 */	mr r29, r3
/* 800DE1EC 000D90EC  3B C0 00 05 */	li r30, 5
lbl_800DE1F0:
/* 800DE1F0 000D90F0  48 01 74 15 */	bl OSGetTime
/* 800DE1F4 000D90F4  7C 9C 20 10 */	subfc r4, r28, r4
/* 800DE1F8 000D90F8  7C 1D 19 10 */	subfe r0, r29, r3
/* 800DE1FC 000D90FC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE200 000D9100  7C 04 F0 10 */	subfc r0, r4, r30
/* 800DE204 000D9104  7C 63 F9 10 */	subfe r3, r3, r31
/* 800DE208 000D9108  7C 7F F9 10 */	subfe r3, r31, r31
/* 800DE20C 000D910C  7C 63 00 D1 */	neg. r3, r3
/* 800DE210 000D9110  41 82 FF E0 */	beq lbl_800DE1F0
/* 800DE214 000D9114  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE218 000D9118  4B FD 3B 79 */	bl _restgpr_27
/* 800DE21C 000D911C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DE220 000D9120  7C 08 03 A6 */	mtlr r0
/* 800DE224 000D9124  38 21 00 20 */	addi r1, r1, 0x20
/* 800DE228 000D9128  4E 80 00 20 */	blr 

.global GXAbortFrame
GXAbortFrame:
/* 800DE22C 000D912C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DE230 000D9130  7C 08 02 A6 */	mflr r0
/* 800DE234 000D9134  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DE238 000D9138  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE23C 000D913C  4B FD 3B 05 */	bl _savegpr_26
/* 800DE240 000D9140  83 E2 96 48 */	lwz r31, __GXData-_SDA2_BASE_(r2)
/* 800DE244 000D9144  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 800DE248 000D9148  2C 00 00 00 */	cmpwi r0, 0
/* 800DE24C 000D914C  41 82 00 A0 */	beq lbl_800DE2EC
/* 800DE250 000D9150  4B FF E6 4D */	bl __GXIs__GXOverflowCount
/* 800DE254 000D9154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DE258 000D9158  41 82 00 94 */	beq lbl_800DE2EC
/* 800DE25C 000D915C  80 AD 9A EC */	lwz r5, __memReg-_SDA_BASE_(r13)
/* 800DE260 000D9160  A0 65 00 4E */	lhz r3, 0x4e(r5)
lbl_800DE264:
/* 800DE264 000D9164  7C 60 1B 78 */	mr r0, r3
/* 800DE268 000D9168  A0 85 00 50 */	lhz r4, 0x50(r5)
/* 800DE26C 000D916C  A0 65 00 4E */	lhz r3, 0x4e(r5)
/* 800DE270 000D9170  7C 03 00 40 */	cmplw r3, r0
/* 800DE274 000D9174  40 82 FF F0 */	bne lbl_800DE264
/* 800DE278 000D9178  54 63 80 1E */	slwi r3, r3, 0x10
/* 800DE27C 000D917C  38 00 00 00 */	li r0, 0
/* 800DE280 000D9180  7C 7A 23 78 */	or r26, r3, r4
/* 800DE284 000D9184  3B 80 00 08 */	li r28, 8
/* 800DE288 000D9188  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_800DE28C:
/* 800DE28C 000D918C  48 01 73 79 */	bl OSGetTime
/* 800DE290 000D9190  7C 9E 23 78 */	mr r30, r4
/* 800DE294 000D9194  7C 7D 1B 78 */	mr r29, r3
lbl_800DE298:
/* 800DE298 000D9198  48 01 73 6D */	bl OSGetTime
/* 800DE29C 000D919C  7C 9E 20 10 */	subfc r4, r30, r4
/* 800DE2A0 000D91A0  7C 1D 19 10 */	subfe r0, r29, r3
/* 800DE2A4 000D91A4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE2A8 000D91A8  7C 04 E0 10 */	subfc r0, r4, r28
/* 800DE2AC 000D91AC  7C 63 D9 10 */	subfe r3, r3, r27
/* 800DE2B0 000D91B0  7C 7B D9 10 */	subfe r3, r27, r27
/* 800DE2B4 000D91B4  7C 63 00 D1 */	neg. r3, r3
/* 800DE2B8 000D91B8  41 82 FF E0 */	beq lbl_800DE298
/* 800DE2BC 000D91BC  80 AD 9A EC */	lwz r5, __memReg-_SDA_BASE_(r13)
/* 800DE2C0 000D91C0  A0 85 00 4E */	lhz r4, 0x4e(r5)
lbl_800DE2C4:
/* 800DE2C4 000D91C4  7C 80 23 78 */	mr r0, r4
/* 800DE2C8 000D91C8  A0 65 00 50 */	lhz r3, 0x50(r5)
/* 800DE2CC 000D91CC  A0 85 00 4E */	lhz r4, 0x4e(r5)
/* 800DE2D0 000D91D0  7C 04 00 40 */	cmplw r4, r0
/* 800DE2D4 000D91D4  40 82 FF F0 */	bne lbl_800DE2C4
/* 800DE2D8 000D91D8  54 80 80 1E */	slwi r0, r4, 0x10
/* 800DE2DC 000D91DC  7C 00 1B 78 */	or r0, r0, r3
/* 800DE2E0 000D91E0  7C 00 D0 40 */	cmplw r0, r26
/* 800DE2E4 000D91E4  7C 1A 03 78 */	mr r26, r0
/* 800DE2E8 000D91E8  40 82 FF A4 */	bne lbl_800DE28C
lbl_800DE2EC:
/* 800DE2EC 000D91EC  38 00 00 01 */	li r0, 1
/* 800DE2F0 000D91F0  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800DE2F4 000D91F4  90 03 30 18 */	stw r0, 0xCC003018@l(r3)
/* 800DE2F8 000D91F8  48 01 73 0D */	bl OSGetTime
/* 800DE2FC 000D91FC  38 00 00 00 */	li r0, 0
/* 800DE300 000D9200  7C 9E 23 78 */	mr r30, r4
/* 800DE304 000D9204  7C 7D 1B 78 */	mr r29, r3
/* 800DE308 000D9208  3B 80 00 32 */	li r28, 0x32
/* 800DE30C 000D920C  6C 1B 80 00 */	xoris r27, r0, 0x8000
lbl_800DE310:
/* 800DE310 000D9210  48 01 72 F5 */	bl OSGetTime
/* 800DE314 000D9214  7C 9E 20 10 */	subfc r4, r30, r4
/* 800DE318 000D9218  7C 1D 19 10 */	subfe r0, r29, r3
/* 800DE31C 000D921C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE320 000D9220  7C 04 E0 10 */	subfc r0, r4, r28
/* 800DE324 000D9224  7C 63 D9 10 */	subfe r3, r3, r27
/* 800DE328 000D9228  7C 7B D9 10 */	subfe r3, r27, r27
/* 800DE32C 000D922C  7C 63 00 D1 */	neg. r3, r3
/* 800DE330 000D9230  41 82 FF E0 */	beq lbl_800DE310
/* 800DE334 000D9234  3B A0 00 00 */	li r29, 0
/* 800DE338 000D9238  3C 60 CC 00 */	lis r3, 0xCC003018@ha
/* 800DE33C 000D923C  93 A3 30 18 */	stw r29, 0xCC003018@l(r3)
/* 800DE340 000D9240  48 01 72 C5 */	bl OSGetTime
/* 800DE344 000D9244  6F BE 80 00 */	xoris r30, r29, 0x8000
/* 800DE348 000D9248  7C 9B 23 78 */	mr r27, r4
/* 800DE34C 000D924C  7C 7C 1B 78 */	mr r28, r3
/* 800DE350 000D9250  3B A0 00 05 */	li r29, 5
lbl_800DE354:
/* 800DE354 000D9254  48 01 72 B1 */	bl OSGetTime
/* 800DE358 000D9258  7C 9B 20 10 */	subfc r4, r27, r4
/* 800DE35C 000D925C  7C 1C 19 10 */	subfe r0, r28, r3
/* 800DE360 000D9260  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800DE364 000D9264  7C 04 E8 10 */	subfc r0, r4, r29
/* 800DE368 000D9268  7C 63 F1 10 */	subfe r3, r3, r30
/* 800DE36C 000D926C  7C 7E F1 10 */	subfe r3, r30, r30
/* 800DE370 000D9270  7C 63 00 D1 */	neg. r3, r3
/* 800DE374 000D9274  41 82 FF E0 */	beq lbl_800DE354
/* 800DE378 000D9278  4B FF E5 25 */	bl __GXIs__GXOverflowCount
/* 800DE37C 000D927C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DE380 000D9280  41 82 00 48 */	beq lbl_800DE3C8
/* 800DE384 000D9284  4B FF E8 5D */	bl __GXCleanGPFifo
/* 800DE388 000D9288  4B FF CD 7D */	bl __GXInitRevisionBits
/* 800DE38C 000D928C  38 00 00 00 */	li r0, 0
/* 800DE390 000D9290  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 800DE394 000D9294  48 00 00 08 */	b lbl_800DE39C
/* 800DE398 000D9298  48 00 04 C5 */	bl __GXSetDirtyState
lbl_800DE39C:
/* 800DE39C 000D929C  38 00 00 00 */	li r0, 0
/* 800DE3A0 000D92A0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800DE3A4 000D92A4  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 800DE3A8 000D92A8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3AC 000D92AC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3B0 000D92B0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3B4 000D92B4  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3B8 000D92B8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3BC 000D92BC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3C0 000D92C0  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800DE3C4 000D92C4  48 02 C6 8D */	bl PPCSync
lbl_800DE3C8:
/* 800DE3C8 000D92C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800DE3CC 000D92CC  4B FD 39 C1 */	bl _restgpr_26
/* 800DE3D0 000D92D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DE3D4 000D92D4  7C 08 03 A6 */	mtlr r0
/* 800DE3D8 000D92D8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DE3DC 000D92DC  4E 80 00 20 */	blr 

.global GXSetDrawSync
GXSetDrawSync:
/* 800DE3E0 000D92E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DE3E4 000D92E4  7C 08 02 A6 */	mflr r0
/* 800DE3E8 000D92E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DE3EC 000D92EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DE3F0 000D92F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800DE3F4 000D92F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800DE3F8 000D92F8  7C 7D 1B 78 */	mr r29, r3
/* 800DE3FC 000D92FC  48 01 34 C5 */	bl OSDisableInterrupts
/* 800DE400 000D9300  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800DE404 000D9304  38 A0 00 61 */	li r5, 0x61
/* 800DE408 000D9308  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800DE40C 000D930C  67 A6 48 00 */	oris r6, r29, 0x4800
/* 800DE410 000D9310  38 00 00 47 */	li r0, 0x47
/* 800DE414 000D9314  83 C2 96 48 */	lwz r30, __GXData-_SDA2_BASE_(r2)
/* 800DE418 000D9318  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800DE41C 000D931C  53 A6 04 3E */	rlwimi r6, r29, 0, 0x10, 0x1f
/* 800DE420 000D9320  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 800DE424 000D9324  7C 7D 1B 78 */	mr r29, r3
/* 800DE428 000D9328  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800DE42C 000D932C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800DE430 000D9330  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 800DE434 000D9334  2C 00 00 00 */	cmpwi r0, 0
/* 800DE438 000D9338  41 82 00 08 */	beq lbl_800DE440
/* 800DE43C 000D933C  48 00 04 21 */	bl __GXSetDirtyState
lbl_800DE440:
/* 800DE440 000D9340  3B E0 00 00 */	li r31, 0
/* 800DE444 000D9344  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800DE448 000D9348  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 800DE44C 000D934C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE450 000D9350  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE454 000D9354  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE458 000D9358  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE45C 000D935C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE460 000D9360  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE464 000D9364  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE468 000D9368  48 02 C5 E9 */	bl PPCSync
/* 800DE46C 000D936C  7F A3 EB 78 */	mr r3, r29
/* 800DE470 000D9370  48 01 34 79 */	bl OSRestoreInterrupts
/* 800DE474 000D9374  B3 FE 00 02 */	sth r31, 2(r30)
/* 800DE478 000D9378  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DE47C 000D937C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800DE480 000D9380  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800DE484 000D9384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DE488 000D9388  7C 08 03 A6 */	mtlr r0
/* 800DE48C 000D938C  38 21 00 20 */	addi r1, r1, 0x20
/* 800DE490 000D9390  4E 80 00 20 */	blr 

.global GXDrawDone
GXDrawDone:
/* 800DE494 000D9394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE498 000D9398  7C 08 02 A6 */	mflr r0
/* 800DE49C 000D939C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE4A0 000D93A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DE4A4 000D93A4  93 C1 00 08 */	stw r30, 8(r1)
/* 800DE4A8 000D93A8  48 01 34 19 */	bl OSDisableInterrupts
/* 800DE4AC 000D93AC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800DE4B0 000D93B0  38 00 00 61 */	li r0, 0x61
/* 800DE4B4 000D93B4  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 800DE4B8 000D93B8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800DE4BC 000D93BC  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 800DE4C0 000D93C0  80 82 96 48 */	lwz r4, __GXData-_SDA2_BASE_(r2)
/* 800DE4C4 000D93C4  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800DE4C8 000D93C8  7C 7E 1B 78 */	mr r30, r3
/* 800DE4CC 000D93CC  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800DE4D0 000D93D0  2C 00 00 00 */	cmpwi r0, 0
/* 800DE4D4 000D93D4  41 82 00 08 */	beq lbl_800DE4DC
/* 800DE4D8 000D93D8  48 00 03 85 */	bl __GXSetDirtyState
lbl_800DE4DC:
/* 800DE4DC 000D93DC  3B E0 00 00 */	li r31, 0
/* 800DE4E0 000D93E0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800DE4E4 000D93E4  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 800DE4E8 000D93E8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE4EC 000D93EC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE4F0 000D93F0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE4F4 000D93F4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE4F8 000D93F8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE4FC 000D93FC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE500 000D9400  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800DE504 000D9404  48 02 C5 4D */	bl PPCSync
/* 800DE508 000D9408  9B ED 9B 30 */	stb r31, DrawDone-_SDA_BASE_(r13)
/* 800DE50C 000D940C  7F C3 F3 78 */	mr r3, r30
/* 800DE510 000D9410  48 01 33 D9 */	bl OSRestoreInterrupts
/* 800DE514 000D9414  48 01 33 AD */	bl OSDisableInterrupts
/* 800DE518 000D9418  7C 7E 1B 78 */	mr r30, r3
/* 800DE51C 000D941C  48 00 00 0C */	b lbl_800DE528
lbl_800DE520:
/* 800DE520 000D9420  38 6D 9B 28 */	addi r3, r13, FinishQueue-_SDA_BASE_
/* 800DE524 000D9424  48 01 6D 3D */	bl OSSleepThread
lbl_800DE528:
/* 800DE528 000D9428  88 0D 9B 30 */	lbz r0, DrawDone-_SDA_BASE_(r13)
/* 800DE52C 000D942C  2C 00 00 00 */	cmpwi r0, 0
/* 800DE530 000D9430  41 82 FF F0 */	beq lbl_800DE520
/* 800DE534 000D9434  7F C3 F3 78 */	mr r3, r30
/* 800DE538 000D9438  48 01 33 B1 */	bl OSRestoreInterrupts
/* 800DE53C 000D943C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE540 000D9440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DE544 000D9444  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DE548 000D9448  7C 08 03 A6 */	mtlr r0
/* 800DE54C 000D944C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE550 000D9450  4E 80 00 20 */	blr 

.global GXPixModeSync
GXPixModeSync:
/* 800DE554 000D9454  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800DE558 000D9458  38 00 00 61 */	li r0, 0x61
/* 800DE55C 000D945C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800DE560 000D9460  38 00 00 00 */	li r0, 0
/* 800DE564 000D9464  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800DE568 000D9468  80 65 02 2C */	lwz r3, 0x22c(r5)
/* 800DE56C 000D946C  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800DE570 000D9470  B0 05 00 02 */	sth r0, 2(r5)
/* 800DE574 000D9474  4E 80 00 20 */	blr 

.global GXPokeAlphaMode
GXPokeAlphaMode:
/* 800DE578 000D9478  80 AD 9A E8 */	lwz r5, __peReg-_SDA_BASE_(r13)
/* 800DE57C 000D947C  50 64 40 2E */	rlwimi r4, r3, 8, 0, 0x17
/* 800DE580 000D9480  B0 85 00 06 */	sth r4, 6(r5)
/* 800DE584 000D9484  4E 80 00 20 */	blr 

.global GXPokeAlphaRead
GXPokeAlphaRead:
/* 800DE588 000D9488  38 00 00 00 */	li r0, 0
/* 800DE58C 000D948C  80 8D 9A E8 */	lwz r4, __peReg-_SDA_BASE_(r13)
/* 800DE590 000D9490  50 60 07 BE */	rlwimi r0, r3, 0, 0x1e, 0x1f
/* 800DE594 000D9494  60 00 00 04 */	ori r0, r0, 4
/* 800DE598 000D9498  B0 04 00 08 */	sth r0, 8(r4)
/* 800DE59C 000D949C  4E 80 00 20 */	blr 

.global GXPokeAlphaUpdate
GXPokeAlphaUpdate:
/* 800DE5A0 000D94A0  80 8D 9A E8 */	lwz r4, __peReg-_SDA_BASE_(r13)
/* 800DE5A4 000D94A4  A0 04 00 02 */	lhz r0, 2(r4)
/* 800DE5A8 000D94A8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800DE5AC 000D94AC  B0 04 00 02 */	sth r0, 2(r4)
/* 800DE5B0 000D94B0  4E 80 00 20 */	blr 

.global GXPokeBlendMode
GXPokeBlendMode:
/* 800DE5B4 000D94B4  80 ED 9A E8 */	lwz r7, __peReg-_SDA_BASE_(r13)
/* 800DE5B8 000D94B8  2C 03 00 01 */	cmpwi r3, 1
/* 800DE5BC 000D94BC  38 00 00 00 */	li r0, 0
/* 800DE5C0 000D94C0  A1 27 00 02 */	lhz r9, 2(r7)
/* 800DE5C4 000D94C4  41 82 00 0C */	beq lbl_800DE5D0
/* 800DE5C8 000D94C8  2C 03 00 03 */	cmpwi r3, 3
/* 800DE5CC 000D94CC  40 82 00 08 */	bne lbl_800DE5D4
lbl_800DE5D0:
/* 800DE5D0 000D94D0  38 00 00 01 */	li r0, 1
lbl_800DE5D4:
/* 800DE5D4 000D94D4  38 E3 FF FD */	addi r7, r3, -3
/* 800DE5D8 000D94D8  50 09 07 FE */	rlwimi r9, r0, 0, 0x1f, 0x1f
/* 800DE5DC 000D94DC  38 03 FF FE */	addi r0, r3, -2
/* 800DE5E0 000D94E0  80 6D 9A E8 */	lwz r3, __peReg-_SDA_BASE_(r13)
/* 800DE5E4 000D94E4  7C E8 00 34 */	cntlzw r8, r7
/* 800DE5E8 000D94E8  7C 07 00 34 */	cntlzw r7, r0
/* 800DE5EC 000D94EC  38 00 00 41 */	li r0, 0x41
/* 800DE5F0 000D94F0  51 09 35 28 */	rlwimi r9, r8, 6, 0x14, 0x14
/* 800DE5F4 000D94F4  50 E9 E7 BC */	rlwimi r9, r7, 0x1c, 0x1e, 0x1e
/* 800DE5F8 000D94F8  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 800DE5FC 000D94FC  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 800DE600 000D9500  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 800DE604 000D9504  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
/* 800DE608 000D9508  B1 23 00 02 */	sth r9, 2(r3)
/* 800DE60C 000D950C  4E 80 00 20 */	blr 

.global GXPokeColorUpdate
GXPokeColorUpdate:
/* 800DE610 000D9510  80 8D 9A E8 */	lwz r4, __peReg-_SDA_BASE_(r13)
/* 800DE614 000D9514  A0 04 00 02 */	lhz r0, 2(r4)
/* 800DE618 000D9518  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 800DE61C 000D951C  B0 04 00 02 */	sth r0, 2(r4)
/* 800DE620 000D9520  4E 80 00 20 */	blr 

.global GXPokeDstAlpha
GXPokeDstAlpha:
/* 800DE624 000D9524  80 AD 9A E8 */	lwz r5, __peReg-_SDA_BASE_(r13)
/* 800DE628 000D9528  38 00 00 00 */	li r0, 0
/* 800DE62C 000D952C  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 800DE630 000D9530  50 60 45 EE */	rlwimi r0, r3, 8, 0x17, 0x17
/* 800DE634 000D9534  B0 05 00 04 */	sth r0, 4(r5)
/* 800DE638 000D9538  4E 80 00 20 */	blr 

.global GXPokeDither
GXPokeDither:
/* 800DE63C 000D953C  80 8D 9A E8 */	lwz r4, __peReg-_SDA_BASE_(r13)
/* 800DE640 000D9540  A0 04 00 02 */	lhz r0, 2(r4)
/* 800DE644 000D9544  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800DE648 000D9548  B0 04 00 02 */	sth r0, 2(r4)
/* 800DE64C 000D954C  4E 80 00 20 */	blr 

.global GXPokeZMode
GXPokeZMode:
/* 800DE650 000D9550  80 CD 9A E8 */	lwz r6, __peReg-_SDA_BASE_(r13)
/* 800DE654 000D9554  38 00 00 00 */	li r0, 0
/* 800DE658 000D9558  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 800DE65C 000D955C  50 80 0F 3C */	rlwimi r0, r4, 1, 0x1c, 0x1e
/* 800DE660 000D9560  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 800DE664 000D9564  B0 06 00 00 */	sth r0, 0(r6)
/* 800DE668 000D9568  4E 80 00 20 */	blr 

.global GXSetDrawSyncCallback
GXSetDrawSyncCallback:
/* 800DE66C 000D956C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE670 000D9570  7C 08 02 A6 */	mflr r0
/* 800DE674 000D9574  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE678 000D9578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DE67C 000D957C  93 C1 00 08 */	stw r30, 8(r1)
/* 800DE680 000D9580  7C 7E 1B 78 */	mr r30, r3
/* 800DE684 000D9584  83 ED 9B 38 */	lwz r31, TokenCB-_SDA_BASE_(r13)
/* 800DE688 000D9588  48 01 32 39 */	bl OSDisableInterrupts
/* 800DE68C 000D958C  93 CD 9B 38 */	stw r30, TokenCB-_SDA_BASE_(r13)
/* 800DE690 000D9590  48 01 32 59 */	bl OSRestoreInterrupts
/* 800DE694 000D9594  7F E3 FB 78 */	mr r3, r31
/* 800DE698 000D9598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DE69C 000D959C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DE6A0 000D95A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE6A4 000D95A4  7C 08 03 A6 */	mtlr r0
/* 800DE6A8 000D95A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE6AC 000D95AC  4E 80 00 20 */	blr 

.global GXTokenInterruptHandler
GXTokenInterruptHandler:
/* 800DE6B0 000D95B0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800DE6B4 000D95B4  7C 08 02 A6 */	mflr r0
/* 800DE6B8 000D95B8  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800DE6BC 000D95BC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800DE6C0 000D95C0  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 800DE6C4 000D95C4  7C 9E 23 78 */	mr r30, r4
/* 800DE6C8 000D95C8  80 0D 9B 38 */	lwz r0, TokenCB-_SDA_BASE_(r13)
/* 800DE6CC 000D95CC  80 6D 9A E8 */	lwz r3, __peReg-_SDA_BASE_(r13)
/* 800DE6D0 000D95D0  2C 00 00 00 */	cmpwi r0, 0
/* 800DE6D4 000D95D4  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 800DE6D8 000D95D8  41 82 00 34 */	beq lbl_800DE70C
/* 800DE6DC 000D95DC  38 61 00 08 */	addi r3, r1, 8
/* 800DE6E0 000D95E0  48 01 04 BD */	bl OSClearContext
/* 800DE6E4 000D95E4  38 61 00 08 */	addi r3, r1, 8
/* 800DE6E8 000D95E8  48 01 02 8D */	bl OSSetCurrentContext
/* 800DE6EC 000D95EC  81 8D 9B 38 */	lwz r12, TokenCB-_SDA_BASE_(r13)
/* 800DE6F0 000D95F0  7F E3 FB 78 */	mr r3, r31
/* 800DE6F4 000D95F4  7D 89 03 A6 */	mtctr r12
/* 800DE6F8 000D95F8  4E 80 04 21 */	bctrl 
/* 800DE6FC 000D95FC  38 61 00 08 */	addi r3, r1, 8
/* 800DE700 000D9600  48 01 04 9D */	bl OSClearContext
/* 800DE704 000D9604  7F C3 F3 78 */	mr r3, r30
/* 800DE708 000D9608  48 01 02 6D */	bl OSSetCurrentContext
lbl_800DE70C:
/* 800DE70C 000D960C  80 6D 9A E8 */	lwz r3, __peReg-_SDA_BASE_(r13)
/* 800DE710 000D9610  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800DE714 000D9614  60 00 00 04 */	ori r0, r0, 4
/* 800DE718 000D9618  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800DE71C 000D961C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800DE720 000D9620  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800DE724 000D9624  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 800DE728 000D9628  7C 08 03 A6 */	mtlr r0
/* 800DE72C 000D962C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800DE730 000D9630  4E 80 00 20 */	blr 

.global GXSetDrawDoneCallback
GXSetDrawDoneCallback:
/* 800DE734 000D9634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE738 000D9638  7C 08 02 A6 */	mflr r0
/* 800DE73C 000D963C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE740 000D9640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DE744 000D9644  93 C1 00 08 */	stw r30, 8(r1)
/* 800DE748 000D9648  7C 7E 1B 78 */	mr r30, r3
/* 800DE74C 000D964C  83 ED 9B 34 */	lwz r31, DrawDoneCB-_SDA_BASE_(r13)
/* 800DE750 000D9650  48 01 31 71 */	bl OSDisableInterrupts
/* 800DE754 000D9654  93 CD 9B 34 */	stw r30, DrawDoneCB-_SDA_BASE_(r13)
/* 800DE758 000D9658  48 01 31 91 */	bl OSRestoreInterrupts
/* 800DE75C 000D965C  7F E3 FB 78 */	mr r3, r31
/* 800DE760 000D9660  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DE764 000D9664  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DE768 000D9668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE76C 000D966C  7C 08 03 A6 */	mtlr r0
/* 800DE770 000D9670  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE774 000D9674  4E 80 00 20 */	blr 

.global GXFinishInterruptHandler
GXFinishInterruptHandler:
/* 800DE778 000D9678  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800DE77C 000D967C  7C 08 02 A6 */	mflr r0
/* 800DE780 000D9680  38 60 00 01 */	li r3, 1
/* 800DE784 000D9684  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800DE788 000D9688  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800DE78C 000D968C  7C 9F 23 78 */	mr r31, r4
/* 800DE790 000D9690  80 AD 9A E8 */	lwz r5, __peReg-_SDA_BASE_(r13)
/* 800DE794 000D9694  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 800DE798 000D9698  60 00 00 08 */	ori r0, r0, 8
/* 800DE79C 000D969C  B0 05 00 0A */	sth r0, 0xa(r5)
/* 800DE7A0 000D96A0  80 0D 9B 34 */	lwz r0, DrawDoneCB-_SDA_BASE_(r13)
/* 800DE7A4 000D96A4  98 6D 9B 30 */	stb r3, DrawDone-_SDA_BASE_(r13)
/* 800DE7A8 000D96A8  2C 00 00 00 */	cmpwi r0, 0
/* 800DE7AC 000D96AC  41 82 00 30 */	beq lbl_800DE7DC
/* 800DE7B0 000D96B0  38 61 00 08 */	addi r3, r1, 8
/* 800DE7B4 000D96B4  48 01 03 E9 */	bl OSClearContext
/* 800DE7B8 000D96B8  38 61 00 08 */	addi r3, r1, 8
/* 800DE7BC 000D96BC  48 01 01 B9 */	bl OSSetCurrentContext
/* 800DE7C0 000D96C0  81 8D 9B 34 */	lwz r12, DrawDoneCB-_SDA_BASE_(r13)
/* 800DE7C4 000D96C4  7D 89 03 A6 */	mtctr r12
/* 800DE7C8 000D96C8  4E 80 04 21 */	bctrl 
/* 800DE7CC 000D96CC  38 61 00 08 */	addi r3, r1, 8
/* 800DE7D0 000D96D0  48 01 03 CD */	bl OSClearContext
/* 800DE7D4 000D96D4  7F E3 FB 78 */	mr r3, r31
/* 800DE7D8 000D96D8  48 01 01 9D */	bl OSSetCurrentContext
lbl_800DE7DC:
/* 800DE7DC 000D96DC  38 6D 9B 28 */	addi r3, r13, FinishQueue-_SDA_BASE_
/* 800DE7E0 000D96E0  48 01 6B 6D */	bl OSWakeupThread
/* 800DE7E4 000D96E4  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800DE7E8 000D96E8  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800DE7EC 000D96EC  7C 08 03 A6 */	mtlr r0
/* 800DE7F0 000D96F0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800DE7F4 000D96F4  4E 80 00 20 */	blr 

.global __GXPEInit
__GXPEInit:
/* 800DE7F8 000D96F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE7FC 000D96FC  7C 08 02 A6 */	mflr r0
/* 800DE800 000D9700  3C 80 80 0E */	lis r4, GXTokenInterruptHandler@ha
/* 800DE804 000D9704  38 60 00 12 */	li r3, 0x12
/* 800DE808 000D9708  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE80C 000D970C  38 84 E6 B0 */	addi r4, r4, GXTokenInterruptHandler@l
/* 800DE810 000D9710  48 01 30 FD */	bl __OSSetInterruptHandler
/* 800DE814 000D9714  3C 80 80 0E */	lis r4, GXFinishInterruptHandler@ha
/* 800DE818 000D9718  38 60 00 13 */	li r3, 0x13
/* 800DE81C 000D971C  38 84 E7 78 */	addi r4, r4, GXFinishInterruptHandler@l
/* 800DE820 000D9720  48 01 30 ED */	bl __OSSetInterruptHandler
/* 800DE824 000D9724  38 6D 9B 28 */	addi r3, r13, FinishQueue-_SDA_BASE_
/* 800DE828 000D9728  48 01 59 21 */	bl OSInitThreadQueue
/* 800DE82C 000D972C  38 60 20 00 */	li r3, 0x2000
/* 800DE830 000D9730  48 01 34 A1 */	bl __OSUnmaskInterrupts
/* 800DE834 000D9734  38 60 10 00 */	li r3, 0x1000
/* 800DE838 000D9738  48 01 34 99 */	bl __OSUnmaskInterrupts
/* 800DE83C 000D973C  80 6D 9A E8 */	lwz r3, __peReg-_SDA_BASE_(r13)
/* 800DE840 000D9740  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800DE844 000D9744  60 00 00 0F */	ori r0, r0, 0xf
/* 800DE848 000D9748  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800DE84C 000D974C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DE850 000D9750  7C 08 03 A6 */	mtlr r0
/* 800DE854 000D9754  38 21 00 10 */	addi r1, r1, 0x10
/* 800DE858 000D9758  4E 80 00 20 */	blr 

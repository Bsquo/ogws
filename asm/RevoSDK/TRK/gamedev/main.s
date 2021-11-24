.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
gIsInitialized:
	.skip 0x4

.section .bss, "wa"
.balign 0x8
gRecvBuf:
	.skip 0x500
gRecvCB:
	.skip 0x1C

.section .text, "ax"
.global gdev_cc_initinterrupts
gdev_cc_initinterrupts:
/* 800C6290 000C1190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6294 000C1194  7C 08 02 A6 */	mflr r0
/* 800C6298 000C1198  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C629C 000C119C  48 00 06 19 */	bl DBInitInterrupts
/* 800C62A0 000C11A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C62A4 000C11A4  38 60 00 00 */	li r3, 0
/* 800C62A8 000C11A8  7C 08 03 A6 */	mtlr r0
/* 800C62AC 000C11AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C62B0 000C11B0  4E 80 00 20 */	blr 

.global gdev_cc_peek
gdev_cc_peek:
/* 800C62B4 000C11B4  94 21 FA F0 */	stwu r1, -0x510(r1)
/* 800C62B8 000C11B8  7C 08 02 A6 */	mflr r0
/* 800C62BC 000C11BC  90 01 05 14 */	stw r0, 0x514(r1)
/* 800C62C0 000C11C0  93 E1 05 0C */	stw r31, 0x50c(r1)
/* 800C62C4 000C11C4  48 00 06 45 */	bl DBQueryData
/* 800C62C8 000C11C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800C62CC 000C11CC  41 81 00 0C */	bgt lbl_800C62D8
/* 800C62D0 000C11D0  38 60 00 00 */	li r3, 0
/* 800C62D4 000C11D4  48 00 00 3C */	b lbl_800C6310
lbl_800C62D8:
/* 800C62D8 000C11D8  7F E4 FB 78 */	mr r4, r31
/* 800C62DC 000C11DC  38 61 00 08 */	addi r3, r1, 8
/* 800C62E0 000C11E0  48 00 06 CD */	bl DBRead
/* 800C62E4 000C11E4  2C 03 00 00 */	cmpwi r3, 0
/* 800C62E8 000C11E8  40 82 00 1C */	bne lbl_800C6304
/* 800C62EC 000C11EC  3C 60 80 41 */	lis r3, gRecvCB@ha
/* 800C62F0 000C11F0  7F E5 FB 78 */	mr r5, r31
/* 800C62F4 000C11F4  38 63 E1 38 */	addi r3, r3, gRecvCB@l
/* 800C62F8 000C11F8  38 81 00 08 */	addi r4, r1, 8
/* 800C62FC 000C11FC  48 00 03 5D */	bl CircleBufferWriteBytes
/* 800C6300 000C1200  48 00 00 0C */	b lbl_800C630C
lbl_800C6304:
/* 800C6304 000C1204  38 60 D8 E7 */	li r3, -10009
/* 800C6308 000C1208  48 00 00 08 */	b lbl_800C6310
lbl_800C630C:
/* 800C630C 000C120C  7F E3 FB 78 */	mr r3, r31
lbl_800C6310:
/* 800C6310 000C1210  80 01 05 14 */	lwz r0, 0x514(r1)
/* 800C6314 000C1214  83 E1 05 0C */	lwz r31, 0x50c(r1)
/* 800C6318 000C1218  7C 08 03 A6 */	mtlr r0
/* 800C631C 000C121C  38 21 05 10 */	addi r1, r1, 0x510
/* 800C6320 000C1220  4E 80 00 20 */	blr 

.global gdev_cc_post_stop
gdev_cc_post_stop:
/* 800C6324 000C1224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6328 000C1228  7C 08 02 A6 */	mflr r0
/* 800C632C 000C122C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6330 000C1230  48 00 08 0D */	bl DBOpen
/* 800C6334 000C1234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6338 000C1238  38 60 00 00 */	li r3, 0
/* 800C633C 000C123C  7C 08 03 A6 */	mtlr r0
/* 800C6340 000C1240  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6344 000C1244  4E 80 00 20 */	blr 

.global gdev_cc_pre_continue
gdev_cc_pre_continue:
/* 800C6348 000C1248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C634C 000C124C  7C 08 02 A6 */	mflr r0
/* 800C6350 000C1250  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6354 000C1254  48 00 07 ED */	bl DBClose
/* 800C6358 000C1258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C635C 000C125C  38 60 00 00 */	li r3, 0
/* 800C6360 000C1260  7C 08 03 A6 */	mtlr r0
/* 800C6364 000C1264  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6368 000C1268  4E 80 00 20 */	blr 

.global gdev_cc_write
gdev_cc_write:
/* 800C636C 000C126C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6370 000C1270  7C 08 02 A6 */	mflr r0
/* 800C6374 000C1274  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6378 000C1278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C637C 000C127C  7C 9F 23 78 */	mr r31, r4
/* 800C6380 000C1280  93 C1 00 08 */	stw r30, 8(r1)
/* 800C6384 000C1284  7C 7E 1B 78 */	mr r30, r3
/* 800C6388 000C1288  80 0D 9A 08 */	lwz r0, gIsInitialized-_SDA_BASE_(r13)
/* 800C638C 000C128C  2C 00 00 00 */	cmpwi r0, 0
/* 800C6390 000C1290  40 82 00 2C */	bne lbl_800C63BC
/* 800C6394 000C1294  38 60 D8 EF */	li r3, -10001
/* 800C6398 000C1298  48 00 00 30 */	b lbl_800C63C8
/* 800C639C 000C129C  48 00 00 20 */	b lbl_800C63BC
lbl_800C63A0:
/* 800C63A0 000C12A0  7F C3 F3 78 */	mr r3, r30
/* 800C63A4 000C12A4  7F E4 FB 78 */	mr r4, r31
/* 800C63A8 000C12A8  48 00 06 85 */	bl DBWrite
/* 800C63AC 000C12AC  2C 03 00 00 */	cmpwi r3, 0
/* 800C63B0 000C12B0  41 82 00 14 */	beq lbl_800C63C4
/* 800C63B4 000C12B4  7F DE 1A 14 */	add r30, r30, r3
/* 800C63B8 000C12B8  7F E3 F8 50 */	subf r31, r3, r31
lbl_800C63BC:
/* 800C63BC 000C12BC  2C 1F 00 00 */	cmpwi r31, 0
/* 800C63C0 000C12C0  41 81 FF E0 */	bgt lbl_800C63A0
lbl_800C63C4:
/* 800C63C4 000C12C4  38 60 00 00 */	li r3, 0
lbl_800C63C8:
/* 800C63C8 000C12C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C63CC 000C12CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C63D0 000C12D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C63D4 000C12D4  7C 08 03 A6 */	mtlr r0
/* 800C63D8 000C12D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C63DC 000C12DC  4E 80 00 20 */	blr 

.global gdev_cc_read
gdev_cc_read:
/* 800C63E0 000C12E0  94 21 FA E0 */	stwu r1, -0x520(r1)
/* 800C63E4 000C12E4  7C 08 02 A6 */	mflr r0
/* 800C63E8 000C12E8  90 01 05 24 */	stw r0, 0x524(r1)
/* 800C63EC 000C12EC  BF 61 05 0C */	stmw r27, 0x50c(r1)
/* 800C63F0 000C12F0  7C 7B 1B 78 */	mr r27, r3
/* 800C63F4 000C12F4  3B A0 00 00 */	li r29, 0
/* 800C63F8 000C12F8  80 0D 9A 08 */	lwz r0, gIsInitialized-_SDA_BASE_(r13)
/* 800C63FC 000C12FC  2C 00 00 00 */	cmpwi r0, 0
/* 800C6400 000C1300  40 82 00 0C */	bne lbl_800C640C
/* 800C6404 000C1304  38 60 D8 EF */	li r3, -10001
/* 800C6408 000C1308  48 00 00 78 */	b lbl_800C6480
lbl_800C640C:
/* 800C640C 000C130C  3C 60 80 41 */	lis r3, gRecvCB@ha
/* 800C6410 000C1310  7C 9E 23 78 */	mr r30, r4
/* 800C6414 000C1314  3B E3 E1 38 */	addi r31, r3, gRecvCB@l
/* 800C6418 000C1318  48 00 00 38 */	b lbl_800C6450
lbl_800C641C:
/* 800C641C 000C131C  3B A0 00 00 */	li r29, 0
/* 800C6420 000C1320  48 00 04 E9 */	bl DBQueryData
/* 800C6424 000C1324  7C 7C 1B 79 */	or. r28, r3, r3
/* 800C6428 000C1328  41 82 00 28 */	beq lbl_800C6450
/* 800C642C 000C132C  7F C4 F3 78 */	mr r4, r30
/* 800C6430 000C1330  38 61 00 08 */	addi r3, r1, 8
/* 800C6434 000C1334  48 00 05 79 */	bl DBRead
/* 800C6438 000C1338  7C 7D 1B 79 */	or. r29, r3, r3
/* 800C643C 000C133C  40 82 00 14 */	bne lbl_800C6450
/* 800C6440 000C1340  7F E3 FB 78 */	mr r3, r31
/* 800C6444 000C1344  7F 85 E3 78 */	mr r5, r28
/* 800C6448 000C1348  38 81 00 08 */	addi r4, r1, 8
/* 800C644C 000C134C  48 00 02 0D */	bl CircleBufferWriteBytes
lbl_800C6450:
/* 800C6450 000C1350  7F E3 FB 78 */	mr r3, r31
/* 800C6454 000C1354  48 00 03 5D */	bl CBGetBytesAvailableForRead
/* 800C6458 000C1358  7C 03 F0 40 */	cmplw r3, r30
/* 800C645C 000C135C  41 80 FF C0 */	blt lbl_800C641C
/* 800C6460 000C1360  28 1D 00 00 */	cmplwi r29, 0
/* 800C6464 000C1364  40 82 00 18 */	bne lbl_800C647C
/* 800C6468 000C1368  3C 60 80 41 */	lis r3, gRecvCB@ha
/* 800C646C 000C136C  7F 64 DB 78 */	mr r4, r27
/* 800C6470 000C1370  38 63 E1 38 */	addi r3, r3, gRecvCB@l
/* 800C6474 000C1374  7F C5 F3 78 */	mr r5, r30
/* 800C6478 000C1378  48 00 00 D9 */	bl CircleBufferReadBytes
lbl_800C647C:
/* 800C647C 000C137C  7F A3 EB 78 */	mr r3, r29
lbl_800C6480:
/* 800C6480 000C1380  BB 61 05 0C */	lmw r27, 0x50c(r1)
/* 800C6484 000C1384  80 01 05 24 */	lwz r0, 0x524(r1)
/* 800C6488 000C1388  7C 08 03 A6 */	mtlr r0
/* 800C648C 000C138C  38 21 05 20 */	addi r1, r1, 0x520
/* 800C6490 000C1390  4E 80 00 20 */	blr 

.global gdev_cc_close
gdev_cc_close:
/* 800C6494 000C1394  38 60 00 00 */	li r3, 0
/* 800C6498 000C1398  4E 80 00 20 */	blr 

.global gdev_cc_open
gdev_cc_open:
/* 800C649C 000C139C  80 0D 9A 08 */	lwz r0, gIsInitialized-_SDA_BASE_(r13)
/* 800C64A0 000C13A0  2C 00 00 00 */	cmpwi r0, 0
/* 800C64A4 000C13A4  41 82 00 0C */	beq lbl_800C64B0
/* 800C64A8 000C13A8  38 60 D8 EB */	li r3, -10005
/* 800C64AC 000C13AC  4E 80 00 20 */	blr 
lbl_800C64B0:
/* 800C64B0 000C13B0  38 00 00 01 */	li r0, 1
/* 800C64B4 000C13B4  38 60 00 00 */	li r3, 0
/* 800C64B8 000C13B8  90 0D 9A 08 */	stw r0, gIsInitialized-_SDA_BASE_(r13)
/* 800C64BC 000C13BC  4E 80 00 20 */	blr 

.global gdev_cc_shutdown
gdev_cc_shutdown:
/* 800C64C0 000C13C0  38 60 00 00 */	li r3, 0
/* 800C64C4 000C13C4  4E 80 00 20 */	blr 

.global gdev_cc_initialize
gdev_cc_initialize:
/* 800C64C8 000C13C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C64CC 000C13CC  7C 08 02 A6 */	mflr r0
/* 800C64D0 000C13D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C64D4 000C13D4  48 00 03 85 */	bl DBInitComm
/* 800C64D8 000C13D8  3C 60 80 41 */	lis r3, gRecvCB@ha
/* 800C64DC 000C13DC  3C 80 80 41 */	lis r4, gRecvBuf@ha
/* 800C64E0 000C13E0  38 63 E1 38 */	addi r3, r3, gRecvCB@l
/* 800C64E4 000C13E4  38 A0 05 00 */	li r5, 0x500
/* 800C64E8 000C13E8  38 84 DC 38 */	addi r4, r4, gRecvBuf@l
/* 800C64EC 000C13EC  48 00 02 75 */	bl CircleBufferInitialize
/* 800C64F0 000C13F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C64F4 000C13F4  38 60 00 00 */	li r3, 0
/* 800C64F8 000C13F8  7C 08 03 A6 */	mtlr r0
/* 800C64FC 000C13FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6500 000C1400  4E 80 00 20 */	blr 

.global OutputData
OutputData:
/* 800C6504 000C1404  2C 04 00 00 */	cmpwi r4, 0
/* 800C6508 000C1408  38 A0 00 00 */	li r5, 0
/* 800C650C 000C140C  4C 81 00 20 */	blelr 
/* 800C6510 000C1410  2C 04 00 08 */	cmpwi r4, 8
/* 800C6514 000C1414  38 64 FF F8 */	addi r3, r4, -8
/* 800C6518 000C1418  40 81 00 20 */	ble lbl_800C6538
/* 800C651C 000C141C  38 03 00 07 */	addi r0, r3, 7
/* 800C6520 000C1420  54 00 E8 FE */	srwi r0, r0, 3
/* 800C6524 000C1424  7C 09 03 A6 */	mtctr r0
/* 800C6528 000C1428  2C 03 00 00 */	cmpwi r3, 0
/* 800C652C 000C142C  40 81 00 0C */	ble lbl_800C6538
lbl_800C6530:
/* 800C6530 000C1430  38 A5 00 08 */	addi r5, r5, 8
/* 800C6534 000C1434  42 00 FF FC */	bdnz lbl_800C6530
lbl_800C6538:
/* 800C6538 000C1438  7C 05 20 50 */	subf r0, r5, r4
/* 800C653C 000C143C  7C 09 03 A6 */	mtctr r0
/* 800C6540 000C1440  7C 05 20 00 */	cmpw r5, r4
/* 800C6544 000C1444  4C 80 00 20 */	bgelr 
lbl_800C6548:
/* 800C6548 000C1448  42 00 00 00 */	bdnz lbl_800C6548
/* 800C654C 000C144C  4E 80 00 20 */	blr 

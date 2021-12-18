.include "macros.inc"

.section .text, "ax"
AllocUsedBlockFromFreeBlock_:
/* 800E6390 000E1290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6394 000E1294  7C 08 02 A6 */	mflr r0
/* 800E6398 000E1298  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E639C 000E129C  39 61 00 20 */	addi r11, r1, 0x20
/* 800E63A0 000E12A0  4B FC B9 A1 */	bl _savegpr_26
/* 800E63A4 000E12A4  81 04 00 08 */	lwz r8, 8(r4)
/* 800E63A8 000E12A8  7F C6 2A 14 */	add r30, r6, r5
/* 800E63AC 000E12AC  A0 C4 00 02 */	lhz r6, 2(r4)
/* 800E63B0 000E12B0  3B A5 FF F0 */	addi r29, r5, -16
/* 800E63B4 000E12B4  80 04 00 04 */	lwz r0, 4(r4)
/* 800E63B8 000E12B8  2C 08 00 00 */	cmpwi r8, 0
/* 800E63BC 000E12BC  54 C9 C6 7E */	rlwinm r9, r6, 0x18, 0x19, 0x1f
/* 800E63C0 000E12C0  81 44 00 0C */	lwz r10, 0xc(r4)
/* 800E63C4 000E12C4  7C C4 02 14 */	add r6, r4, r0
/* 800E63C8 000E12C8  7C BB 2B 78 */	mr r27, r5
/* 800E63CC 000E12CC  7C 7A 1B 78 */	mr r26, r3
/* 800E63D0 000E12D0  7C FC 3B 78 */	mr r28, r7
/* 800E63D4 000E12D4  7F BF EB 78 */	mr r31, r29
/* 800E63D8 000E12D8  7C A9 20 50 */	subf r5, r9, r4
/* 800E63DC 000E12DC  38 C6 00 10 */	addi r6, r6, 0x10
/* 800E63E0 000E12E0  41 82 00 0C */	beq lbl_800E63EC
/* 800E63E4 000E12E4  91 48 00 0C */	stw r10, 0xc(r8)
/* 800E63E8 000E12E8  48 00 00 08 */	b lbl_800E63F0
lbl_800E63EC:
/* 800E63EC 000E12EC  91 43 00 00 */	stw r10, 0(r3)
lbl_800E63F0:
/* 800E63F0 000E12F0  2C 0A 00 00 */	cmpwi r10, 0
/* 800E63F4 000E12F4  41 82 00 0C */	beq lbl_800E6400
/* 800E63F8 000E12F8  91 0A 00 08 */	stw r8, 8(r10)
/* 800E63FC 000E12FC  48 00 00 08 */	b lbl_800E6404
lbl_800E6400:
/* 800E6400 000E1300  91 03 00 04 */	stw r8, 4(r3)
lbl_800E6404:
/* 800E6404 000E1304  7C 05 E8 50 */	subf r0, r5, r29
/* 800E6408 000E1308  28 00 00 14 */	cmplwi r0, 0x14
/* 800E640C 000E130C  40 80 00 0C */	bge lbl_800E6418
/* 800E6410 000E1310  7C BF 2B 78 */	mr r31, r5
/* 800E6414 000E1314  48 00 00 60 */	b lbl_800E6474
lbl_800E6418:
/* 800E6418 000E1318  38 80 46 52 */	li r4, 0x4652
/* 800E641C 000E131C  38 05 00 10 */	addi r0, r5, 0x10
/* 800E6420 000E1320  B0 85 00 00 */	sth r4, 0(r5)
/* 800E6424 000E1324  38 80 00 00 */	li r4, 0
/* 800E6428 000E1328  7C 00 E8 50 */	subf r0, r0, r29
/* 800E642C 000E132C  2C 08 00 00 */	cmpwi r8, 0
/* 800E6430 000E1330  B0 85 00 02 */	sth r4, 2(r5)
/* 800E6434 000E1334  90 05 00 04 */	stw r0, 4(r5)
/* 800E6438 000E1338  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E643C 000E133C  91 05 00 08 */	stw r8, 8(r5)
/* 800E6440 000E1340  41 82 00 10 */	beq lbl_800E6450
/* 800E6444 000E1344  80 88 00 0C */	lwz r4, 0xc(r8)
/* 800E6448 000E1348  90 A8 00 0C */	stw r5, 0xc(r8)
/* 800E644C 000E134C  48 00 00 0C */	b lbl_800E6458
lbl_800E6450:
/* 800E6450 000E1350  80 83 00 00 */	lwz r4, 0(r3)
/* 800E6454 000E1354  90 A3 00 00 */	stw r5, 0(r3)
lbl_800E6458:
/* 800E6458 000E1358  2C 04 00 00 */	cmpwi r4, 0
/* 800E645C 000E135C  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E6460 000E1360  41 82 00 0C */	beq lbl_800E646C
/* 800E6464 000E1364  90 A4 00 08 */	stw r5, 8(r4)
/* 800E6468 000E1368  48 00 00 08 */	b lbl_800E6470
lbl_800E646C:
/* 800E646C 000E136C  90 A3 00 04 */	stw r5, 4(r3)
lbl_800E6470:
/* 800E6470 000E1370  7C A8 2B 78 */	mr r8, r5
lbl_800E6474:
/* 800E6474 000E1374  7C 1E 30 50 */	subf r0, r30, r6
/* 800E6478 000E1378  28 00 00 14 */	cmplwi r0, 0x14
/* 800E647C 000E137C  40 80 00 0C */	bge lbl_800E6488
/* 800E6480 000E1380  7C DE 33 78 */	mr r30, r6
/* 800E6484 000E1384  48 00 00 5C */	b lbl_800E64E0
lbl_800E6488:
/* 800E6488 000E1388  38 80 46 52 */	li r4, 0x4652
/* 800E648C 000E138C  38 1E 00 10 */	addi r0, r30, 0x10
/* 800E6490 000E1390  B0 9E 00 00 */	sth r4, 0(r30)
/* 800E6494 000E1394  38 80 00 00 */	li r4, 0
/* 800E6498 000E1398  7C 00 30 50 */	subf r0, r0, r6
/* 800E649C 000E139C  2C 08 00 00 */	cmpwi r8, 0
/* 800E64A0 000E13A0  B0 9E 00 02 */	sth r4, 2(r30)
/* 800E64A4 000E13A4  90 1E 00 04 */	stw r0, 4(r30)
/* 800E64A8 000E13A8  90 9E 00 0C */	stw r4, 0xc(r30)
/* 800E64AC 000E13AC  91 1E 00 08 */	stw r8, 8(r30)
/* 800E64B0 000E13B0  41 82 00 10 */	beq lbl_800E64C0
/* 800E64B4 000E13B4  80 88 00 0C */	lwz r4, 0xc(r8)
/* 800E64B8 000E13B8  93 C8 00 0C */	stw r30, 0xc(r8)
/* 800E64BC 000E13BC  48 00 00 0C */	b lbl_800E64C8
lbl_800E64C0:
/* 800E64C0 000E13C0  80 83 00 00 */	lwz r4, 0(r3)
/* 800E64C4 000E13C4  93 C3 00 00 */	stw r30, 0(r3)
lbl_800E64C8:
/* 800E64C8 000E13C8  2C 04 00 00 */	cmpwi r4, 0
/* 800E64CC 000E13CC  90 9E 00 0C */	stw r4, 0xc(r30)
/* 800E64D0 000E13D0  41 82 00 0C */	beq lbl_800E64DC
/* 800E64D4 000E13D4  93 C4 00 08 */	stw r30, 8(r4)
/* 800E64D8 000E13D8  48 00 00 08 */	b lbl_800E64E0
lbl_800E64DC:
/* 800E64DC 000E13DC  93 C3 00 04 */	stw r30, 4(r3)
lbl_800E64E0:
/* 800E64E0 000E13E0  80 03 FF FC */	lwz r0, -4(r3)
/* 800E64E4 000E13E4  7C BF F0 50 */	subf r5, r31, r30
/* 800E64E8 000E13E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800E64EC 000E13EC  41 82 00 10 */	beq lbl_800E64FC
/* 800E64F0 000E13F0  7F E3 FB 78 */	mr r3, r31
/* 800E64F4 000E13F4  38 80 00 00 */	li r4, 0
/* 800E64F8 000E13F8  4B F1 DC 0D */	bl memset
lbl_800E64FC:
/* 800E64FC 000E13FC  38 A0 00 00 */	li r5, 0
/* 800E6500 000E1400  38 9D 00 10 */	addi r4, r29, 0x10
/* 800E6504 000E1404  7C A3 2B 78 */	mr r3, r5
/* 800E6508 000E1408  38 C0 55 44 */	li r6, 0x5544
/* 800E650C 000E140C  7C 84 F0 50 */	subf r4, r4, r30
/* 800E6510 000E1410  7C 1F E8 50 */	subf r0, r31, r29
/* 800E6514 000E1414  53 83 7C 20 */	rlwimi r3, r28, 0xf, 0x10, 0x10
/* 800E6518 000E1418  B0 DD 00 00 */	sth r6, 0(r29)
/* 800E651C 000E141C  50 03 44 6E */	rlwimi r3, r0, 8, 0x11, 0x17
/* 800E6520 000E1420  90 9D 00 04 */	stw r4, 4(r29)
/* 800E6524 000E1424  90 BD 00 08 */	stw r5, 8(r29)
/* 800E6528 000E1428  90 BD 00 0C */	stw r5, 0xc(r29)
/* 800E652C 000E142C  B0 7D 00 02 */	sth r3, 2(r29)
/* 800E6530 000E1430  A0 1A 00 10 */	lhz r0, 0x10(r26)
/* 800E6534 000E1434  50 03 06 3E */	rlwimi r3, r0, 0, 0x18, 0x1f
/* 800E6538 000E1438  B0 7D 00 02 */	sth r3, 2(r29)
/* 800E653C 000E143C  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 800E6540 000E1440  2C 04 00 00 */	cmpwi r4, 0
/* 800E6544 000E1444  90 9D 00 08 */	stw r4, 8(r29)
/* 800E6548 000E1448  41 82 00 10 */	beq lbl_800E6558
/* 800E654C 000E144C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800E6550 000E1450  93 A4 00 0C */	stw r29, 0xc(r4)
/* 800E6554 000E1454  48 00 00 0C */	b lbl_800E6560
lbl_800E6558:
/* 800E6558 000E1458  80 7A 00 08 */	lwz r3, 8(r26)
/* 800E655C 000E145C  93 BA 00 08 */	stw r29, 8(r26)
lbl_800E6560:
/* 800E6560 000E1460  2C 03 00 00 */	cmpwi r3, 0
/* 800E6564 000E1464  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800E6568 000E1468  41 82 00 0C */	beq lbl_800E6574
/* 800E656C 000E146C  93 A3 00 08 */	stw r29, 8(r3)
/* 800E6570 000E1470  48 00 00 08 */	b lbl_800E6578
lbl_800E6574:
/* 800E6574 000E1474  93 BA 00 0C */	stw r29, 0xc(r26)
lbl_800E6578:
/* 800E6578 000E1478  39 61 00 20 */	addi r11, r1, 0x20
/* 800E657C 000E147C  7F 63 DB 78 */	mr r3, r27
/* 800E6580 000E1480  4B FC B8 0D */	bl _restgpr_26
/* 800E6584 000E1484  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6588 000E1488  7C 08 03 A6 */	mtlr r0
/* 800E658C 000E148C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6590 000E1490  4E 80 00 20 */	blr 

AllocFromHead_:
/* 800E6594 000E1494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6598 000E1498  7C 08 02 A6 */	mflr r0
/* 800E659C 000E149C  38 63 00 3C */	addi r3, r3, 0x3c
/* 800E65A0 000E14A0  7C 86 23 78 */	mr r6, r4
/* 800E65A4 000E14A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E65A8 000E14A8  38 05 FF FF */	addi r0, r5, -1
/* 800E65AC 000E14AC  7C 08 00 F8 */	nor r8, r0, r0
/* 800E65B0 000E14B0  39 80 00 00 */	li r12, 0
/* 800E65B4 000E14B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E65B8 000E14B8  3B E0 FF FF */	li r31, -1
/* 800E65BC 000E14BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E65C0 000E14C0  3B C0 00 00 */	li r30, 0
/* 800E65C4 000E14C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E65C8 000E14C8  A0 E3 00 12 */	lhz r7, 0x12(r3)
/* 800E65CC 000E14CC  81 63 00 00 */	lwz r11, 0(r3)
/* 800E65D0 000E14D0  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 800E65D4 000E14D4  7C 00 00 34 */	cntlzw r0, r0
/* 800E65D8 000E14D8  54 0A D9 7E */	srwi r10, r0, 5
/* 800E65DC 000E14DC  48 00 00 50 */	b lbl_800E662C
lbl_800E65E0:
/* 800E65E0 000E14E0  3B AB 00 10 */	addi r29, r11, 0x10
/* 800E65E4 000E14E4  81 2B 00 04 */	lwz r9, 4(r11)
/* 800E65E8 000E14E8  7C E5 EA 14 */	add r7, r5, r29
/* 800E65EC 000E14EC  38 07 FF FF */	addi r0, r7, -1
/* 800E65F0 000E14F0  7D 07 00 38 */	and r7, r8, r0
/* 800E65F4 000E14F4  7C 1D 38 50 */	subf r0, r29, r7
/* 800E65F8 000E14F8  7C 04 02 14 */	add r0, r4, r0
/* 800E65FC 000E14FC  7C 09 00 40 */	cmplw r9, r0
/* 800E6600 000E1500  41 80 00 28 */	blt lbl_800E6628
/* 800E6604 000E1504  7C 1F 48 40 */	cmplw r31, r9
/* 800E6608 000E1508  40 81 00 20 */	ble lbl_800E6628
/* 800E660C 000E150C  2C 0A 00 00 */	cmpwi r10, 0
/* 800E6610 000E1510  7D 6C 5B 78 */	mr r12, r11
/* 800E6614 000E1514  7D 3F 4B 78 */	mr r31, r9
/* 800E6618 000E1518  7C FE 3B 78 */	mr r30, r7
/* 800E661C 000E151C  40 82 00 18 */	bne lbl_800E6634
/* 800E6620 000E1520  7C 09 20 40 */	cmplw r9, r4
/* 800E6624 000E1524  41 82 00 10 */	beq lbl_800E6634
lbl_800E6628:
/* 800E6628 000E1528  81 6B 00 0C */	lwz r11, 0xc(r11)
lbl_800E662C:
/* 800E662C 000E152C  2C 0B 00 00 */	cmpwi r11, 0
/* 800E6630 000E1530  40 82 FF B0 */	bne lbl_800E65E0
lbl_800E6634:
/* 800E6634 000E1534  2C 0C 00 00 */	cmpwi r12, 0
/* 800E6638 000E1538  41 82 00 18 */	beq lbl_800E6650
/* 800E663C 000E153C  7D 84 63 78 */	mr r4, r12
/* 800E6640 000E1540  7F C5 F3 78 */	mr r5, r30
/* 800E6644 000E1544  38 E0 00 00 */	li r7, 0
/* 800E6648 000E1548  4B FF FD 49 */	bl AllocUsedBlockFromFreeBlock_
/* 800E664C 000E154C  48 00 00 08 */	b lbl_800E6654
lbl_800E6650:
/* 800E6650 000E1550  38 60 00 00 */	li r3, 0
lbl_800E6654:
/* 800E6654 000E1554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6658 000E1558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E665C 000E155C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6660 000E1560  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E6664 000E1564  7C 08 03 A6 */	mtlr r0
/* 800E6668 000E1568  38 21 00 20 */	addi r1, r1, 0x20
/* 800E666C 000E156C  4E 80 00 20 */	blr 

AllocFromTail_:
/* 800E6670 000E1570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6674 000E1574  7C 08 02 A6 */	mflr r0
/* 800E6678 000E1578  38 63 00 3C */	addi r3, r3, 0x3c
/* 800E667C 000E157C  7C 86 23 78 */	mr r6, r4
/* 800E6680 000E1580  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6684 000E1584  38 05 FF FF */	addi r0, r5, -1
/* 800E6688 000E1588  7C 07 00 F8 */	nor r7, r0, r0
/* 800E668C 000E158C  39 60 00 00 */	li r11, 0
/* 800E6690 000E1590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6694 000E1594  39 80 FF FF */	li r12, -1
/* 800E6698 000E1598  93 C1 00 08 */	stw r30, 8(r1)
/* 800E669C 000E159C  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 800E66A0 000E15A0  81 43 00 04 */	lwz r10, 4(r3)
/* 800E66A4 000E15A4  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 800E66A8 000E15A8  38 A0 00 00 */	li r5, 0
/* 800E66AC 000E15AC  7C 00 00 34 */	cntlzw r0, r0
/* 800E66B0 000E15B0  54 09 D9 7E */	srwi r9, r0, 5
/* 800E66B4 000E15B4  48 00 00 48 */	b lbl_800E66FC
lbl_800E66B8:
/* 800E66B8 000E15B8  81 0A 00 04 */	lwz r8, 4(r10)
/* 800E66BC 000E15BC  3B EA 00 10 */	addi r31, r10, 0x10
/* 800E66C0 000E15C0  7C 08 FA 14 */	add r0, r8, r31
/* 800E66C4 000E15C4  7C 04 00 50 */	subf r0, r4, r0
/* 800E66C8 000E15C8  7C FE 00 38 */	and r30, r7, r0
/* 800E66CC 000E15CC  7C 1F F0 51 */	subf. r0, r31, r30
/* 800E66D0 000E15D0  41 80 00 28 */	blt lbl_800E66F8
/* 800E66D4 000E15D4  7C 0C 40 40 */	cmplw r12, r8
/* 800E66D8 000E15D8  40 81 00 20 */	ble lbl_800E66F8
/* 800E66DC 000E15DC  2C 09 00 00 */	cmpwi r9, 0
/* 800E66E0 000E15E0  7D 4B 53 78 */	mr r11, r10
/* 800E66E4 000E15E4  7D 0C 43 78 */	mr r12, r8
/* 800E66E8 000E15E8  7F C5 F3 78 */	mr r5, r30
/* 800E66EC 000E15EC  40 82 00 18 */	bne lbl_800E6704
/* 800E66F0 000E15F0  7C 08 20 40 */	cmplw r8, r4
/* 800E66F4 000E15F4  41 82 00 10 */	beq lbl_800E6704
lbl_800E66F8:
/* 800E66F8 000E15F8  81 4A 00 08 */	lwz r10, 8(r10)
lbl_800E66FC:
/* 800E66FC 000E15FC  2C 0A 00 00 */	cmpwi r10, 0
/* 800E6700 000E1600  40 82 FF B8 */	bne lbl_800E66B8
lbl_800E6704:
/* 800E6704 000E1604  2C 0B 00 00 */	cmpwi r11, 0
/* 800E6708 000E1608  41 82 00 14 */	beq lbl_800E671C
/* 800E670C 000E160C  7D 64 5B 78 */	mr r4, r11
/* 800E6710 000E1610  38 E0 00 01 */	li r7, 1
/* 800E6714 000E1614  4B FF FC 7D */	bl AllocUsedBlockFromFreeBlock_
/* 800E6718 000E1618  48 00 00 08 */	b lbl_800E6720
lbl_800E671C:
/* 800E671C 000E161C  38 60 00 00 */	li r3, 0
lbl_800E6720:
/* 800E6720 000E1620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E6724 000E1624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6728 000E1628  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E672C 000E162C  7C 08 03 A6 */	mtlr r0
/* 800E6730 000E1630  38 21 00 10 */	addi r1, r1, 0x10
/* 800E6734 000E1634  4E 80 00 20 */	blr 

RecycleRegion_:
/* 800E6738 000E1638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E673C 000E163C  39 00 00 00 */	li r8, 0
/* 800E6740 000E1640  80 A4 00 00 */	lwz r5, 0(r4)
/* 800E6744 000E1644  80 04 00 04 */	lwz r0, 4(r4)
/* 800E6748 000E1648  90 A1 00 08 */	stw r5, 8(r1)
/* 800E674C 000E164C  80 C3 00 00 */	lwz r6, 0(r3)
/* 800E6750 000E1650  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6754 000E1654  48 00 00 6C */	b lbl_800E67C0
lbl_800E6758:
/* 800E6758 000E1658  80 04 00 00 */	lwz r0, 0(r4)
/* 800E675C 000E165C  7C 06 00 40 */	cmplw r6, r0
/* 800E6760 000E1660  40 80 00 0C */	bge lbl_800E676C
/* 800E6764 000E1664  7C C8 33 78 */	mr r8, r6
/* 800E6768 000E1668  48 00 00 54 */	b lbl_800E67BC
lbl_800E676C:
/* 800E676C 000E166C  80 04 00 04 */	lwz r0, 4(r4)
/* 800E6770 000E1670  7C 06 00 40 */	cmplw r6, r0
/* 800E6774 000E1674  40 82 00 54 */	bne lbl_800E67C8
/* 800E6778 000E1678  80 06 00 04 */	lwz r0, 4(r6)
/* 800E677C 000E167C  80 E6 00 08 */	lwz r7, 8(r6)
/* 800E6780 000E1680  7C A6 02 14 */	add r5, r6, r0
/* 800E6784 000E1684  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 800E6788 000E1688  38 05 00 10 */	addi r0, r5, 0x10
/* 800E678C 000E168C  2C 07 00 00 */	cmpwi r7, 0
/* 800E6790 000E1690  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6794 000E1694  41 82 00 0C */	beq lbl_800E67A0
/* 800E6798 000E1698  90 C7 00 0C */	stw r6, 0xc(r7)
/* 800E679C 000E169C  48 00 00 08 */	b lbl_800E67A4
lbl_800E67A0:
/* 800E67A0 000E16A0  90 C3 00 00 */	stw r6, 0(r3)
lbl_800E67A4:
/* 800E67A4 000E16A4  2C 06 00 00 */	cmpwi r6, 0
/* 800E67A8 000E16A8  41 82 00 0C */	beq lbl_800E67B4
/* 800E67AC 000E16AC  90 E6 00 08 */	stw r7, 8(r6)
/* 800E67B0 000E16B0  48 00 00 18 */	b lbl_800E67C8
lbl_800E67B4:
/* 800E67B4 000E16B4  90 E3 00 04 */	stw r7, 4(r3)
/* 800E67B8 000E16B8  48 00 00 10 */	b lbl_800E67C8
lbl_800E67BC:
/* 800E67BC 000E16BC  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_800E67C0:
/* 800E67C0 000E16C0  2C 06 00 00 */	cmpwi r6, 0
/* 800E67C4 000E16C4  40 82 FF 94 */	bne lbl_800E6758
lbl_800E67C8:
/* 800E67C8 000E16C8  2C 08 00 00 */	cmpwi r8, 0
/* 800E67CC 000E16CC  41 82 00 54 */	beq lbl_800E6820
/* 800E67D0 000E16D0  80 A8 00 04 */	lwz r5, 4(r8)
/* 800E67D4 000E16D4  80 04 00 00 */	lwz r0, 0(r4)
/* 800E67D8 000E16D8  7C 88 2A 14 */	add r4, r8, r5
/* 800E67DC 000E16DC  38 84 00 10 */	addi r4, r4, 0x10
/* 800E67E0 000E16E0  7C 04 00 40 */	cmplw r4, r0
/* 800E67E4 000E16E4  40 82 00 3C */	bne lbl_800E6820
/* 800E67E8 000E16E8  80 A8 00 08 */	lwz r5, 8(r8)
/* 800E67EC 000E16EC  91 01 00 08 */	stw r8, 8(r1)
/* 800E67F0 000E16F0  2C 05 00 00 */	cmpwi r5, 0
/* 800E67F4 000E16F4  80 88 00 0C */	lwz r4, 0xc(r8)
/* 800E67F8 000E16F8  41 82 00 0C */	beq lbl_800E6804
/* 800E67FC 000E16FC  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E6800 000E1700  48 00 00 08 */	b lbl_800E6808
lbl_800E6804:
/* 800E6804 000E1704  90 83 00 00 */	stw r4, 0(r3)
lbl_800E6808:
/* 800E6808 000E1708  2C 04 00 00 */	cmpwi r4, 0
/* 800E680C 000E170C  41 82 00 0C */	beq lbl_800E6818
/* 800E6810 000E1710  90 A4 00 08 */	stw r5, 8(r4)
/* 800E6814 000E1714  48 00 00 08 */	b lbl_800E681C
lbl_800E6818:
/* 800E6818 000E1718  90 A3 00 04 */	stw r5, 4(r3)
lbl_800E681C:
/* 800E681C 000E171C  7C A8 2B 78 */	mr r8, r5
lbl_800E6820:
/* 800E6820 000E1720  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800E6824 000E1724  80 A1 00 08 */	lwz r5, 8(r1)
/* 800E6828 000E1728  7C 05 30 50 */	subf r0, r5, r6
/* 800E682C 000E172C  28 00 00 10 */	cmplwi r0, 0x10
/* 800E6830 000E1730  40 80 00 0C */	bge lbl_800E683C
/* 800E6834 000E1734  38 60 00 00 */	li r3, 0
/* 800E6838 000E1738  48 00 00 60 */	b lbl_800E6898
lbl_800E683C:
/* 800E683C 000E173C  38 80 46 52 */	li r4, 0x4652
/* 800E6840 000E1740  38 05 00 10 */	addi r0, r5, 0x10
/* 800E6844 000E1744  B0 85 00 00 */	sth r4, 0(r5)
/* 800E6848 000E1748  38 80 00 00 */	li r4, 0
/* 800E684C 000E174C  7C 00 30 50 */	subf r0, r0, r6
/* 800E6850 000E1750  2C 08 00 00 */	cmpwi r8, 0
/* 800E6854 000E1754  B0 85 00 02 */	sth r4, 2(r5)
/* 800E6858 000E1758  90 05 00 04 */	stw r0, 4(r5)
/* 800E685C 000E175C  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E6860 000E1760  91 05 00 08 */	stw r8, 8(r5)
/* 800E6864 000E1764  41 82 00 10 */	beq lbl_800E6874
/* 800E6868 000E1768  80 88 00 0C */	lwz r4, 0xc(r8)
/* 800E686C 000E176C  90 A8 00 0C */	stw r5, 0xc(r8)
/* 800E6870 000E1770  48 00 00 0C */	b lbl_800E687C
lbl_800E6874:
/* 800E6874 000E1774  80 83 00 00 */	lwz r4, 0(r3)
/* 800E6878 000E1778  90 A3 00 00 */	stw r5, 0(r3)
lbl_800E687C:
/* 800E687C 000E177C  2C 04 00 00 */	cmpwi r4, 0
/* 800E6880 000E1780  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E6884 000E1784  41 82 00 0C */	beq lbl_800E6890
/* 800E6888 000E1788  90 A4 00 08 */	stw r5, 8(r4)
/* 800E688C 000E178C  48 00 00 08 */	b lbl_800E6894
lbl_800E6890:
/* 800E6890 000E1790  90 A3 00 04 */	stw r5, 4(r3)
lbl_800E6894:
/* 800E6894 000E1794  38 60 00 01 */	li r3, 1
lbl_800E6898:
/* 800E6898 000E1798  38 21 00 10 */	addi r1, r1, 0x10
/* 800E689C 000E179C  4E 80 00 20 */	blr 

.global MEMCreateExpHeapEx
MEMCreateExpHeapEx:
/* 800E68A0 000E17A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E68A4 000E17A4  7C 08 02 A6 */	mflr r0
/* 800E68A8 000E17A8  7C 84 1A 14 */	add r4, r4, r3
/* 800E68AC 000E17AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E68B0 000E17B0  38 03 00 03 */	addi r0, r3, 3
/* 800E68B4 000E17B4  54 86 00 3A */	rlwinm r6, r4, 0, 0, 0x1d
/* 800E68B8 000E17B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E68BC 000E17BC  54 1F 00 3A */	rlwinm r31, r0, 0, 0, 0x1d
/* 800E68C0 000E17C0  7C 1F 30 40 */	cmplw r31, r6
/* 800E68C4 000E17C4  41 81 00 10 */	bgt lbl_800E68D4
/* 800E68C8 000E17C8  7C 1F 30 50 */	subf r0, r31, r6
/* 800E68CC 000E17CC  28 00 00 64 */	cmplwi r0, 0x64
/* 800E68D0 000E17D0  40 80 00 0C */	bge lbl_800E68DC
lbl_800E68D4:
/* 800E68D4 000E17D4  38 60 00 00 */	li r3, 0
/* 800E68D8 000E17D8  48 00 00 64 */	b lbl_800E693C
lbl_800E68DC:
/* 800E68DC 000E17DC  3C 80 45 58 */	lis r4, 0x45585048@ha
/* 800E68E0 000E17E0  7C A7 2B 78 */	mr r7, r5
/* 800E68E4 000E17E4  7F E3 FB 78 */	mr r3, r31
/* 800E68E8 000E17E8  38 BF 00 50 */	addi r5, r31, 0x50
/* 800E68EC 000E17EC  38 84 50 48 */	addi r4, r4, 0x45585048@l
/* 800E68F0 000E17F0  4B FF F6 35 */	bl MEMiInitHeapHead
/* 800E68F4 000E17F4  38 A0 00 00 */	li r5, 0
/* 800E68F8 000E17F8  38 80 46 52 */	li r4, 0x4652
/* 800E68FC 000E17FC  B0 BF 00 4C */	sth r5, 0x4c(r31)
/* 800E6900 000E1800  7F E3 FB 78 */	mr r3, r31
/* 800E6904 000E1804  B0 BF 00 4E */	sth r5, 0x4e(r31)
/* 800E6908 000E1808  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 800E690C 000E180C  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 800E6910 000E1810  38 06 00 10 */	addi r0, r6, 0x10
/* 800E6914 000E1814  B0 86 00 00 */	sth r4, 0(r6)
/* 800E6918 000E1818  7C 00 38 50 */	subf r0, r0, r7
/* 800E691C 000E181C  B0 A6 00 02 */	sth r5, 2(r6)
/* 800E6920 000E1820  90 06 00 04 */	stw r0, 4(r6)
/* 800E6924 000E1824  90 A6 00 08 */	stw r5, 8(r6)
/* 800E6928 000E1828  90 A6 00 0C */	stw r5, 0xc(r6)
/* 800E692C 000E182C  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 800E6930 000E1830  90 DF 00 40 */	stw r6, 0x40(r31)
/* 800E6934 000E1834  90 BF 00 44 */	stw r5, 0x44(r31)
/* 800E6938 000E1838  90 BF 00 48 */	stw r5, 0x48(r31)
lbl_800E693C:
/* 800E693C 000E183C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E6940 000E1840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6944 000E1844  7C 08 03 A6 */	mtlr r0
/* 800E6948 000E1848  38 21 00 10 */	addi r1, r1, 0x10
/* 800E694C 000E184C  4E 80 00 20 */	blr 

.global MEMDestroyExpHeap
MEMDestroyExpHeap:
/* 800E6950 000E1850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6954 000E1854  7C 08 02 A6 */	mflr r0
/* 800E6958 000E1858  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E695C 000E185C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6960 000E1860  7C 7F 1B 78 */	mr r31, r3
/* 800E6964 000E1864  4B FF F7 81 */	bl MEMiFinalizeHeap
/* 800E6968 000E1868  7F E3 FB 78 */	mr r3, r31
/* 800E696C 000E186C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6970 000E1870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E6974 000E1874  7C 08 03 A6 */	mtlr r0
/* 800E6978 000E1878  38 21 00 10 */	addi r1, r1, 0x10
/* 800E697C 000E187C  4E 80 00 20 */	blr 

.global MEMAllocFromExpHeapEx
MEMAllocFromExpHeapEx:
/* 800E6980 000E1880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6984 000E1884  7C 08 02 A6 */	mflr r0
/* 800E6988 000E1888  2C 04 00 00 */	cmpwi r4, 0
/* 800E698C 000E188C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6990 000E1890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6994 000E1894  7C BF 2B 78 */	mr r31, r5
/* 800E6998 000E1898  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E699C 000E189C  7C 9E 23 78 */	mr r30, r4
/* 800E69A0 000E18A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E69A4 000E18A4  7C 7D 1B 78 */	mr r29, r3
/* 800E69A8 000E18A8  40 82 00 08 */	bne lbl_800E69B0
/* 800E69AC 000E18AC  3B C0 00 01 */	li r30, 1
lbl_800E69B0:
/* 800E69B0 000E18B0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E69B4 000E18B4  38 9E 00 03 */	addi r4, r30, 3
/* 800E69B8 000E18B8  54 9E 00 3A */	rlwinm r30, r4, 0, 0, 0x1d
/* 800E69BC 000E18BC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E69C0 000E18C0  41 82 00 0C */	beq lbl_800E69CC
/* 800E69C4 000E18C4  38 63 00 20 */	addi r3, r3, 0x20
/* 800E69C8 000E18C8  48 00 C1 B5 */	bl OSLockMutex
lbl_800E69CC:
/* 800E69CC 000E18CC  2C 1F 00 00 */	cmpwi r31, 0
/* 800E69D0 000E18D0  41 80 00 18 */	blt lbl_800E69E8
/* 800E69D4 000E18D4  7F A3 EB 78 */	mr r3, r29
/* 800E69D8 000E18D8  7F C4 F3 78 */	mr r4, r30
/* 800E69DC 000E18DC  7F E5 FB 78 */	mr r5, r31
/* 800E69E0 000E18E0  4B FF FB B5 */	bl AllocFromHead_
/* 800E69E4 000E18E4  48 00 00 14 */	b lbl_800E69F8
lbl_800E69E8:
/* 800E69E8 000E18E8  7F A3 EB 78 */	mr r3, r29
/* 800E69EC 000E18EC  7F C4 F3 78 */	mr r4, r30
/* 800E69F0 000E18F0  7C BF 00 D0 */	neg r5, r31
/* 800E69F4 000E18F4  4B FF FC 7D */	bl AllocFromTail_
lbl_800E69F8:
/* 800E69F8 000E18F8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 800E69FC 000E18FC  7C 7F 1B 78 */	mr r31, r3
/* 800E6A00 000E1900  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6A04 000E1904  41 82 00 0C */	beq lbl_800E6A10
/* 800E6A08 000E1908  38 7D 00 20 */	addi r3, r29, 0x20
/* 800E6A0C 000E190C  48 00 C2 4D */	bl OSUnlockMutex
lbl_800E6A10:
/* 800E6A10 000E1910  7F E3 FB 78 */	mr r3, r31
/* 800E6A14 000E1914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6A18 000E1918  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6A1C 000E191C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E6A20 000E1920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6A24 000E1924  7C 08 03 A6 */	mtlr r0
/* 800E6A28 000E1928  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6A2C 000E192C  4E 80 00 20 */	blr 

.global MEMResizeForMBlockExpHeap
MEMResizeForMBlockExpHeap:
/* 800E6A30 000E1930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6A34 000E1934  7C 08 02 A6 */	mflr r0
/* 800E6A38 000E1938  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E6A3C 000E193C  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6A40 000E1940  4B FC B3 01 */	bl _savegpr_26
/* 800E6A44 000E1944  38 A5 00 03 */	addi r5, r5, 3
/* 800E6A48 000E1948  80 04 FF F4 */	lwz r0, -0xc(r4)
/* 800E6A4C 000E194C  54 BD 00 3A */	rlwinm r29, r5, 0, 0, 0x1d
/* 800E6A50 000E1950  3B C4 FF F0 */	addi r30, r4, -16
/* 800E6A54 000E1954  7C 1D 00 40 */	cmplw r29, r0
/* 800E6A58 000E1958  7C 7B 1B 78 */	mr r27, r3
/* 800E6A5C 000E195C  7C 9C 23 78 */	mr r28, r4
/* 800E6A60 000E1960  3B E3 00 3C */	addi r31, r3, 0x3c
/* 800E6A64 000E1964  40 82 00 0C */	bne lbl_800E6A70
/* 800E6A68 000E1968  7F A3 EB 78 */	mr r3, r29
/* 800E6A6C 000E196C  48 00 01 98 */	b lbl_800E6C04
lbl_800E6A70:
/* 800E6A70 000E1970  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E6A74 000E1974  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6A78 000E1978  41 82 00 0C */	beq lbl_800E6A84
/* 800E6A7C 000E197C  38 63 00 20 */	addi r3, r3, 0x20
/* 800E6A80 000E1980  48 00 C0 FD */	bl OSLockMutex
lbl_800E6A84:
/* 800E6A84 000E1984  83 5E 00 04 */	lwz r26, 4(r30)
/* 800E6A88 000E1988  7C 1D D0 40 */	cmplw r29, r26
/* 800E6A8C 000E198C  40 81 01 2C */	ble lbl_800E6BB8
/* 800E6A90 000E1990  7C 7E D2 14 */	add r3, r30, r26
/* 800E6A94 000E1994  80 FF 00 00 */	lwz r7, 0(r31)
/* 800E6A98 000E1998  38 03 00 10 */	addi r0, r3, 0x10
/* 800E6A9C 000E199C  48 00 00 10 */	b lbl_800E6AAC
lbl_800E6AA0:
/* 800E6AA0 000E19A0  7C 07 00 40 */	cmplw r7, r0
/* 800E6AA4 000E19A4  41 82 00 10 */	beq lbl_800E6AB4
/* 800E6AA8 000E19A8  80 E7 00 0C */	lwz r7, 0xc(r7)
lbl_800E6AAC:
/* 800E6AAC 000E19AC  2C 07 00 00 */	cmpwi r7, 0
/* 800E6AB0 000E19B0  40 82 FF F0 */	bne lbl_800E6AA0
lbl_800E6AB4:
/* 800E6AB4 000E19B4  2C 07 00 00 */	cmpwi r7, 0
/* 800E6AB8 000E19B8  41 82 00 18 */	beq lbl_800E6AD0
/* 800E6ABC 000E19BC  80 87 00 04 */	lwz r4, 4(r7)
/* 800E6AC0 000E19C0  7C 7A 22 14 */	add r3, r26, r4
/* 800E6AC4 000E19C4  38 03 00 10 */	addi r0, r3, 0x10
/* 800E6AC8 000E19C8  7C 1D 00 40 */	cmplw r29, r0
/* 800E6ACC 000E19CC  40 81 00 0C */	ble lbl_800E6AD8
lbl_800E6AD0:
/* 800E6AD0 000E19D0  38 60 00 00 */	li r3, 0
/* 800E6AD4 000E19D4  48 00 01 30 */	b lbl_800E6C04
lbl_800E6AD8:
/* 800E6AD8 000E19D8  80 A7 00 08 */	lwz r5, 8(r7)
/* 800E6ADC 000E19DC  7C 67 22 14 */	add r3, r7, r4
/* 800E6AE0 000E19E0  A0 07 00 02 */	lhz r0, 2(r7)
/* 800E6AE4 000E19E4  38 C3 00 10 */	addi r6, r3, 0x10
/* 800E6AE8 000E19E8  2C 05 00 00 */	cmpwi r5, 0
/* 800E6AEC 000E19EC  80 87 00 0C */	lwz r4, 0xc(r7)
/* 800E6AF0 000E19F0  54 00 C6 7E */	rlwinm r0, r0, 0x18, 0x19, 0x1f
/* 800E6AF4 000E19F4  7C 60 38 50 */	subf r3, r0, r7
/* 800E6AF8 000E19F8  41 82 00 0C */	beq lbl_800E6B04
/* 800E6AFC 000E19FC  90 85 00 0C */	stw r4, 0xc(r5)
/* 800E6B00 000E1A00  48 00 00 08 */	b lbl_800E6B08
lbl_800E6B04:
/* 800E6B04 000E1A04  90 9F 00 00 */	stw r4, 0(r31)
lbl_800E6B08:
/* 800E6B08 000E1A08  2C 04 00 00 */	cmpwi r4, 0
/* 800E6B0C 000E1A0C  41 82 00 0C */	beq lbl_800E6B18
/* 800E6B10 000E1A10  90 A4 00 08 */	stw r5, 8(r4)
/* 800E6B14 000E1A14  48 00 00 08 */	b lbl_800E6B1C
lbl_800E6B18:
/* 800E6B18 000E1A18  90 BF 00 04 */	stw r5, 4(r31)
lbl_800E6B1C:
/* 800E6B1C 000E1A1C  7C FD E2 14 */	add r7, r29, r28
/* 800E6B20 000E1A20  7C 07 30 50 */	subf r0, r7, r6
/* 800E6B24 000E1A24  28 00 00 10 */	cmplwi r0, 0x10
/* 800E6B28 000E1A28  40 80 00 08 */	bge lbl_800E6B30
/* 800E6B2C 000E1A2C  7C C7 33 78 */	mr r7, r6
lbl_800E6B30:
/* 800E6B30 000E1A30  7C 07 30 50 */	subf r0, r7, r6
/* 800E6B34 000E1A34  7C 9C 38 50 */	subf r4, r28, r7
/* 800E6B38 000E1A38  28 00 00 10 */	cmplwi r0, 0x10
/* 800E6B3C 000E1A3C  90 9E 00 04 */	stw r4, 4(r30)
/* 800E6B40 000E1A40  41 80 00 5C */	blt lbl_800E6B9C
/* 800E6B44 000E1A44  38 80 46 52 */	li r4, 0x4652
/* 800E6B48 000E1A48  38 07 00 10 */	addi r0, r7, 0x10
/* 800E6B4C 000E1A4C  B0 87 00 00 */	sth r4, 0(r7)
/* 800E6B50 000E1A50  38 80 00 00 */	li r4, 0
/* 800E6B54 000E1A54  7C 00 30 50 */	subf r0, r0, r6
/* 800E6B58 000E1A58  2C 05 00 00 */	cmpwi r5, 0
/* 800E6B5C 000E1A5C  B0 87 00 02 */	sth r4, 2(r7)
/* 800E6B60 000E1A60  90 07 00 04 */	stw r0, 4(r7)
/* 800E6B64 000E1A64  90 87 00 0C */	stw r4, 0xc(r7)
/* 800E6B68 000E1A68  90 A7 00 08 */	stw r5, 8(r7)
/* 800E6B6C 000E1A6C  41 82 00 10 */	beq lbl_800E6B7C
/* 800E6B70 000E1A70  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800E6B74 000E1A74  90 E5 00 0C */	stw r7, 0xc(r5)
/* 800E6B78 000E1A78  48 00 00 0C */	b lbl_800E6B84
lbl_800E6B7C:
/* 800E6B7C 000E1A7C  80 9F 00 00 */	lwz r4, 0(r31)
/* 800E6B80 000E1A80  90 FF 00 00 */	stw r7, 0(r31)
lbl_800E6B84:
/* 800E6B84 000E1A84  2C 04 00 00 */	cmpwi r4, 0
/* 800E6B88 000E1A88  90 87 00 0C */	stw r4, 0xc(r7)
/* 800E6B8C 000E1A8C  41 82 00 0C */	beq lbl_800E6B98
/* 800E6B90 000E1A90  90 E4 00 08 */	stw r7, 8(r4)
/* 800E6B94 000E1A94  48 00 00 08 */	b lbl_800E6B9C
lbl_800E6B98:
/* 800E6B98 000E1A98  90 FF 00 04 */	stw r7, 4(r31)
lbl_800E6B9C:
/* 800E6B9C 000E1A9C  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 800E6BA0 000E1AA0  7C A3 38 50 */	subf r5, r3, r7
/* 800E6BA4 000E1AA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800E6BA8 000E1AA8  41 82 00 44 */	beq lbl_800E6BEC
/* 800E6BAC 000E1AAC  38 80 00 00 */	li r4, 0
/* 800E6BB0 000E1AB0  4B F1 D5 55 */	bl memset
/* 800E6BB4 000E1AB4  48 00 00 38 */	b lbl_800E6BEC
lbl_800E6BB8:
/* 800E6BB8 000E1AB8  7C 1D E2 14 */	add r0, r29, r28
/* 800E6BBC 000E1ABC  7F E3 FB 78 */	mr r3, r31
/* 800E6BC0 000E1AC0  90 01 00 08 */	stw r0, 8(r1)
/* 800E6BC4 000E1AC4  38 81 00 08 */	addi r4, r1, 8
/* 800E6BC8 000E1AC8  80 1E 00 04 */	lwz r0, 4(r30)
/* 800E6BCC 000E1ACC  7C BE 02 14 */	add r5, r30, r0
/* 800E6BD0 000E1AD0  38 05 00 10 */	addi r0, r5, 0x10
/* 800E6BD4 000E1AD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6BD8 000E1AD8  93 BE 00 04 */	stw r29, 4(r30)
/* 800E6BDC 000E1ADC  4B FF FB 5D */	bl RecycleRegion_
/* 800E6BE0 000E1AE0  2C 03 00 00 */	cmpwi r3, 0
/* 800E6BE4 000E1AE4  40 82 00 08 */	bne lbl_800E6BEC
/* 800E6BE8 000E1AE8  93 5E 00 04 */	stw r26, 4(r30)
lbl_800E6BEC:
/* 800E6BEC 000E1AEC  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 800E6BF0 000E1AF0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6BF4 000E1AF4  41 82 00 0C */	beq lbl_800E6C00
/* 800E6BF8 000E1AF8  38 7B 00 20 */	addi r3, r27, 0x20
/* 800E6BFC 000E1AFC  48 00 C0 5D */	bl OSUnlockMutex
lbl_800E6C00:
/* 800E6C00 000E1B00  80 7E 00 04 */	lwz r3, 4(r30)
lbl_800E6C04:
/* 800E6C04 000E1B04  39 61 00 30 */	addi r11, r1, 0x30
/* 800E6C08 000E1B08  4B FC B1 85 */	bl _restgpr_26
/* 800E6C0C 000E1B0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6C10 000E1B10  7C 08 03 A6 */	mtlr r0
/* 800E6C14 000E1B14  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6C18 000E1B18  4E 80 00 20 */	blr 

.global MEMFreeToExpHeap
MEMFreeToExpHeap:
/* 800E6C1C 000E1B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6C20 000E1B20  7C 08 02 A6 */	mflr r0
/* 800E6C24 000E1B24  2C 04 00 00 */	cmpwi r4, 0
/* 800E6C28 000E1B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6C2C 000E1B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6C30 000E1B30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E6C34 000E1B34  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E6C38 000E1B38  7C 7D 1B 78 */	mr r29, r3
/* 800E6C3C 000E1B3C  41 82 00 90 */	beq lbl_800E6CCC
/* 800E6C40 000E1B40  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E6C44 000E1B44  3B E3 00 3C */	addi r31, r3, 0x3c
/* 800E6C48 000E1B48  3B C4 FF F0 */	addi r30, r4, -16
/* 800E6C4C 000E1B4C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6C50 000E1B50  41 82 00 0C */	beq lbl_800E6C5C
/* 800E6C54 000E1B54  38 63 00 20 */	addi r3, r3, 0x20
/* 800E6C58 000E1B58  48 00 BF 25 */	bl OSLockMutex
lbl_800E6C5C:
/* 800E6C5C 000E1B5C  A0 1E 00 02 */	lhz r0, 2(r30)
/* 800E6C60 000E1B60  54 00 C6 7E */	rlwinm r0, r0, 0x18, 0x19, 0x1f
/* 800E6C64 000E1B64  7C 00 F0 50 */	subf r0, r0, r30
/* 800E6C68 000E1B68  90 01 00 08 */	stw r0, 8(r1)
/* 800E6C6C 000E1B6C  80 1E 00 04 */	lwz r0, 4(r30)
/* 800E6C70 000E1B70  7C 7E 02 14 */	add r3, r30, r0
/* 800E6C74 000E1B74  38 03 00 10 */	addi r0, r3, 0x10
/* 800E6C78 000E1B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6C7C 000E1B7C  80 9E 00 08 */	lwz r4, 8(r30)
/* 800E6C80 000E1B80  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800E6C84 000E1B84  2C 04 00 00 */	cmpwi r4, 0
/* 800E6C88 000E1B88  41 82 00 0C */	beq lbl_800E6C94
/* 800E6C8C 000E1B8C  90 64 00 0C */	stw r3, 0xc(r4)
/* 800E6C90 000E1B90  48 00 00 08 */	b lbl_800E6C98
lbl_800E6C94:
/* 800E6C94 000E1B94  90 7F 00 08 */	stw r3, 8(r31)
lbl_800E6C98:
/* 800E6C98 000E1B98  2C 03 00 00 */	cmpwi r3, 0
/* 800E6C9C 000E1B9C  41 82 00 0C */	beq lbl_800E6CA8
/* 800E6CA0 000E1BA0  90 83 00 08 */	stw r4, 8(r3)
/* 800E6CA4 000E1BA4  48 00 00 08 */	b lbl_800E6CAC
lbl_800E6CA8:
/* 800E6CA8 000E1BA8  90 9F 00 0C */	stw r4, 0xc(r31)
lbl_800E6CAC:
/* 800E6CAC 000E1BAC  7F E3 FB 78 */	mr r3, r31
/* 800E6CB0 000E1BB0  38 81 00 08 */	addi r4, r1, 8
/* 800E6CB4 000E1BB4  4B FF FA 85 */	bl RecycleRegion_
/* 800E6CB8 000E1BB8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 800E6CBC 000E1BBC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6CC0 000E1BC0  41 82 00 0C */	beq lbl_800E6CCC
/* 800E6CC4 000E1BC4  38 7D 00 20 */	addi r3, r29, 0x20
/* 800E6CC8 000E1BC8  48 00 BF 91 */	bl OSUnlockMutex
lbl_800E6CCC:
/* 800E6CCC 000E1BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6CD0 000E1BD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6CD4 000E1BD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6CD8 000E1BD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E6CDC 000E1BDC  7C 08 03 A6 */	mtlr r0
/* 800E6CE0 000E1BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6CE4 000E1BE4  4E 80 00 20 */	blr 

.global MEMGetAllocatableSizeForExpHeapEx
MEMGetAllocatableSizeForExpHeapEx:
/* 800E6CE8 000E1BE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6CEC 000E1BEC  7C 08 02 A6 */	mflr r0
/* 800E6CF0 000E1BF0  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 800E6CF4 000E1BF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6CF8 000E1BF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6CFC 000E1BFC  7C BF 22 78 */	xor r31, r5, r4
/* 800E6D00 000E1C00  7F E5 F8 50 */	subf r31, r5, r31
/* 800E6D04 000E1C04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E6D08 000E1C08  7C 7E 1B 78 */	mr r30, r3
/* 800E6D0C 000E1C0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E6D10 000E1C10  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E6D14 000E1C14  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6D18 000E1C18  41 82 00 0C */	beq lbl_800E6D24
/* 800E6D1C 000E1C1C  38 63 00 20 */	addi r3, r3, 0x20
/* 800E6D20 000E1C20  48 00 BE 5D */	bl OSLockMutex
lbl_800E6D24:
/* 800E6D24 000E1C24  38 1F FF FF */	addi r0, r31, -1
/* 800E6D28 000E1C28  80 DE 00 3C */	lwz r6, 0x3c(r30)
/* 800E6D2C 000E1C2C  7C 04 00 F8 */	nor r4, r0, r0
/* 800E6D30 000E1C30  3B A0 00 00 */	li r29, 0
/* 800E6D34 000E1C34  38 E0 FF FF */	li r7, -1
/* 800E6D38 000E1C38  48 00 00 4C */	b lbl_800E6D84
lbl_800E6D3C:
/* 800E6D3C 000E1C3C  38 A6 00 10 */	addi r5, r6, 0x10
/* 800E6D40 000E1C40  80 06 00 04 */	lwz r0, 4(r6)
/* 800E6D44 000E1C44  7C 7F 2A 14 */	add r3, r31, r5
/* 800E6D48 000E1C48  38 63 FF FF */	addi r3, r3, -1
/* 800E6D4C 000E1C4C  7C 00 2A 14 */	add r0, r0, r5
/* 800E6D50 000E1C50  7C 83 18 38 */	and r3, r4, r3
/* 800E6D54 000E1C54  7C 03 00 40 */	cmplw r3, r0
/* 800E6D58 000E1C58  40 80 00 28 */	bge lbl_800E6D80
/* 800E6D5C 000E1C5C  7C 03 00 50 */	subf r0, r3, r0
/* 800E6D60 000E1C60  7C 65 18 50 */	subf r3, r5, r3
/* 800E6D64 000E1C64  7C 1D 00 40 */	cmplw r29, r0
/* 800E6D68 000E1C68  41 80 00 10 */	blt lbl_800E6D78
/* 800E6D6C 000E1C6C  40 82 00 14 */	bne lbl_800E6D80
/* 800E6D70 000E1C70  7C 07 18 40 */	cmplw r7, r3
/* 800E6D74 000E1C74  40 81 00 0C */	ble lbl_800E6D80
lbl_800E6D78:
/* 800E6D78 000E1C78  7C 1D 03 78 */	mr r29, r0
/* 800E6D7C 000E1C7C  7C 67 1B 78 */	mr r7, r3
lbl_800E6D80:
/* 800E6D80 000E1C80  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_800E6D84:
/* 800E6D84 000E1C84  2C 06 00 00 */	cmpwi r6, 0
/* 800E6D88 000E1C88  40 82 FF B4 */	bne lbl_800E6D3C
/* 800E6D8C 000E1C8C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800E6D90 000E1C90  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6D94 000E1C94  41 82 00 0C */	beq lbl_800E6DA0
/* 800E6D98 000E1C98  38 7E 00 20 */	addi r3, r30, 0x20
/* 800E6D9C 000E1C9C  48 00 BE BD */	bl OSUnlockMutex
lbl_800E6DA0:
/* 800E6DA0 000E1CA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6DA4 000E1CA4  7F A3 EB 78 */	mr r3, r29
/* 800E6DA8 000E1CA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6DAC 000E1CAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E6DB0 000E1CB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6DB4 000E1CB4  7C 08 03 A6 */	mtlr r0
/* 800E6DB8 000E1CB8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6DBC 000E1CBC  4E 80 00 20 */	blr 

.global MEMAdjustExpHeap
MEMAdjustExpHeap:
/* 800E6DC0 000E1CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E6DC4 000E1CC4  7C 08 02 A6 */	mflr r0
/* 800E6DC8 000E1CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E6DCC 000E1CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E6DD0 000E1CD0  93 C1 00 08 */	stw r30, 8(r1)
/* 800E6DD4 000E1CD4  7C 7E 1B 78 */	mr r30, r3
/* 800E6DD8 000E1CD8  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800E6DDC 000E1CDC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6DE0 000E1CE0  41 82 00 0C */	beq lbl_800E6DEC
/* 800E6DE4 000E1CE4  38 63 00 20 */	addi r3, r3, 0x20
/* 800E6DE8 000E1CE8  48 00 BD 95 */	bl OSLockMutex
lbl_800E6DEC:
/* 800E6DEC 000E1CEC  80 BE 00 40 */	lwz r5, 0x40(r30)
/* 800E6DF0 000E1CF0  2C 05 00 00 */	cmpwi r5, 0
/* 800E6DF4 000E1CF4  40 82 00 0C */	bne lbl_800E6E00
/* 800E6DF8 000E1CF8  3B E0 00 00 */	li r31, 0
/* 800E6DFC 000E1CFC  48 00 00 6C */	b lbl_800E6E68
lbl_800E6E00:
/* 800E6E00 000E1D00  80 65 00 04 */	lwz r3, 4(r5)
/* 800E6E04 000E1D04  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800E6E08 000E1D08  7C 65 1A 14 */	add r3, r5, r3
/* 800E6E0C 000E1D0C  38 63 00 10 */	addi r3, r3, 0x10
/* 800E6E10 000E1D10  7C 03 00 40 */	cmplw r3, r0
/* 800E6E14 000E1D14  41 82 00 0C */	beq lbl_800E6E20
/* 800E6E18 000E1D18  3B E0 00 00 */	li r31, 0
/* 800E6E1C 000E1D1C  48 00 00 4C */	b lbl_800E6E68
lbl_800E6E20:
/* 800E6E20 000E1D20  80 85 00 08 */	lwz r4, 8(r5)
/* 800E6E24 000E1D24  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800E6E28 000E1D28  2C 04 00 00 */	cmpwi r4, 0
/* 800E6E2C 000E1D2C  41 82 00 0C */	beq lbl_800E6E38
/* 800E6E30 000E1D30  90 64 00 0C */	stw r3, 0xc(r4)
/* 800E6E34 000E1D34  48 00 00 08 */	b lbl_800E6E3C
lbl_800E6E38:
/* 800E6E38 000E1D38  90 7E 00 3C */	stw r3, 0x3c(r30)
lbl_800E6E3C:
/* 800E6E3C 000E1D3C  2C 03 00 00 */	cmpwi r3, 0
/* 800E6E40 000E1D40  41 82 00 0C */	beq lbl_800E6E4C
/* 800E6E44 000E1D44  90 83 00 08 */	stw r4, 8(r3)
/* 800E6E48 000E1D48  48 00 00 08 */	b lbl_800E6E50
lbl_800E6E4C:
/* 800E6E4C 000E1D4C  90 9E 00 40 */	stw r4, 0x40(r30)
lbl_800E6E50:
/* 800E6E50 000E1D50  80 65 00 04 */	lwz r3, 4(r5)
/* 800E6E54 000E1D54  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800E6E58 000E1D58  38 63 00 10 */	addi r3, r3, 0x10
/* 800E6E5C 000E1D5C  7C 03 00 50 */	subf r0, r3, r0
/* 800E6E60 000E1D60  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800E6E64 000E1D64  7F FE 00 50 */	subf r31, r30, r0
lbl_800E6E68:
/* 800E6E68 000E1D68  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800E6E6C 000E1D6C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E6E70 000E1D70  41 82 00 0C */	beq lbl_800E6E7C
/* 800E6E74 000E1D74  38 7E 00 20 */	addi r3, r30, 0x20
/* 800E6E78 000E1D78  48 00 BD E1 */	bl OSUnlockMutex
lbl_800E6E7C:
/* 800E6E7C 000E1D7C  7F E3 FB 78 */	mr r3, r31
/* 800E6E80 000E1D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E6E84 000E1D84  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E6E88 000E1D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E6E8C 000E1D8C  7C 08 03 A6 */	mtlr r0
/* 800E6E90 000E1D90  38 21 00 10 */	addi r1, r1, 0x10
/* 800E6E94 000E1D94  4E 80 00 20 */	blr 

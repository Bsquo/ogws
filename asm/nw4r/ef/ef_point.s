.include "macros.inc"

# .text1 = .text

.section .text, "ax"  # 0x800076E0 - 0x80355080

.global func_8001D4E4
func_8001D4E4:
/* 8001D4E4 000183E4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8001D4E8 000183E8  7C 08 02 A6 */	mflr r0
/* 8001D4EC 000183EC  90 01 01 54 */	stw r0, 0x154(r1)
/* 8001D4F0 000183F0  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8001D4F4 000183F4  F3 E1 01 48 */	.4byte 0xF3E10148
/* 8001D4F8 000183F8  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8001D4FC 000183FC  F3 C1 01 38 */	psq_st f30, 312(r1), 0, qr0
/* 8001D500 00018400  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8001D504 00018404  F3 A1 01 28 */	psq_st f29, 296(r1), 0, qr0
/* 8001D508 00018408  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8001D50C 0001840C  F3 81 01 18 */	.4byte 0xF3810118
/* 8001D510 00018410  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8001D514 00018414  F3 61 01 08 */	.4byte 0xF3610108
/* 8001D518 00018418  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 8001D51C 0001841C  F3 41 00 F8 */	psq_st f26, 248(r1), 0, qr0
/* 8001D520 00018420  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 8001D524 00018424  F3 21 00 E8 */	psq_st f25, 232(r1), 0, qr0
/* 8001D528 00018428  DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 8001D52C 0001842C  F3 01 00 D8 */	psq_st f24, 216(r1), 0, qr0
/* 8001D530 00018430  DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 8001D534 00018434  F2 E1 00 C8 */	psq_st f23, 200(r1), 0, qr0
/* 8001D538 00018438  DA C1 00 B0 */	stfd f22, 0xb0(r1)
/* 8001D53C 0001843C  F2 C1 00 B8 */	psq_st f22, 184(r1), 0, qr0
/* 8001D540 00018440  DA A1 00 A0 */	stfd f21, 0xa0(r1)
/* 8001D544 00018444  F2 A1 00 A8 */	psq_st f21, 168(r1), 0, qr0
/* 8001D548 00018448  DA 81 00 90 */	stfd f20, 0x90(r1)
/* 8001D54C 0001844C  F2 81 00 98 */	psq_st f20, 152(r1), 0, qr0
/* 8001D550 00018450  DA 61 00 80 */	stfd f19, 0x80(r1)
/* 8001D554 00018454  F2 61 00 88 */	psq_st f19, 136(r1), 0, qr0
/* 8001D558 00018458  39 61 00 80 */	addi r11, r1, 0x80
/* 8001D55C 0001845C  48 09 47 DD */	bl func_800B1D38
/* 8001D560 00018460  3C 00 43 30 */	lis r0, 0x4330
/* 8001D564 00018464  FE E0 08 90 */	fmr f23, f1
/* 8001D568 00018468  2C 06 00 01 */	cmpwi r6, 1
/* 8001D56C 0001846C  90 01 00 50 */	stw r0, 0x50(r1)
/* 8001D570 00018470  7C 78 1B 78 */	mr r24, r3
/* 8001D574 00018474  7C 99 23 78 */	mr r25, r4
/* 8001D578 00018478  90 01 00 58 */	stw r0, 0x58(r1)
/* 8001D57C 0001847C  7C BA 2B 78 */	mr r26, r5
/* 8001D580 00018480  7C DB 33 78 */	mr r27, r6
/* 8001D584 00018484  7D 3C 4B 78 */	mr r28, r9
/* 8001D588 00018488  7D 5D 53 78 */	mr r29, r10
/* 8001D58C 0001848C  41 80 02 2C */	blt lbl_8001D7B8
/* 8001D590 00018490  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 8001D594 00018494  C3 02 81 88 */	lfs f24, lbl_804BFBA8-_SDA2_BASE_(r2)
/* 8001D598 00018498  CB 22 81 A8 */	lfd f25, lbl_804BFBC8-_SDA2_BASE_(r2)
/* 8001D59C 0001849C  3B E3 43 FD */	addi r31, r3, 0x000343FD@l
/* 8001D5A0 000184A0  C3 42 81 8C */	lfs f26, lbl_804BFBAC-_SDA2_BASE_(r2)
/* 8001D5A4 000184A4  3B C0 00 00 */	li r30, 0
/* 8001D5A8 000184A8  C3 62 81 90 */	lfs f27, lbl_804BFBB0-_SDA2_BASE_(r2)
/* 8001D5AC 000184AC  C3 82 81 94 */	lfs f28, lbl_804BFBB4-_SDA2_BASE_(r2)
/* 8001D5B0 000184B0  C3 A2 81 9C */	lfs f29, lbl_804BFBBC-_SDA2_BASE_(r2)
/* 8001D5B4 000184B4  C3 C2 81 98 */	lfs f30, lbl_804BFBB8-_SDA2_BASE_(r2)
/* 8001D5B8 000184B8  C3 E2 81 A0 */	lfs f31, lbl_804BFBC0-_SDA2_BASE_(r2)
/* 8001D5BC 000184BC  CA A2 81 B0 */	lfd f21, lbl_804BFBD0-_SDA2_BASE_(r2)
/* 8001D5C0 000184C0  C2 C2 81 A4 */	lfs f22, lbl_804BFBC4-_SDA2_BASE_(r2)
/* 8001D5C4 000184C4  48 00 01 EC */	b lbl_8001D7B0
lbl_8001D5C8:
/* 8001D5C8 000184C8  D3 01 00 44 */	stfs f24, 0x44(r1)
/* 8001D5CC 000184CC  D3 01 00 48 */	stfs f24, 0x48(r1)
/* 8001D5D0 000184D0  D3 01 00 4C */	stfs f24, 0x4c(r1)
/* 8001D5D4 000184D4  80 19 00 EC */	lwz r0, 0xec(r25)
/* 8001D5D8 000184D8  7C 60 F9 D6 */	mullw r3, r0, r31
/* 8001D5DC 000184DC  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001D5E0 000184E0  38 63 9E C3 */	addi r3, r3, -24893
/* 8001D5E4 000184E4  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001D5E8 000184E8  90 79 00 EC */	stw r3, 0xec(r25)
/* 8001D5EC 000184EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001D5F0 000184F0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8001D5F4 000184F4  EC 00 C8 28 */	fsubs f0, f0, f25
/* 8001D5F8 000184F8  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8001D5FC 000184FC  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8001D600 00018500  EC 20 E0 28 */	fsubs f1, f0, f28
/* 8001D604 00018504  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 8001D608 00018508  4C 41 13 82 */	cror 2, 1, 2
/* 8001D60C 0001850C  40 82 00 14 */	bne lbl_8001D620
/* 8001D610 00018510  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8001D614 00018514  EC 1E 00 2A */	fadds f0, f30, f0
/* 8001D618 00018518  EC 20 00 72 */	fmuls f1, f0, f1
/* 8001D61C 0001851C  48 00 00 10 */	b lbl_8001D62C
lbl_8001D620:
/* 8001D620 00018520  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8001D624 00018524  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8001D628 00018528  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8001D62C:
/* 8001D62C 0001852C  FC 00 08 18 */	frsp f0, f1
/* 8001D630 00018530  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8001D634 00018534  EC 00 00 32 */	fmuls f0, f0, f0
/* 8001D638 00018538  EC 3C 00 28 */	fsubs f1, f28, f0
/* 8001D63C 0001853C  48 0A 3A 95 */	bl func_800C10D0
/* 8001D640 00018540  80 19 00 EC */	lwz r0, 0xec(r25)
/* 8001D644 00018544  FE 80 08 18 */	frsp f20, f1
/* 8001D648 00018548  7C 60 F9 D6 */	mullw r3, r0, r31
/* 8001D64C 0001854C  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001D650 00018550  38 63 9E C3 */	addi r3, r3, -24893
/* 8001D654 00018554  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001D658 00018558  90 79 00 EC */	stw r3, 0xec(r25)
/* 8001D65C 0001855C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8001D660 00018560  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8001D664 00018564  EC 00 C8 28 */	fsubs f0, f0, f25
/* 8001D668 00018568  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8001D66C 0001856C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8001D670 00018570  EE 7B 00 32 */	fmuls f19, f27, f0
/* 8001D674 00018574  FC 20 98 90 */	fmr f1, f19
/* 8001D678 00018578  48 0A 31 A1 */	bl func_800C0818
/* 8001D67C 0001857C  FC 00 08 18 */	frsp f0, f1
/* 8001D680 00018580  FC 20 98 90 */	fmr f1, f19
/* 8001D684 00018584  EC 14 00 32 */	fmuls f0, f20, f0
/* 8001D688 00018588  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8001D68C 0001858C  48 0A 36 95 */	bl func_800C0D20
/* 8001D690 00018590  FC 00 08 18 */	frsp f0, f1
/* 8001D694 00018594  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8001D698 00018598  D3 01 00 30 */	stfs f24, 0x30(r1)
/* 8001D69C 0001859C  FC 18 08 00 */	fcmpu cr0, f24, f1
/* 8001D6A0 000185A0  EC 14 00 32 */	fmuls f0, f20, f0
/* 8001D6A4 000185A4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8001D6A8 000185A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8001D6AC 000185AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8001D6B0 000185B0  40 82 00 0C */	bne lbl_8001D6BC
/* 8001D6B4 000185B4  FC 18 00 00 */	fcmpu cr0, f24, f0
/* 8001D6B8 000185B8  41 82 00 10 */	beq lbl_8001D6C8
lbl_8001D6BC:
/* 8001D6BC 000185BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8001D6C0 000185C0  7C 64 1B 78 */	mr r4, r3
/* 8001D6C4 000185C4  48 0C AE 51 */	bl func_800E8514
lbl_8001D6C8:
/* 8001D6C8 000185C8  38 E1 00 38 */	addi r7, r1, 0x38
/* 8001D6CC 000185CC  7F 03 C3 78 */	mr r3, r24
/* 8001D6D0 000185D0  7F 25 CB 78 */	mr r5, r25
/* 8001D6D4 000185D4  38 81 00 20 */	addi r4, r1, 0x20
/* 8001D6D8 000185D8  7C E8 3B 78 */	mr r8, r7
/* 8001D6DC 000185DC  38 C1 00 44 */	addi r6, r1, 0x44
/* 8001D6E0 000185E0  39 21 00 2C */	addi r9, r1, 0x2c
/* 8001D6E4 000185E4  4B FF F4 A1 */	bl func_8001CB84
/* 8001D6E8 000185E8  80 19 00 EC */	lwz r0, 0xec(r25)
/* 8001D6EC 000185EC  FC 20 B8 90 */	fmr f1, f23
/* 8001D6F0 000185F0  7F 03 C3 78 */	mr r3, r24
/* 8001D6F4 000185F4  7F 84 E3 78 */	mr r4, r28
/* 8001D6F8 000185F8  7C C0 F9 D6 */	mullw r6, r0, r31
/* 8001D6FC 000185FC  7F 25 CB 78 */	mr r5, r25
/* 8001D700 00018600  3C C6 00 27 */	addis r6, r6, 0x27
/* 8001D704 00018604  38 C6 9E C3 */	addi r6, r6, -24893
/* 8001D708 00018608  54 C0 84 3E */	srwi r0, r6, 0x10
/* 8001D70C 0001860C  90 D9 00 EC */	stw r6, 0xec(r25)
/* 8001D710 00018610  90 01 00 54 */	stw r0, 0x54(r1)
/* 8001D714 00018614  81 41 00 20 */	lwz r10, 0x20(r1)
/* 8001D718 00018618  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8001D71C 0001861C  81 21 00 24 */	lwz r9, 0x24(r1)
/* 8001D720 00018620  EC 00 C8 28 */	fsubs f0, f0, f25
/* 8001D724 00018624  81 01 00 28 */	lwz r8, 0x28(r1)
/* 8001D728 00018628  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8001D72C 0001862C  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 8001D730 00018630  EE 80 D0 24 */	fdivs f20, f0, f26
/* 8001D734 00018634  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8001D738 00018638  91 41 00 08 */	stw r10, 8(r1)
/* 8001D73C 0001863C  91 21 00 0C */	stw r9, 0xc(r1)
/* 8001D740 00018640  91 01 00 10 */	stw r8, 0x10(r1)
/* 8001D744 00018644  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8001D748 00018648  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8001D74C 0001864C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001D750 00018650  4B FF F9 51 */	bl func_8001D0A0
/* 8001D754 00018654  88 19 00 67 */	lbz r0, 0x67(r25)
/* 8001D758 00018658  7C 64 1B 78 */	mr r4, r3
/* 8001D75C 0001865C  81 9A 00 1C */	lwz r12, 0x1c(r26)
/* 8001D760 00018660  7F 43 D3 78 */	mr r3, r26
/* 8001D764 00018664  7C 00 07 74 */	extsb r0, r0
/* 8001D768 00018668  7F A7 EB 78 */	mr r7, r29
/* 8001D76C 0001866C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001D770 00018670  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8001D774 00018674  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8001D778 00018678  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8001D77C 0001867C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001D780 00018680  38 C1 00 08 */	addi r6, r1, 8
/* 8001D784 00018684  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8001D788 00018688  39 19 00 FC */	addi r8, r25, 0xfc
/* 8001D78C 0001868C  81 39 00 F8 */	lwz r9, 0xf8(r25)
/* 8001D790 00018690  EC 00 A8 28 */	fsubs f0, f0, f21
/* 8001D794 00018694  A1 59 00 E8 */	lhz r10, 0xe8(r25)
/* 8001D798 00018698  EC 16 00 32 */	fmuls f0, f22, f0
/* 8001D79C 0001869C  EC 00 05 32 */	fmuls f0, f0, f20
/* 8001D7A0 000186A0  EC 3C 00 2A */	fadds f1, f28, f0
/* 8001D7A4 000186A4  7D 89 03 A6 */	mtctr r12
/* 8001D7A8 000186A8  4E 80 04 21 */	bctrl 
/* 8001D7AC 000186AC  3B DE 00 01 */	addi r30, r30, 1
lbl_8001D7B0:
/* 8001D7B0 000186B0  7C 1E D8 00 */	cmpw r30, r27
/* 8001D7B4 000186B4  41 80 FE 14 */	blt lbl_8001D5C8
lbl_8001D7B8:
/* 8001D7B8 000186B8  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 8001D7BC 000186BC  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8001D7C0 000186C0  E3 C1 01 38 */	psq_l f30, 312(r1), 0, qr0
/* 8001D7C4 000186C4  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8001D7C8 000186C8  E3 A1 01 28 */	psq_l f29, 296(r1), 0, qr0
/* 8001D7CC 000186CC  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8001D7D0 000186D0  E3 81 01 18 */	psq_l f28, 280(r1), 0, qr0
/* 8001D7D4 000186D4  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8001D7D8 000186D8  E3 61 01 08 */	psq_l f27, 264(r1), 0, qr0
/* 8001D7DC 000186DC  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8001D7E0 000186E0  E3 41 00 F8 */	psq_l f26, 248(r1), 0, qr0
/* 8001D7E4 000186E4  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 8001D7E8 000186E8  E3 21 00 E8 */	psq_l f25, 232(r1), 0, qr0
/* 8001D7EC 000186EC  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 8001D7F0 000186F0  E3 01 00 D8 */	psq_l f24, 216(r1), 0, qr0
/* 8001D7F4 000186F4  CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 8001D7F8 000186F8  E2 E1 00 C8 */	psq_l f23, 200(r1), 0, qr0
/* 8001D7FC 000186FC  CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 8001D800 00018700  E2 C1 00 B8 */	psq_l f22, 184(r1), 0, qr0
/* 8001D804 00018704  CA C1 00 B0 */	lfd f22, 0xb0(r1)
/* 8001D808 00018708  E2 A1 00 A8 */	psq_l f21, 168(r1), 0, qr0
/* 8001D80C 0001870C  CA A1 00 A0 */	lfd f21, 0xa0(r1)
/* 8001D810 00018710  E2 81 00 98 */	psq_l f20, 152(r1), 0, qr0
/* 8001D814 00018714  CA 81 00 90 */	lfd f20, 0x90(r1)
/* 8001D818 00018718  E2 61 00 88 */	psq_l f19, 136(r1), 0, qr0
/* 8001D81C 0001871C  39 61 00 80 */	addi r11, r1, 0x80
/* 8001D820 00018720  CA 61 00 80 */	lfd f19, 0x80(r1)
/* 8001D824 00018724  48 09 45 61 */	bl func_800B1D84
/* 8001D828 00018728  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8001D82C 0001872C  7C 08 03 A6 */	mtlr r0
/* 8001D830 00018730  38 21 01 50 */	addi r1, r1, 0x150
/* 8001D834 00018734  4E 80 00 20 */	blr 

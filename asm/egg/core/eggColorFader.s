.include "macros.inc"

.section .text, "ax"

.global __ct__Q23EGG10ColorFaderFffffQ34nw4r2ut5ColorQ33EGG5Fader7EStatus
__ct__Q23EGG10ColorFaderFffffQ34nw4r2ut5ColorQ33EGG5Fader7EStatus:
/* 800A453C 0009F43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4540 0009F440  7C 08 02 A6 */	mflr r0
/* 800A4544 0009F444  3C C0 80 3A */	lis r6, lbl_803981D8@ha
/* 800A4548 0009F448  EC 61 18 2A */	fadds f3, f1, f3
/* 800A454C 0009F44C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A4550 0009F450  EC 02 20 2A */	fadds f0, f2, f4
/* 800A4554 0009F454  39 20 00 00 */	li r9, 0
/* 800A4558 0009F458  38 C6 81 D8 */	addi r6, r6, lbl_803981D8@l
/* 800A455C 0009F45C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A4560 0009F460  7C BF 2B 78 */	mr r31, r5
/* 800A4564 0009F464  38 00 00 14 */	li r0, 0x14
/* 800A4568 0009F468  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A456C 0009F46C  39 00 FF FF */	li r8, -1
/* 800A4570 0009F470  88 E4 00 00 */	lbz r7, 0(r4)
/* 800A4574 0009F474  7C 7E 1B 78 */	mr r30, r3
/* 800A4578 0009F478  90 C3 00 00 */	stw r6, 0(r3)
/* 800A457C 0009F47C  88 C4 00 01 */	lbz r6, 1(r4)
/* 800A4580 0009F480  B0 03 00 0A */	sth r0, 0xa(r3)
/* 800A4584 0009F484  88 A4 00 02 */	lbz r5, 2(r4)
/* 800A4588 0009F488  88 04 00 03 */	lbz r0, 3(r4)
/* 800A458C 0009F48C  38 81 00 08 */	addi r4, r1, 8
/* 800A4590 0009F490  99 23 00 08 */	stb r9, 8(r3)
/* 800A4594 0009F494  B1 23 00 0C */	sth r9, 0xc(r3)
/* 800A4598 0009F498  91 03 00 10 */	stw r8, 0x10(r3)
/* 800A459C 0009F49C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 800A45A0 0009F4A0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 800A45A4 0009F4A4  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 800A45A8 0009F4A8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800A45AC 0009F4AC  98 E1 00 08 */	stb r7, 8(r1)
/* 800A45B0 0009F4B0  98 C1 00 09 */	stb r6, 9(r1)
/* 800A45B4 0009F4B4  98 A1 00 0A */	stb r5, 0xa(r1)
/* 800A45B8 0009F4B8  98 01 00 0B */	stb r0, 0xb(r1)
/* 800A45BC 0009F4BC  48 00 00 9D */	bl setColor__Q23EGG10ColorFaderFQ34nw4r2ut5Color
/* 800A45C0 0009F4C0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A45C4 0009F4C4  7F C3 F3 78 */	mr r3, r30
/* 800A45C8 0009F4C8  7F E4 FB 78 */	mr r4, r31
/* 800A45CC 0009F4CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 800A45D0 0009F4D0  7D 89 03 A6 */	mtctr r12
/* 800A45D4 0009F4D4  4E 80 04 21 */	bctrl 
/* 800A45D8 0009F4D8  88 1E 00 08 */	lbz r0, 8(r30)
/* 800A45DC 0009F4DC  7F C3 F3 78 */	mr r3, r30
/* 800A45E0 0009F4E0  60 00 00 02 */	ori r0, r0, 2
/* 800A45E4 0009F4E4  98 1E 00 08 */	stb r0, 8(r30)
/* 800A45E8 0009F4E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A45EC 0009F4EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A45F0 0009F4F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A45F4 0009F4F4  7C 08 03 A6 */	mtlr r0
/* 800A45F8 0009F4F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800A45FC 0009F4FC  4E 80 00 20 */	blr 

.global setFrame__Q23EGG10ColorFaderFUs
setFrame__Q23EGG10ColorFaderFUs:
/* 800A4600 0009F500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4604 0009F504  7C 08 02 A6 */	mflr r0
/* 800A4608 0009F508  2C 04 00 00 */	cmpwi r4, 0
/* 800A460C 0009F50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4610 0009F510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4614 0009F514  7C 9F 23 78 */	mr r31, r4
/* 800A4618 0009F518  93 C1 00 08 */	stw r30, 8(r1)
/* 800A461C 0009F51C  7C 7E 1B 78 */	mr r30, r3
/* 800A4620 0009F520  40 82 00 1C */	bne lbl_800A463C
/* 800A4624 0009F524  3C 60 80 38 */	lis r3, lbl_8037A460@ha
/* 800A4628 0009F528  38 80 00 3F */	li r4, 0x3f
/* 800A462C 0009F52C  38 63 A4 60 */	addi r3, r3, lbl_8037A460@l
/* 800A4630 0009F530  38 A3 00 12 */	addi r5, r3, 0x12
/* 800A4634 0009F534  4C C6 31 82 */	crclr 6
/* 800A4638 0009F538  4B FF D8 D1 */	bl func_800A1F08
lbl_800A463C:
/* 800A463C 0009F53C  B3 FE 00 0A */	sth r31, 0xa(r30)
/* 800A4640 0009F540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4644 0009F544  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A4648 0009F548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A464C 0009F54C  7C 08 03 A6 */	mtlr r0
/* 800A4650 0009F550  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4654 0009F554  4E 80 00 20 */	blr 

.global setColor__Q23EGG10ColorFaderFQ34nw4r2ut5Color
setColor__Q23EGG10ColorFaderFQ34nw4r2ut5Color:
/* 800A4658 0009F558  88 C4 00 00 */	lbz r6, 0(r4)
/* 800A465C 0009F55C  88 A4 00 01 */	lbz r5, 1(r4)
/* 800A4660 0009F560  88 04 00 02 */	lbz r0, 2(r4)
/* 800A4664 0009F564  98 C3 00 10 */	stb r6, 0x10(r3)
/* 800A4668 0009F568  98 A3 00 11 */	stb r5, 0x11(r3)
/* 800A466C 0009F56C  98 03 00 12 */	stb r0, 0x12(r3)
/* 800A4670 0009F570  4E 80 00 20 */	blr 

.global setStatus__Q23EGG10ColorFaderFQ33EGG5Fader7EStatus
setStatus__Q23EGG10ColorFaderFQ33EGG5Fader7EStatus:
/* 800A4674 0009F574  2C 04 00 00 */	cmpwi r4, 0
/* 800A4678 0009F578  40 82 00 18 */	bne lbl_800A4690
/* 800A467C 0009F57C  38 80 00 00 */	li r4, 0
/* 800A4680 0009F580  38 00 00 FF */	li r0, 0xff
/* 800A4684 0009F584  90 83 00 04 */	stw r4, 4(r3)
/* 800A4688 0009F588  98 03 00 13 */	stb r0, 0x13(r3)
/* 800A468C 0009F58C  4E 80 00 20 */	blr 
lbl_800A4690:
/* 800A4690 0009F590  2C 04 00 01 */	cmpwi r4, 1
/* 800A4694 0009F594  4C 82 00 20 */	bnelr 
/* 800A4698 0009F598  38 80 00 01 */	li r4, 1
/* 800A469C 0009F59C  38 00 00 00 */	li r0, 0
/* 800A46A0 0009F5A0  90 83 00 04 */	stw r4, 4(r3)
/* 800A46A4 0009F5A4  98 03 00 13 */	stb r0, 0x13(r3)
/* 800A46A8 0009F5A8  4E 80 00 20 */	blr 

.global fadeIn__Q23EGG10ColorFaderFv
fadeIn__Q23EGG10ColorFaderFv:
/* 800A46AC 0009F5AC  80 03 00 04 */	lwz r0, 4(r3)
/* 800A46B0 0009F5B0  7C 00 00 34 */	cntlzw r0, r0
/* 800A46B4 0009F5B4  54 05 D9 7F */	rlwinm. r5, r0, 0x1b, 5, 0x1f
/* 800A46B8 0009F5B8  41 82 00 14 */	beq lbl_800A46CC
/* 800A46BC 0009F5BC  38 80 00 02 */	li r4, 2
/* 800A46C0 0009F5C0  38 00 00 00 */	li r0, 0
/* 800A46C4 0009F5C4  90 83 00 04 */	stw r4, 4(r3)
/* 800A46C8 0009F5C8  B0 03 00 0C */	sth r0, 0xc(r3)
lbl_800A46CC:
/* 800A46CC 0009F5CC  7C A3 2B 78 */	mr r3, r5
/* 800A46D0 0009F5D0  4E 80 00 20 */	blr 

.global fadeOut__Q23EGG10ColorFaderFv
fadeOut__Q23EGG10ColorFaderFv:
/* 800A46D4 0009F5D4  80 83 00 04 */	lwz r4, 4(r3)
/* 800A46D8 0009F5D8  38 04 FF FF */	addi r0, r4, -1
/* 800A46DC 0009F5DC  7C 00 00 34 */	cntlzw r0, r0
/* 800A46E0 0009F5E0  54 05 D9 7F */	rlwinm. r5, r0, 0x1b, 5, 0x1f
/* 800A46E4 0009F5E4  41 82 00 14 */	beq lbl_800A46F8
/* 800A46E8 0009F5E8  38 80 00 03 */	li r4, 3
/* 800A46EC 0009F5EC  38 00 00 00 */	li r0, 0
/* 800A46F0 0009F5F0  90 83 00 04 */	stw r4, 4(r3)
/* 800A46F4 0009F5F4  B0 03 00 0C */	sth r0, 0xc(r3)
lbl_800A46F8:
/* 800A46F8 0009F5F8  7C A3 2B 78 */	mr r3, r5
/* 800A46FC 0009F5FC  4E 80 00 20 */	blr 

.global calc__Q23EGG10ColorFaderFv
calc__Q23EGG10ColorFaderFv:
/* 800A4700 0009F600  80 03 00 04 */	lwz r0, 4(r3)
/* 800A4704 0009F604  38 C0 00 00 */	li r6, 0
/* 800A4708 0009F608  2C 00 00 01 */	cmpwi r0, 1
/* 800A470C 0009F60C  40 82 00 10 */	bne lbl_800A471C
/* 800A4710 0009F610  38 00 00 00 */	li r0, 0
/* 800A4714 0009F614  98 03 00 13 */	stb r0, 0x13(r3)
/* 800A4718 0009F618  48 00 00 C4 */	b lbl_800A47DC
lbl_800A471C:
/* 800A471C 0009F61C  2C 00 00 00 */	cmpwi r0, 0
/* 800A4720 0009F620  40 82 00 10 */	bne lbl_800A4730
/* 800A4724 0009F624  38 00 00 FF */	li r0, 0xff
/* 800A4728 0009F628  98 03 00 13 */	stb r0, 0x13(r3)
/* 800A472C 0009F62C  48 00 00 B0 */	b lbl_800A47DC
lbl_800A4730:
/* 800A4730 0009F630  2C 00 00 02 */	cmpwi r0, 2
/* 800A4734 0009F634  40 82 00 50 */	bne lbl_800A4784
/* 800A4738 0009F638  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 800A473C 0009F63C  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 800A4740 0009F640  38 04 00 01 */	addi r0, r4, 1
/* 800A4744 0009F644  7C 04 28 40 */	cmplw r4, r5
/* 800A4748 0009F648  B0 03 00 0C */	sth r0, 0xc(r3)
/* 800A474C 0009F64C  40 81 00 18 */	ble lbl_800A4764
/* 800A4750 0009F650  88 03 00 08 */	lbz r0, 8(r3)
/* 800A4754 0009F654  38 80 00 01 */	li r4, 1
/* 800A4758 0009F658  90 83 00 04 */	stw r4, 4(r3)
/* 800A475C 0009F65C  7C A4 2B 78 */	mr r4, r5
/* 800A4760 0009F660  54 06 07 FE */	clrlwi r6, r0, 0x1f
lbl_800A4764:
/* 800A4764 0009F664  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 800A4768 0009F668  54 84 42 2E */	rlwinm r4, r4, 8, 8, 0x17
/* 800A476C 0009F66C  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 800A4770 0009F670  7C 85 20 50 */	subf r4, r5, r4
/* 800A4774 0009F674  7C 04 03 D6 */	divw r0, r4, r0
/* 800A4778 0009F678  20 00 00 FF */	subfic r0, r0, 0xff
/* 800A477C 0009F67C  98 03 00 13 */	stb r0, 0x13(r3)
/* 800A4780 0009F680  48 00 00 5C */	b lbl_800A47DC
lbl_800A4784:
/* 800A4784 0009F684  2C 00 00 03 */	cmpwi r0, 3
/* 800A4788 0009F688  40 82 00 54 */	bne lbl_800A47DC
/* 800A478C 0009F68C  A0 E3 00 0C */	lhz r7, 0xc(r3)
/* 800A4790 0009F690  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 800A4794 0009F694  38 07 00 01 */	addi r0, r7, 1
/* 800A4798 0009F698  7C 07 28 40 */	cmplw r7, r5
/* 800A479C 0009F69C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 800A47A0 0009F6A0  40 81 00 28 */	ble lbl_800A47C8
/* 800A47A4 0009F6A4  38 05 00 01 */	addi r0, r5, 1
/* 800A47A8 0009F6A8  7C 07 00 00 */	cmpw r7, r0
/* 800A47AC 0009F6AC  40 81 00 14 */	ble lbl_800A47C0
/* 800A47B0 0009F6B0  88 03 00 08 */	lbz r0, 8(r3)
/* 800A47B4 0009F6B4  38 80 00 00 */	li r4, 0
/* 800A47B8 0009F6B8  90 83 00 04 */	stw r4, 4(r3)
/* 800A47BC 0009F6BC  54 06 FF FE */	rlwinm r6, r0, 0x1f, 0x1f, 0x1f
lbl_800A47C0:
/* 800A47C0 0009F6C0  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 800A47C4 0009F6C4  7C A7 2B 78 */	mr r7, r5
lbl_800A47C8:
/* 800A47C8 0009F6C8  54 E4 04 3E */	clrlwi r4, r7, 0x10
/* 800A47CC 0009F6CC  54 E0 42 2E */	rlwinm r0, r7, 8, 8, 0x17
/* 800A47D0 0009F6D0  7C 04 00 50 */	subf r0, r4, r0
/* 800A47D4 0009F6D4  7C 00 2B D6 */	divw r0, r0, r5
/* 800A47D8 0009F6D8  98 03 00 13 */	stb r0, 0x13(r3)
lbl_800A47DC:
/* 800A47DC 0009F6DC  7C C3 33 78 */	mr r3, r6
/* 800A47E0 0009F6E0  4E 80 00 20 */	blr 

.global draw__Q23EGG10ColorFaderFv
draw__Q23EGG10ColorFaderFv:
/* 800A47E4 0009F6E4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800A47E8 0009F6E8  7C 08 02 A6 */	mflr r0
/* 800A47EC 0009F6EC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800A47F0 0009F6F0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800A47F4 0009F6F4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 800A47F8 0009F6F8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800A47FC 0009F6FC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800A4800 0009F700  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800A4804 0009F704  93 81 00 80 */	stw r28, 0x80(r1)
/* 800A4808 0009F708  7C 7C 1B 78 */	mr r28, r3
/* 800A480C 0009F70C  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800A4810 0009F710  2C 00 00 00 */	cmpwi r0, 0
/* 800A4814 0009F714  41 82 02 74 */	beq lbl_800A4A88
/* 800A4818 0009F718  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 800A481C 0009F71C  38 61 00 40 */	addi r3, r1, 0x40
/* 800A4820 0009F720  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 800A4824 0009F724  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 800A4828 0009F728  C0 9C 00 1C */	lfs f4, 0x1c(r28)
/* 800A482C 0009F72C  C0 A2 8F E8 */	lfs f5, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4830 0009F730  C0 C2 8F EC */	lfs f6, lbl_804C0A0C-_SDA2_BASE_(r2)
/* 800A4834 0009F734  48 04 3C 09 */	bl C_MTXOrtho
/* 800A4838 0009F738  38 61 00 40 */	addi r3, r1, 0x40
/* 800A483C 0009F73C  38 80 00 01 */	li r4, 1
/* 800A4840 0009F740  48 03 E9 4D */	bl GXSetProjection
/* 800A4844 0009F744  C0 7C 00 20 */	lfs f3, 0x20(r28)
/* 800A4848 0009F748  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 800A484C 0009F74C  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 800A4850 0009F750  EC 83 08 28 */	fsubs f4, f3, f1
/* 800A4854 0009F754  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 800A4858 0009F758  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 800A485C 0009F75C  EC 62 00 28 */	fsubs f3, f2, f0
/* 800A4860 0009F760  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 800A4864 0009F764  C0 A2 8F E8 */	lfs f5, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4868 0009F768  C0 C2 8F EC */	lfs f6, lbl_804C0A0C-_SDA2_BASE_(r2)
/* 800A486C 0009F76C  48 03 EC B9 */	bl GXSetViewport
/* 800A4870 0009F770  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 800A4874 0009F774  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 800A4878 0009F778  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 800A487C 0009F77C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A4880 0009F780  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 800A4884 0009F784  EF E2 00 28 */	fsubs f31, f2, f0
/* 800A4888 0009F788  48 00 D3 95 */	bl __cvt_fp2unsigned
/* 800A488C 0009F78C  FC 20 F8 90 */	fmr f1, f31
/* 800A4890 0009F790  7C 7D 1B 78 */	mr r29, r3
/* 800A4894 0009F794  48 00 D3 89 */	bl __cvt_fp2unsigned
/* 800A4898 0009F798  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 800A489C 0009F79C  7C 7E 1B 78 */	mr r30, r3
/* 800A48A0 0009F7A0  48 00 D3 7D */	bl __cvt_fp2unsigned
/* 800A48A4 0009F7A4  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 800A48A8 0009F7A8  7C 7F 1B 78 */	mr r31, r3
/* 800A48AC 0009F7AC  48 00 D3 71 */	bl __cvt_fp2unsigned
/* 800A48B0 0009F7B0  7F E4 FB 78 */	mr r4, r31
/* 800A48B4 0009F7B4  7F C5 F3 78 */	mr r5, r30
/* 800A48B8 0009F7B8  7F A6 EB 78 */	mr r6, r29
/* 800A48BC 0009F7BC  48 03 EC E5 */	bl GXSetScissor
/* 800A48C0 0009F7C0  38 61 00 10 */	addi r3, r1, 0x10
/* 800A48C4 0009F7C4  48 04 2D 35 */	bl PSMTXIdentity
/* 800A48C8 0009F7C8  38 61 00 10 */	addi r3, r1, 0x10
/* 800A48CC 0009F7CC  38 80 00 00 */	li r4, 0
/* 800A48D0 0009F7D0  48 03 E9 AD */	bl func_800E327C
/* 800A48D4 0009F7D4  38 60 00 00 */	li r3, 0
/* 800A48D8 0009F7D8  48 03 EA AD */	bl func_800E3384
/* 800A48DC 0009F7DC  48 03 8D 3D */	bl GXClearVtxDesc
/* 800A48E0 0009F7E0  48 03 94 71 */	bl func_800DDD50
/* 800A48E4 0009F7E4  38 60 00 09 */	li r3, 9
/* 800A48E8 0009F7E8  38 80 00 01 */	li r4, 1
/* 800A48EC 0009F7EC  48 03 84 9D */	bl GXSetVtxDesc
/* 800A48F0 0009F7F0  38 60 00 0B */	li r3, 0xb
/* 800A48F4 0009F7F4  38 80 00 00 */	li r4, 0
/* 800A48F8 0009F7F8  48 03 84 91 */	bl GXSetVtxDesc
/* 800A48FC 0009F7FC  38 60 00 0D */	li r3, 0xd
/* 800A4900 0009F800  38 80 00 00 */	li r4, 0
/* 800A4904 0009F804  48 03 84 85 */	bl GXSetVtxDesc
/* 800A4908 0009F808  38 60 00 00 */	li r3, 0
/* 800A490C 0009F80C  38 80 00 09 */	li r4, 9
/* 800A4910 0009F810  38 A0 00 01 */	li r5, 1
/* 800A4914 0009F814  38 C0 00 04 */	li r6, 4
/* 800A4918 0009F818  38 E0 00 00 */	li r7, 0
/* 800A491C 0009F81C  48 03 8D 31 */	bl GXSetVtxAttrFmt
/* 800A4920 0009F820  38 60 00 01 */	li r3, 1
/* 800A4924 0009F824  48 03 B6 45 */	bl GXSetNumChans
/* 800A4928 0009F828  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 800A492C 0009F82C  38 81 00 08 */	addi r4, r1, 8
/* 800A4930 0009F830  38 60 00 04 */	li r3, 4
/* 800A4934 0009F834  98 01 00 08 */	stb r0, 8(r1)
/* 800A4938 0009F838  88 1C 00 11 */	lbz r0, 0x11(r28)
/* 800A493C 0009F83C  98 01 00 09 */	stb r0, 9(r1)
/* 800A4940 0009F840  88 1C 00 12 */	lbz r0, 0x12(r28)
/* 800A4944 0009F844  98 01 00 0A */	stb r0, 0xa(r1)
/* 800A4948 0009F848  88 1C 00 13 */	lbz r0, 0x13(r28)
/* 800A494C 0009F84C  98 01 00 0B */	stb r0, 0xb(r1)
/* 800A4950 0009F850  48 03 B5 41 */	bl func_800DFE90
/* 800A4954 0009F854  38 60 00 04 */	li r3, 4
/* 800A4958 0009F858  38 80 00 00 */	li r4, 0
/* 800A495C 0009F85C  38 A0 00 00 */	li r5, 0
/* 800A4960 0009F860  38 C0 00 00 */	li r6, 0
/* 800A4964 0009F864  38 E0 00 00 */	li r7, 0
/* 800A4968 0009F868  39 00 00 00 */	li r8, 0
/* 800A496C 0009F86C  39 20 00 02 */	li r9, 2
/* 800A4970 0009F870  48 03 B6 1D */	bl GXSetChanCtrl
/* 800A4974 0009F874  38 60 00 00 */	li r3, 0
/* 800A4978 0009F878  48 03 96 11 */	bl GXSetNumTexGens
/* 800A497C 0009F87C  38 60 00 00 */	li r3, 0
/* 800A4980 0009F880  48 03 CB 45 */	bl GXSetNumIndStages
/* 800A4984 0009F884  38 60 00 00 */	li r3, 0
/* 800A4988 0009F888  48 03 CB A9 */	bl func_800E1530
/* 800A498C 0009F88C  38 60 00 01 */	li r3, 1
/* 800A4990 0009F890  48 03 D2 51 */	bl GXSetNumTevStages
/* 800A4994 0009F894  38 60 00 00 */	li r3, 0
/* 800A4998 0009F898  38 80 00 04 */	li r4, 4
/* 800A499C 0009F89C  48 03 CB E9 */	bl GXSetTevOp
/* 800A49A0 0009F8A0  38 60 00 00 */	li r3, 0
/* 800A49A4 0009F8A4  38 80 00 FF */	li r4, 0xff
/* 800A49A8 0009F8A8  38 A0 00 FF */	li r5, 0xff
/* 800A49AC 0009F8AC  38 C0 00 04 */	li r6, 4
/* 800A49B0 0009F8B0  48 03 D0 D5 */	bl GXSetTevOrder
/* 800A49B4 0009F8B4  88 1C 00 13 */	lbz r0, 0x13(r28)
/* 800A49B8 0009F8B8  28 00 00 FF */	cmplwi r0, 0xff
/* 800A49BC 0009F8BC  40 82 00 1C */	bne lbl_800A49D8
/* 800A49C0 0009F8C0  38 60 00 00 */	li r3, 0
/* 800A49C4 0009F8C4  38 80 00 01 */	li r4, 1
/* 800A49C8 0009F8C8  38 A0 00 00 */	li r5, 0
/* 800A49CC 0009F8CC  38 C0 00 0F */	li r6, 0xf
/* 800A49D0 0009F8D0  48 03 D6 E5 */	bl GXSetBlendMode
/* 800A49D4 0009F8D4  48 00 00 18 */	b lbl_800A49EC
lbl_800A49D8:
/* 800A49D8 0009F8D8  38 60 00 01 */	li r3, 1
/* 800A49DC 0009F8DC  38 80 00 04 */	li r4, 4
/* 800A49E0 0009F8E0  38 A0 00 05 */	li r5, 5
/* 800A49E4 0009F8E4  38 C0 00 0F */	li r6, 0xf
/* 800A49E8 0009F8E8  48 03 D6 CD */	bl GXSetBlendMode
lbl_800A49EC:
/* 800A49EC 0009F8EC  38 60 00 01 */	li r3, 1
/* 800A49F0 0009F8F0  48 03 D7 15 */	bl func_800E2104
/* 800A49F4 0009F8F4  38 60 00 01 */	li r3, 1
/* 800A49F8 0009F8F8  48 03 D7 39 */	bl func_800E2130
/* 800A49FC 0009F8FC  38 60 00 00 */	li r3, 0
/* 800A4A00 0009F900  38 80 00 00 */	li r4, 0
/* 800A4A04 0009F904  38 A0 00 00 */	li r5, 0
/* 800A4A08 0009F908  48 03 D7 55 */	bl func_800E215C
/* 800A4A0C 0009F90C  38 60 00 02 */	li r3, 2
/* 800A4A10 0009F910  48 03 A3 8D */	bl func_800DED9C
/* 800A4A14 0009F914  38 60 00 80 */	li r3, 0x80
/* 800A4A18 0009F918  38 80 00 00 */	li r4, 0
/* 800A4A1C 0009F91C  38 A0 00 04 */	li r5, 4
/* 800A4A20 0009F920  48 03 A0 B5 */	bl GXBegin
/* 800A4A24 0009F924  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 800A4A28 0009F928  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800A4A2C 0009F92C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 800A4A30 0009F930  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 800A4A34 0009F934  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 800A4A38 0009F938  C0 02 8F E8 */	lfs f0, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4A3C 0009F93C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A40 0009F940  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 800A4A44 0009F944  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 800A4A48 0009F948  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A4C 0009F94C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 800A4A50 0009F950  C0 02 8F E8 */	lfs f0, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4A54 0009F954  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A58 0009F958  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 800A4A5C 0009F95C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 800A4A60 0009F960  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A64 0009F964  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 800A4A68 0009F968  C0 02 8F E8 */	lfs f0, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4A6C 0009F96C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A70 0009F970  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 800A4A74 0009F974  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 800A4A78 0009F978  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800A4A7C 0009F97C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 800A4A80 0009F980  C0 02 8F E8 */	lfs f0, lbl_804C0A08-_SDA2_BASE_(r2)
/* 800A4A84 0009F984  D0 03 80 00 */	stfs f0, -0x8000(r3)
lbl_800A4A88:
/* 800A4A88 0009F988  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 800A4A8C 0009F98C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800A4A90 0009F990  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800A4A94 0009F994  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800A4A98 0009F998  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800A4A9C 0009F99C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800A4AA0 0009F9A0  83 81 00 80 */	lwz r28, 0x80(r1)
/* 800A4AA4 0009F9A4  7C 08 03 A6 */	mtlr r0
/* 800A4AA8 0009F9A8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800A4AAC 0009F9AC  4E 80 00 20 */	blr 

.global getStatus__Q23EGG10ColorFaderCFv
getStatus__Q23EGG10ColorFaderCFv:
/* 800A4AB0 0009F9B0  80 63 00 04 */	lwz r3, 4(r3)
/* 800A4AB4 0009F9B4  4E 80 00 20 */	blr 

.global __dt__Q23EGG10ColorFaderFv
__dt__Q23EGG10ColorFaderFv:
/* 800A4AB8 0009F9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4ABC 0009F9BC  7C 08 02 A6 */	mflr r0
/* 800A4AC0 0009F9C0  2C 03 00 00 */	cmpwi r3, 0
/* 800A4AC4 0009F9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4AC8 0009F9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4ACC 0009F9CC  7C 7F 1B 78 */	mr r31, r3
/* 800A4AD0 0009F9D0  41 82 00 10 */	beq lbl_800A4AE0
/* 800A4AD4 0009F9D4  2C 04 00 00 */	cmpwi r4, 0
/* 800A4AD8 0009F9D8  40 81 00 08 */	ble lbl_800A4AE0
/* 800A4ADC 0009F9DC  4B FF E7 A9 */	bl __dl__FPv
lbl_800A4AE0:
/* 800A4AE0 0009F9E0  7F E3 FB 78 */	mr r3, r31
/* 800A4AE4 0009F9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4AE8 0009F9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4AEC 0009F9EC  7C 08 03 A6 */	mtlr r0
/* 800A4AF0 0009F9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4AF4 0009F9F4  4E 80 00 20 */	blr 

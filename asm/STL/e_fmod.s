.include "macros.inc"

.section .rodata, "a"
.balign 0x8
Zero:
	.double 0e0
	.double 0e-0

.section .text, "ax"
.global __ieee754_fmod
__ieee754_fmod:
/* 800BDA28 000B8928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BDA2C 000B892C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 800BDA30 000B8930  D8 21 00 08 */	stfd f1, 8(r1)
/* 800BDA34 000B8934  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800BDA38 000B8938  80 E1 00 08 */	lwz r7, 8(r1)
/* 800BDA3C 000B893C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800BDA40 000B8940  54 00 00 7E */	clrlwi r0, r0, 1
/* 800BDA44 000B8944  54 E4 00 00 */	rlwinm r4, r7, 0, 0, 0
/* 800BDA48 000B8948  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800BDA4C 000B894C  7C 03 33 79 */	or. r3, r0, r6
/* 800BDA50 000B8950  7C E8 22 78 */	xor r8, r7, r4
/* 800BDA54 000B8954  41 82 00 28 */	beq lbl_800BDA7C
/* 800BDA58 000B8958  3C E0 7F F0 */	lis r7, 0x7ff0
/* 800BDA5C 000B895C  7C 08 38 00 */	cmpw r8, r7
/* 800BDA60 000B8960  40 80 00 1C */	bge lbl_800BDA7C
/* 800BDA64 000B8964  7C 66 00 D0 */	neg r3, r6
/* 800BDA68 000B8968  7C C3 1B 78 */	or r3, r6, r3
/* 800BDA6C 000B896C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800BDA70 000B8970  7C 03 1B 78 */	or r3, r0, r3
/* 800BDA74 000B8974  7C 03 38 40 */	cmplw r3, r7
/* 800BDA78 000B8978  40 81 00 10 */	ble lbl_800BDA88
lbl_800BDA7C:
/* 800BDA7C 000B897C  FC 01 00 B2 */	fmul f0, f1, f2
/* 800BDA80 000B8980  FC 20 00 24 */	fdiv f1, f0, f0
/* 800BDA84 000B8984  48 00 02 CC */	b lbl_800BDD50
lbl_800BDA88:
/* 800BDA88 000B8988  7C 08 00 00 */	cmpw r8, r0
/* 800BDA8C 000B898C  41 81 00 2C */	bgt lbl_800BDAB8
/* 800BDA90 000B8990  41 80 02 C0 */	blt lbl_800BDD50
/* 800BDA94 000B8994  7C 05 30 40 */	cmplw r5, r6
/* 800BDA98 000B8998  40 80 00 08 */	bge lbl_800BDAA0
/* 800BDA9C 000B899C  48 00 02 B4 */	b lbl_800BDD50
lbl_800BDAA0:
/* 800BDAA0 000B89A0  40 82 00 18 */	bne lbl_800BDAB8
/* 800BDAA4 000B89A4  3C 60 80 38 */	lis r3, Zero@ha
/* 800BDAA8 000B89A8  54 80 27 38 */	rlwinm r0, r4, 4, 0x1c, 0x1c
/* 800BDAAC 000B89AC  38 63 BF 50 */	addi r3, r3, Zero@l
/* 800BDAB0 000B89B0  7C 23 04 AE */	lfdx f1, r3, r0
/* 800BDAB4 000B89B4  48 00 02 9C */	b lbl_800BDD50
lbl_800BDAB8:
/* 800BDAB8 000B89B8  3C 60 00 10 */	lis r3, 0x10
/* 800BDABC 000B89BC  7C 08 18 00 */	cmpw r8, r3
/* 800BDAC0 000B89C0  40 80 00 4C */	bge lbl_800BDB0C
/* 800BDAC4 000B89C4  2C 08 00 00 */	cmpwi r8, 0
/* 800BDAC8 000B89C8  40 82 00 24 */	bne lbl_800BDAEC
/* 800BDACC 000B89CC  7C A3 2B 78 */	mr r3, r5
/* 800BDAD0 000B89D0  39 60 FB ED */	li r11, -1043
/* 800BDAD4 000B89D4  48 00 00 0C */	b lbl_800BDAE0
lbl_800BDAD8:
/* 800BDAD8 000B89D8  54 63 08 3C */	slwi r3, r3, 1
/* 800BDADC 000B89DC  39 6B FF FF */	addi r11, r11, -1
lbl_800BDAE0:
/* 800BDAE0 000B89E0  2C 03 00 00 */	cmpwi r3, 0
/* 800BDAE4 000B89E4  41 81 FF F4 */	bgt lbl_800BDAD8
/* 800BDAE8 000B89E8  48 00 00 2C */	b lbl_800BDB14
lbl_800BDAEC:
/* 800BDAEC 000B89EC  55 03 58 28 */	slwi r3, r8, 0xb
/* 800BDAF0 000B89F0  39 60 FC 02 */	li r11, -1022
/* 800BDAF4 000B89F4  48 00 00 0C */	b lbl_800BDB00
lbl_800BDAF8:
/* 800BDAF8 000B89F8  54 63 08 3C */	slwi r3, r3, 1
/* 800BDAFC 000B89FC  39 6B FF FF */	addi r11, r11, -1
lbl_800BDB00:
/* 800BDB00 000B8A00  2C 03 00 00 */	cmpwi r3, 0
/* 800BDB04 000B8A04  41 81 FF F4 */	bgt lbl_800BDAF8
/* 800BDB08 000B8A08  48 00 00 0C */	b lbl_800BDB14
lbl_800BDB0C:
/* 800BDB0C 000B8A0C  7D 03 A6 70 */	srawi r3, r8, 0x14
/* 800BDB10 000B8A10  39 63 FC 01 */	addi r11, r3, -1023
lbl_800BDB14:
/* 800BDB14 000B8A14  3C 60 00 10 */	lis r3, 0x10
/* 800BDB18 000B8A18  7C 00 18 00 */	cmpw r0, r3
/* 800BDB1C 000B8A1C  40 80 00 4C */	bge lbl_800BDB68
/* 800BDB20 000B8A20  2C 00 00 00 */	cmpwi r0, 0
/* 800BDB24 000B8A24  40 82 00 24 */	bne lbl_800BDB48
/* 800BDB28 000B8A28  7C C7 33 78 */	mr r7, r6
/* 800BDB2C 000B8A2C  38 60 FB ED */	li r3, -1043
/* 800BDB30 000B8A30  48 00 00 0C */	b lbl_800BDB3C
lbl_800BDB34:
/* 800BDB34 000B8A34  54 E7 08 3C */	slwi r7, r7, 1
/* 800BDB38 000B8A38  38 63 FF FF */	addi r3, r3, -1
lbl_800BDB3C:
/* 800BDB3C 000B8A3C  2C 07 00 00 */	cmpwi r7, 0
/* 800BDB40 000B8A40  41 81 FF F4 */	bgt lbl_800BDB34
/* 800BDB44 000B8A44  48 00 00 2C */	b lbl_800BDB70
lbl_800BDB48:
/* 800BDB48 000B8A48  54 07 58 28 */	slwi r7, r0, 0xb
/* 800BDB4C 000B8A4C  38 60 FC 02 */	li r3, -1022
/* 800BDB50 000B8A50  48 00 00 0C */	b lbl_800BDB5C
lbl_800BDB54:
/* 800BDB54 000B8A54  54 E7 08 3C */	slwi r7, r7, 1
/* 800BDB58 000B8A58  38 63 FF FF */	addi r3, r3, -1
lbl_800BDB5C:
/* 800BDB5C 000B8A5C  2C 07 00 00 */	cmpwi r7, 0
/* 800BDB60 000B8A60  41 81 FF F4 */	bgt lbl_800BDB54
/* 800BDB64 000B8A64  48 00 00 0C */	b lbl_800BDB70
lbl_800BDB68:
/* 800BDB68 000B8A68  7C 03 A6 70 */	srawi r3, r0, 0x14
/* 800BDB6C 000B8A6C  38 63 FC 01 */	addi r3, r3, -1023
lbl_800BDB70:
/* 800BDB70 000B8A70  2C 0B FC 02 */	cmpwi r11, -1022
/* 800BDB74 000B8A74  41 80 00 10 */	blt lbl_800BDB84
/* 800BDB78 000B8A78  55 07 03 3E */	clrlwi r7, r8, 0xc
/* 800BDB7C 000B8A7C  64 E9 00 10 */	oris r9, r7, 0x10
/* 800BDB80 000B8A80  48 00 00 34 */	b lbl_800BDBB4
lbl_800BDB84:
/* 800BDB84 000B8A84  21 2B FC 02 */	subfic r9, r11, -1022
/* 800BDB88 000B8A88  2C 09 00 1F */	cmpwi r9, 0x1f
/* 800BDB8C 000B8A8C  41 81 00 1C */	bgt lbl_800BDBA8
/* 800BDB90 000B8A90  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800BDB94 000B8A94  7D 08 48 30 */	slw r8, r8, r9
/* 800BDB98 000B8A98  7C A7 3C 30 */	srw r7, r5, r7
/* 800BDB9C 000B8A9C  7C A5 48 30 */	slw r5, r5, r9
/* 800BDBA0 000B8AA0  7D 09 3B 78 */	or r9, r8, r7
/* 800BDBA4 000B8AA4  48 00 00 10 */	b lbl_800BDBB4
lbl_800BDBA8:
/* 800BDBA8 000B8AA8  38 E9 FF E0 */	addi r7, r9, -32
/* 800BDBAC 000B8AAC  7C A9 38 30 */	slw r9, r5, r7
/* 800BDBB0 000B8AB0  38 A0 00 00 */	li r5, 0
lbl_800BDBB4:
/* 800BDBB4 000B8AB4  2C 03 FC 02 */	cmpwi r3, -1022
/* 800BDBB8 000B8AB8  41 80 00 10 */	blt lbl_800BDBC8
/* 800BDBBC 000B8ABC  54 00 03 3E */	clrlwi r0, r0, 0xc
/* 800BDBC0 000B8AC0  64 08 00 10 */	oris r8, r0, 0x10
/* 800BDBC4 000B8AC4  48 00 00 34 */	b lbl_800BDBF8
lbl_800BDBC8:
/* 800BDBC8 000B8AC8  21 43 FC 02 */	subfic r10, r3, -1022
/* 800BDBCC 000B8ACC  2C 0A 00 1F */	cmpwi r10, 0x1f
/* 800BDBD0 000B8AD0  41 81 00 1C */	bgt lbl_800BDBEC
/* 800BDBD4 000B8AD4  20 EA 00 20 */	subfic r7, r10, 0x20
/* 800BDBD8 000B8AD8  7C 08 50 30 */	slw r8, r0, r10
/* 800BDBDC 000B8ADC  7C C0 3C 30 */	srw r0, r6, r7
/* 800BDBE0 000B8AE0  7C C6 50 30 */	slw r6, r6, r10
/* 800BDBE4 000B8AE4  7D 08 03 78 */	or r8, r8, r0
/* 800BDBE8 000B8AE8  48 00 00 10 */	b lbl_800BDBF8
lbl_800BDBEC:
/* 800BDBEC 000B8AEC  38 0A FF E0 */	addi r0, r10, -32
/* 800BDBF0 000B8AF0  7C C8 00 30 */	slw r8, r6, r0
/* 800BDBF4 000B8AF4  38 C0 00 00 */	li r6, 0
lbl_800BDBF8:
/* 800BDBF8 000B8AF8  7C 03 58 51 */	subf. r0, r3, r11
/* 800BDBFC 000B8AFC  7C 09 03 A6 */	mtctr r0
/* 800BDC00 000B8B00  41 82 00 64 */	beq lbl_800BDC64
lbl_800BDC04:
/* 800BDC04 000B8B04  7C 05 30 40 */	cmplw r5, r6
/* 800BDC08 000B8B08  7C E8 48 50 */	subf r7, r8, r9
/* 800BDC0C 000B8B0C  7D 46 28 50 */	subf r10, r6, r5
/* 800BDC10 000B8B10  40 80 00 08 */	bge lbl_800BDC18
/* 800BDC14 000B8B14  38 E7 FF FF */	addi r7, r7, -1
lbl_800BDC18:
/* 800BDC18 000B8B18  2C 07 00 00 */	cmpwi r7, 0
/* 800BDC1C 000B8B1C  40 80 00 18 */	bge lbl_800BDC34
/* 800BDC20 000B8B20  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 800BDC24 000B8B24  55 20 08 3C */	slwi r0, r9, 1
/* 800BDC28 000B8B28  7D 27 02 14 */	add r9, r7, r0
/* 800BDC2C 000B8B2C  7C A5 2A 14 */	add r5, r5, r5
/* 800BDC30 000B8B30  48 00 00 30 */	b lbl_800BDC60
lbl_800BDC34:
/* 800BDC34 000B8B34  7C E0 53 79 */	or. r0, r7, r10
/* 800BDC38 000B8B38  40 82 00 18 */	bne lbl_800BDC50
/* 800BDC3C 000B8B3C  3C 60 80 38 */	lis r3, Zero@ha
/* 800BDC40 000B8B40  54 80 27 38 */	rlwinm r0, r4, 4, 0x1c, 0x1c
/* 800BDC44 000B8B44  38 63 BF 50 */	addi r3, r3, Zero@l
/* 800BDC48 000B8B48  7C 23 04 AE */	lfdx f1, r3, r0
/* 800BDC4C 000B8B4C  48 00 01 04 */	b lbl_800BDD50
lbl_800BDC50:
/* 800BDC50 000B8B50  55 45 0F FE */	srwi r5, r10, 0x1f
/* 800BDC54 000B8B54  54 E0 08 3C */	slwi r0, r7, 1
/* 800BDC58 000B8B58  7D 25 02 14 */	add r9, r5, r0
/* 800BDC5C 000B8B5C  55 45 08 3C */	slwi r5, r10, 1
lbl_800BDC60:
/* 800BDC60 000B8B60  42 00 FF A4 */	bdnz lbl_800BDC04
lbl_800BDC64:
/* 800BDC64 000B8B64  7C 05 30 40 */	cmplw r5, r6
/* 800BDC68 000B8B68  7C E8 48 50 */	subf r7, r8, r9
/* 800BDC6C 000B8B6C  7C 06 28 50 */	subf r0, r6, r5
/* 800BDC70 000B8B70  40 80 00 08 */	bge lbl_800BDC78
/* 800BDC74 000B8B74  38 E7 FF FF */	addi r7, r7, -1
lbl_800BDC78:
/* 800BDC78 000B8B78  2C 07 00 00 */	cmpwi r7, 0
/* 800BDC7C 000B8B7C  41 80 00 0C */	blt lbl_800BDC88
/* 800BDC80 000B8B80  7C E9 3B 78 */	mr r9, r7
/* 800BDC84 000B8B84  7C 05 03 78 */	mr r5, r0
lbl_800BDC88:
/* 800BDC88 000B8B88  7D 20 2B 79 */	or. r0, r9, r5
/* 800BDC8C 000B8B8C  40 82 00 18 */	bne lbl_800BDCA4
/* 800BDC90 000B8B90  3C 60 80 38 */	lis r3, Zero@ha
/* 800BDC94 000B8B94  54 80 27 38 */	rlwinm r0, r4, 4, 0x1c, 0x1c
/* 800BDC98 000B8B98  38 63 BF 50 */	addi r3, r3, Zero@l
/* 800BDC9C 000B8B9C  7C 23 04 AE */	lfdx f1, r3, r0
/* 800BDCA0 000B8BA0  48 00 00 B0 */	b lbl_800BDD50
lbl_800BDCA4:
/* 800BDCA4 000B8BA4  3C 00 00 10 */	lis r0, 0x10
/* 800BDCA8 000B8BA8  48 00 00 18 */	b lbl_800BDCC0
lbl_800BDCAC:
/* 800BDCAC 000B8BAC  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 800BDCB0 000B8BB0  55 26 08 3C */	slwi r6, r9, 1
/* 800BDCB4 000B8BB4  7D 27 32 14 */	add r9, r7, r6
/* 800BDCB8 000B8BB8  7C A5 2A 14 */	add r5, r5, r5
/* 800BDCBC 000B8BBC  38 63 FF FF */	addi r3, r3, -1
lbl_800BDCC0:
/* 800BDCC0 000B8BC0  7C 09 00 00 */	cmpw r9, r0
/* 800BDCC4 000B8BC4  41 80 FF E8 */	blt lbl_800BDCAC
/* 800BDCC8 000B8BC8  2C 03 FC 02 */	cmpwi r3, -1022
/* 800BDCCC 000B8BCC  41 80 00 24 */	blt lbl_800BDCF0
/* 800BDCD0 000B8BD0  38 03 03 FF */	addi r0, r3, 0x3ff
/* 800BDCD4 000B8BD4  3C 69 FF F0 */	addis r3, r9, 0xfff0
/* 800BDCD8 000B8BD8  54 00 A0 16 */	slwi r0, r0, 0x14
/* 800BDCDC 000B8BDC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 800BDCE0 000B8BE0  7C 60 03 78 */	or r0, r3, r0
/* 800BDCE4 000B8BE4  7C 00 23 78 */	or r0, r0, r4
/* 800BDCE8 000B8BE8  90 01 00 08 */	stw r0, 8(r1)
/* 800BDCEC 000B8BEC  48 00 00 60 */	b lbl_800BDD4C
lbl_800BDCF0:
/* 800BDCF0 000B8BF0  20 C3 FC 02 */	subfic r6, r3, -1022
/* 800BDCF4 000B8BF4  2C 06 00 14 */	cmpwi r6, 0x14
/* 800BDCF8 000B8BF8  41 81 00 1C */	bgt lbl_800BDD14
/* 800BDCFC 000B8BFC  20 06 00 20 */	subfic r0, r6, 0x20
/* 800BDD00 000B8C00  7C A3 34 30 */	srw r3, r5, r6
/* 800BDD04 000B8C04  7D 20 00 30 */	slw r0, r9, r0
/* 800BDD08 000B8C08  7D 29 36 30 */	sraw r9, r9, r6
/* 800BDD0C 000B8C0C  7C 63 03 78 */	or r3, r3, r0
/* 800BDD10 000B8C10  48 00 00 30 */	b lbl_800BDD40
lbl_800BDD14:
/* 800BDD14 000B8C14  2C 06 00 1F */	cmpwi r6, 0x1f
/* 800BDD18 000B8C18  41 81 00 1C */	bgt lbl_800BDD34
/* 800BDD1C 000B8C1C  20 66 00 20 */	subfic r3, r6, 0x20
/* 800BDD20 000B8C20  7C A0 34 30 */	srw r0, r5, r6
/* 800BDD24 000B8C24  7D 23 18 30 */	slw r3, r9, r3
/* 800BDD28 000B8C28  7C 89 23 78 */	mr r9, r4
/* 800BDD2C 000B8C2C  7C 63 03 78 */	or r3, r3, r0
/* 800BDD30 000B8C30  48 00 00 10 */	b lbl_800BDD40
lbl_800BDD34:
/* 800BDD34 000B8C34  38 06 FF E0 */	addi r0, r6, -32
/* 800BDD38 000B8C38  7D 23 06 30 */	sraw r3, r9, r0
/* 800BDD3C 000B8C3C  7C 89 23 78 */	mr r9, r4
lbl_800BDD40:
/* 800BDD40 000B8C40  7D 20 23 78 */	or r0, r9, r4
/* 800BDD44 000B8C44  90 61 00 0C */	stw r3, 0xc(r1)
/* 800BDD48 000B8C48  90 01 00 08 */	stw r0, 8(r1)
lbl_800BDD4C:
/* 800BDD4C 000B8C4C  C8 21 00 08 */	lfd f1, 8(r1)
lbl_800BDD50:
/* 800BDD50 000B8C50  38 21 00 20 */	addi r1, r1, 0x20
/* 800BDD54 000B8C54  4E 80 00 20 */	blr 
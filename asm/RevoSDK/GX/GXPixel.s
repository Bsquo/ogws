.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C1118
lbl_804C1118:
	.incbin "baserom.dol", 0x3C9D58, 0x4
.global lbl_804C111C
lbl_804C111C:
	.incbin "baserom.dol", 0x3C9D5C, 0x4
.global lbl_804C1120
lbl_804C1120:
	.incbin "baserom.dol", 0x3C9D60, 0x8
.global lbl_804C1128
lbl_804C1128:
	.incbin "baserom.dol", 0x3C9D68, 0x8
.global lbl_804C1130
lbl_804C1130:
	.incbin "baserom.dol", 0x3C9D70, 0x8
.global lbl_804C1138
lbl_804C1138:
	.incbin "baserom.dol", 0x3C9D78, 0x8
.global lbl_804C1140
lbl_804C1140:
	.incbin "baserom.dol", 0x3C9D80, 0x8
.global lbl_804C1148
lbl_804C1148:
	.incbin "baserom.dol", 0x3C9D88, 0x8
.global lbl_804C1150
lbl_804C1150:
	.incbin "baserom.dol", 0x3C9D90, 0x8
.global lbl_804C1158
lbl_804C1158:
	.incbin "baserom.dol", 0x3C9D98, 0x4
.global lbl_804C115C
lbl_804C115C:
	.incbin "baserom.dol", 0x3C9D9C, 0x4
.global lbl_804C1160
lbl_804C1160:
	.incbin "baserom.dol", 0x3C9DA0, 0x8

.section .data, "wa"
.balign 0x8
# @LOCAL@GXSetPixelFmt__F11_GXPixelFmt9_GXZFmt16@p2f
.global lbl_8039B7F8
lbl_8039B7F8:
	.incbin "baserom.dol", 0x3978F8, 0x20

.section .text, "ax"
.global GXSetFog
GXSetFog:
/* 800E1C04 000DCB04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E1C08 000DCB08  7C 08 02 A6 */	mflr r0
/* 800E1C0C 000DCB0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E1C10 000DCB10  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E1C14 000DCB14  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800E1C18 000DCB18  39 00 00 00 */	li r8, 0
/* 800E1C1C 000DCB1C  39 20 00 00 */	li r9, 0
/* 800E1C20 000DCB20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E1C24 000DCB24  54 7F 07 7E */	clrlwi r31, r3, 0x1d
/* 800E1C28 000DCB28  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E1C2C 000DCB2C  54 7E EF FF */	rlwinm. r30, r3, 0x1d, 0x1f, 0x1f
/* 800E1C30 000DCB30  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800E1C34 000DCB34  7C 9D 23 78 */	mr r29, r4
/* 800E1C38 000DCB38  93 81 00 20 */	stw r28, 0x20(r1)
/* 800E1C3C 000DCB3C  41 82 00 4C */	beq lbl_800E1C88
/* 800E1C40 000DCB40  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 800E1C44 000DCB44  41 82 00 0C */	beq lbl_800E1C50
/* 800E1C48 000DCB48  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 800E1C4C 000DCB4C  40 82 00 14 */	bne lbl_800E1C60
lbl_800E1C50:
/* 800E1C50 000DCB50  C0 02 96 F8 */	lfs f0, lbl_804C1118-_SDA2_BASE_(r2)
/* 800E1C54 000DCB54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E1C58 000DCB58  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E1C5C 000DCB5C  48 00 01 1C */	b lbl_800E1D78
lbl_800E1C60:
/* 800E1C60 000DCB60  EC C2 08 28 */	fsubs f6, f2, f1
/* 800E1C64 000DCB64  C0 A2 96 FC */	lfs f5, lbl_804C111C-_SDA2_BASE_(r2)
/* 800E1C68 000DCB68  EC 44 18 28 */	fsubs f2, f4, f3
/* 800E1C6C 000DCB6C  EC 01 18 28 */	fsubs f0, f1, f3
/* 800E1C70 000DCB70  EC 65 30 24 */	fdivs f3, f5, f6
/* 800E1C74 000DCB74  EC 23 00 B2 */	fmuls f1, f3, f2
/* 800E1C78 000DCB78  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E1C7C 000DCB7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E1C80 000DCB80  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E1C84 000DCB84  48 00 00 F4 */	b lbl_800E1D78
lbl_800E1C88:
/* 800E1C88 000DCB88  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 800E1C8C 000DCB8C  41 82 00 0C */	beq lbl_800E1C98
/* 800E1C90 000DCB90  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 800E1C94 000DCB94  40 82 00 14 */	bne lbl_800E1CA8
lbl_800E1C98:
/* 800E1C98 000DCB98  C0 62 96 F8 */	lfs f3, lbl_804C1118-_SDA2_BASE_(r2)
/* 800E1C9C 000DCB9C  C0 82 97 00 */	lfs f4, lbl_804C1120-_SDA2_BASE_(r2)
/* 800E1CA0 000DCBA0  FF E0 18 90 */	fmr f31, f3
/* 800E1CA4 000DCBA4  48 00 00 20 */	b lbl_800E1CC4
lbl_800E1CA8:
/* 800E1CA8 000DCBA8  EC 04 18 28 */	fsubs f0, f4, f3
/* 800E1CAC 000DCBAC  EC 42 08 28 */	fsubs f2, f2, f1
/* 800E1CB0 000DCBB0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800E1CB4 000DCBB4  EC 84 00 24 */	fdivs f4, f4, f0
/* 800E1CB8 000DCBB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E1CBC 000DCBBC  EF E1 10 24 */	fdivs f31, f1, f2
/* 800E1CC0 000DCBC0  EC 63 00 24 */	fdivs f3, f3, f0
lbl_800E1CC4:
/* 800E1CC4 000DCBC4  C0 22 97 00 */	lfs f1, lbl_804C1120-_SDA2_BASE_(r2)
/* 800E1CC8 000DCBC8  3B 80 00 00 */	li r28, 0
/* 800E1CCC 000DCBCC  C8 02 97 08 */	lfd f0, lbl_804C1128-_SDA2_BASE_(r2)
/* 800E1CD0 000DCBD0  48 00 00 0C */	b lbl_800E1CDC
lbl_800E1CD4:
/* 800E1CD4 000DCBD4  EC 84 00 72 */	fmuls f4, f4, f1
/* 800E1CD8 000DCBD8  3B 9C 00 01 */	addi r28, r28, 1
lbl_800E1CDC:
/* 800E1CDC 000DCBDC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E1CE0 000DCBE0  41 81 FF F4 */	bgt lbl_800E1CD4
/* 800E1CE4 000DCBE4  C8 02 97 18 */	lfd f0, lbl_804C1138-_SDA2_BASE_(r2)
/* 800E1CE8 000DCBE8  C0 42 97 10 */	lfs f2, lbl_804C1130-_SDA2_BASE_(r2)
/* 800E1CEC 000DCBEC  C0 22 96 F8 */	lfs f1, lbl_804C1118-_SDA2_BASE_(r2)
/* 800E1CF0 000DCBF0  48 00 00 0C */	b lbl_800E1CFC
lbl_800E1CF4:
/* 800E1CF4 000DCBF4  EC 84 00 B2 */	fmuls f4, f4, f2
/* 800E1CF8 000DCBF8  3B 9C FF FF */	addi r28, r28, -1
lbl_800E1CFC:
/* 800E1CFC 000DCBFC  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 800E1D00 000DCC00  7C 00 00 26 */	mfcr r0
/* 800E1D04 000DCC04  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 800E1D08 000DCC08  41 82 00 0C */	beq lbl_800E1D14
/* 800E1D0C 000DCC0C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800E1D10 000DCC10  41 80 FF E4 */	blt lbl_800E1CF4
lbl_800E1D14:
/* 800E1D14 000DCC14  38 1C 00 01 */	addi r0, r28, 1
/* 800E1D18 000DCC18  38 60 00 01 */	li r3, 1
/* 800E1D1C 000DCC1C  7C 63 00 30 */	slw r3, r3, r0
/* 800E1D20 000DCC20  C0 02 97 20 */	lfs f0, lbl_804C1140-_SDA2_BASE_(r2)
/* 800E1D24 000DCC24  3C 00 43 30 */	lis r0, 0x4330
/* 800E1D28 000DCC28  C8 42 97 28 */	lfd f2, lbl_804C1148-_SDA2_BASE_(r2)
/* 800E1D2C 000DCC2C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 800E1D30 000DCC30  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E1D34 000DCC34  EC 20 01 32 */	fmuls f1, f0, f4
/* 800E1D38 000DCC38  90 61 00 14 */	stw r3, 0x14(r1)
/* 800E1D3C 000DCC3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800E1D40 000DCC40  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E1D44 000DCC44  EC 03 00 24 */	fdivs f0, f3, f0
/* 800E1D48 000DCC48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E1D4C 000DCC4C  4B FC FE D1 */	bl __cvt_fp2unsigned
/* 800E1D50 000DCC50  38 1C 00 01 */	addi r0, r28, 1
/* 800E1D54 000DCC54  39 00 00 00 */	li r8, 0
/* 800E1D58 000DCC58  50 68 02 3E */	rlwimi r8, r3, 0, 8, 0x1f
/* 800E1D5C 000DCC5C  39 20 00 00 */	li r9, 0
/* 800E1D60 000DCC60  50 09 06 FE */	rlwimi r9, r0, 0, 0x1b, 0x1f
/* 800E1D64 000DCC64  38 60 00 EF */	li r3, 0xef
/* 800E1D68 000DCC68  38 00 00 F0 */	li r0, 0xf0
/* 800E1D6C 000DCC6C  D3 E1 00 08 */	stfs f31, 8(r1)
/* 800E1D70 000DCC70  50 68 C0 0E */	rlwimi r8, r3, 0x18, 0, 7
/* 800E1D74 000DCC74  50 09 C0 0E */	rlwimi r9, r0, 0x18, 0, 7
lbl_800E1D78:
/* 800E1D78 000DCC78  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800E1D7C 000DCC7C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E1D80 000DCC80  38 A0 00 61 */	li r5, 0x61
/* 800E1D84 000DCC84  38 00 00 EE */	li r0, 0xee
/* 800E1D88 000DCC88  38 C0 00 00 */	li r6, 0
/* 800E1D8C 000DCC8C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E1D90 000DCC90  50 66 A5 7E */	rlwimi r6, r3, 0x14, 0x15, 0x1f
/* 800E1D94 000DCC94  81 41 00 08 */	lwz r10, 8(r1)
/* 800E1D98 000DCC98  50 66 A3 68 */	rlwimi r6, r3, 0x14, 0xd, 0x14
/* 800E1D9C 000DCC9C  38 E0 00 00 */	li r7, 0
/* 800E1DA0 000DCCA0  50 66 A3 18 */	rlwimi r6, r3, 0x14, 0xc, 0xc
/* 800E1DA4 000DCCA4  38 60 00 F1 */	li r3, 0xf1
/* 800E1DA8 000DCCA8  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 800E1DAC 000DCCAC  51 47 A5 7E */	rlwimi r7, r10, 0x14, 0x15, 0x1f
/* 800E1DB0 000DCCB0  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1DB4 000DCCB4  51 47 A3 68 */	rlwimi r7, r10, 0x14, 0xd, 0x14
/* 800E1DB8 000DCCB8  51 47 A3 18 */	rlwimi r7, r10, 0x14, 0xc, 0xc
/* 800E1DBC 000DCCBC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800E1DC0 000DCCC0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1DC4 000DCCC4  53 C7 A2 D6 */	rlwimi r7, r30, 0x14, 0xb, 0xb
/* 800E1DC8 000DCCC8  53 E7 AA 14 */	rlwimi r7, r31, 0x15, 8, 0xa
/* 800E1DCC 000DCCCC  38 C0 00 00 */	li r6, 0
/* 800E1DD0 000DCCD0  91 04 80 00 */	stw r8, -0x8000(r4)
/* 800E1DD4 000DCCD4  50 67 C0 0E */	rlwimi r7, r3, 0x18, 0, 7
/* 800E1DD8 000DCCD8  50 06 C2 3E */	rlwimi r6, r0, 0x18, 8, 0x1f
/* 800E1DDC 000DCCDC  38 00 00 F2 */	li r0, 0xf2
/* 800E1DE0 000DCCE0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1DE4 000DCCE4  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 800E1DE8 000DCCE8  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E1DEC 000DCCEC  38 00 00 00 */	li r0, 0
/* 800E1DF0 000DCCF0  91 24 80 00 */	stw r9, -0x8000(r4)
/* 800E1DF4 000DCCF4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1DF8 000DCCF8  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E1DFC 000DCCFC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1E00 000DCD00  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1E04 000DCD04  B0 03 00 02 */	sth r0, 2(r3)
/* 800E1E08 000DCD08  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800E1E0C 000DCD0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E1E10 000DCD10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E1E14 000DCD14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E1E18 000DCD18  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800E1E1C 000DCD1C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800E1E20 000DCD20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E1E24 000DCD24  7C 08 03 A6 */	mtlr r0
/* 800E1E28 000DCD28  38 21 00 40 */	addi r1, r1, 0x40
/* 800E1E2C 000DCD2C  4E 80 00 20 */	blr 

.global GXInitFogAdjTable
GXInitFogAdjTable:
/* 800E1E30 000DCD30  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800E1E34 000DCD34  7C 08 02 A6 */	mflr r0
/* 800E1E38 000DCD38  90 01 00 84 */	stw r0, 0x84(r1)
/* 800E1E3C 000DCD3C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800E1E40 000DCD40  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 800E1E44 000DCD44  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800E1E48 000DCD48  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 800E1E4C 000DCD4C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 800E1E50 000DCD50  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 800E1E54 000DCD54  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 800E1E58 000DCD58  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 800E1E5C 000DCD5C  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 800E1E60 000DCD60  F3 61 00 38 */	psq_st f27, 56(r1), 0, qr0
/* 800E1E64 000DCD64  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 800E1E68 000DCD68  F3 41 00 28 */	psq_st f26, 40(r1), 0, qr0
/* 800E1E6C 000DCD6C  C8 22 97 30 */	lfd f1, lbl_804C1150-_SDA2_BASE_(r2)
/* 800E1E70 000DCD70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E1E74 000DCD74  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 800E1E78 000DCD78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E1E7C 000DCD7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800E1E80 000DCD80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E1E84 000DCD84  40 82 00 24 */	bne lbl_800E1EA8
/* 800E1E88 000DCD88  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 800E1E8C 000DCD8C  C0 02 96 FC */	lfs f0, lbl_804C111C-_SDA2_BASE_(r2)
/* 800E1E90 000DCD90  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 800E1E94 000DCD94  EC 42 00 28 */	fsubs f2, f2, f0
/* 800E1E98 000DCD98  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E1E9C 000DCD9C  EC 21 10 24 */	fdivs f1, f1, f2
/* 800E1EA0 000DCDA0  EF 41 00 24 */	fdivs f26, f1, f0
/* 800E1EA4 000DCDA4  48 00 00 18 */	b lbl_800E1EBC
lbl_800E1EA8:
/* 800E1EA8 000DCDA8  C0 42 96 FC */	lfs f2, lbl_804C111C-_SDA2_BASE_(r2)
/* 800E1EAC 000DCDAC  C0 25 00 00 */	lfs f1, 0(r5)
/* 800E1EB0 000DCDB0  C0 02 97 38 */	lfs f0, lbl_804C1158-_SDA2_BASE_(r2)
/* 800E1EB4 000DCDB4  EF 42 08 24 */	fdivs f26, f2, f1
/* 800E1EB8 000DCDB8  EC 20 06 B2 */	fmuls f1, f0, f26
lbl_800E1EBC:
/* 800E1EBC 000DCDBC  3F E0 43 30 */	lis r31, 0x4330
/* 800E1EC0 000DCDC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 800E1EC4 000DCDC4  CB 82 97 40 */	lfd f28, lbl_804C1160-_SDA2_BASE_(r2)
/* 800E1EC8 000DCDC8  EF A1 00 72 */	fmuls f29, f1, f1
/* 800E1ECC 000DCDCC  93 E1 00 08 */	stw r31, 8(r1)
/* 800E1ED0 000DCDD0  7C 7E 1B 78 */	mr r30, r3
/* 800E1ED4 000DCDD4  C0 02 97 10 */	lfs f0, lbl_804C1130-_SDA2_BASE_(r2)
/* 800E1ED8 000DCDD8  3B A0 00 00 */	li r29, 0
/* 800E1EDC 000DCDDC  C8 21 00 08 */	lfd f1, 8(r1)
/* 800E1EE0 000DCDE0  C3 C2 96 FC */	lfs f30, lbl_804C111C-_SDA2_BASE_(r2)
/* 800E1EE4 000DCDE4  EC 21 E0 28 */	fsubs f1, f1, f28
/* 800E1EE8 000DCDE8  C3 E2 97 3C */	lfs f31, lbl_804C115C-_SDA2_BASE_(r2)
/* 800E1EEC 000DCDEC  EF 60 08 24 */	fdivs f27, f0, f1
lbl_800E1EF0:
/* 800E1EF0 000DCDF0  38 1D 00 01 */	addi r0, r29, 1
/* 800E1EF4 000DCDF4  93 E1 00 08 */	stw r31, 8(r1)
/* 800E1EF8 000DCDF8  54 00 28 34 */	slwi r0, r0, 5
/* 800E1EFC 000DCDFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E1F00 000DCE00  C8 01 00 08 */	lfd f0, 8(r1)
/* 800E1F04 000DCE04  EC 00 E0 28 */	fsubs f0, f0, f28
/* 800E1F08 000DCE08  EC 00 06 F2 */	fmuls f0, f0, f27
/* 800E1F0C 000DCE0C  EC 00 06 B2 */	fmuls f0, f0, f26
/* 800E1F10 000DCE10  EC 00 00 32 */	fmuls f0, f0, f0
/* 800E1F14 000DCE14  EC 00 E8 24 */	fdivs f0, f0, f29
/* 800E1F18 000DCE18  EC 3E 00 2A */	fadds f1, f30, f0
/* 800E1F1C 000DCE1C  4B FD F1 B5 */	bl sqrt
/* 800E1F20 000DCE20  FC 00 08 18 */	frsp f0, f1
/* 800E1F24 000DCE24  EC 3F 00 32 */	fmuls f1, f31, f0
/* 800E1F28 000DCE28  4B FC FC F5 */	bl __cvt_fp2unsigned
/* 800E1F2C 000DCE2C  3B BD 00 01 */	addi r29, r29, 1
/* 800E1F30 000DCE30  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 800E1F34 000DCE34  28 1D 00 0A */	cmplwi r29, 0xa
/* 800E1F38 000DCE38  B0 1E 00 00 */	sth r0, 0(r30)
/* 800E1F3C 000DCE3C  3B DE 00 02 */	addi r30, r30, 2
/* 800E1F40 000DCE40  41 80 FF B0 */	blt lbl_800E1EF0
/* 800E1F44 000DCE44  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 800E1F48 000DCE48  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800E1F4C 000DCE4C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 800E1F50 000DCE50  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 800E1F54 000DCE54  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 800E1F58 000DCE58  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 800E1F5C 000DCE5C  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 800E1F60 000DCE60  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 800E1F64 000DCE64  E3 61 00 38 */	psq_l f27, 56(r1), 0, qr0
/* 800E1F68 000DCE68  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 800E1F6C 000DCE6C  E3 41 00 28 */	psq_l f26, 40(r1), 0, qr0
/* 800E1F70 000DCE70  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 800E1F74 000DCE74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E1F78 000DCE78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E1F7C 000DCE7C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800E1F80 000DCE80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E1F84 000DCE84  7C 08 03 A6 */	mtlr r0
/* 800E1F88 000DCE88  38 21 00 80 */	addi r1, r1, 0x80
/* 800E1F8C 000DCE8C  4E 80 00 20 */	blr 

.global GXSetFogRangeAdj
GXSetFogRangeAdj:
/* 800E1F90 000DCE90  2C 03 00 00 */	cmpwi r3, 0
/* 800E1F94 000DCE94  41 82 00 E8 */	beq lbl_800E207C
/* 800E1F98 000DCE98  A1 85 00 00 */	lhz r12, 0(r5)
/* 800E1F9C 000DCE9C  39 60 00 00 */	li r11, 0
/* 800E1FA0 000DCEA0  A1 45 00 02 */	lhz r10, 2(r5)
/* 800E1FA4 000DCEA4  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800E1FA8 000DCEA8  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 800E1FAC 000DCEAC  38 00 00 61 */	li r0, 0x61
/* 800E1FB0 000DCEB0  7D 69 5B 78 */	mr r9, r11
/* 800E1FB4 000DCEB4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 800E1FB8 000DCEB8  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 800E1FBC 000DCEBC  38 E0 00 E9 */	li r7, 0xe9
/* 800E1FC0 000DCEC0  7D 28 4B 78 */	mr r8, r9
/* 800E1FC4 000DCEC4  A1 85 00 04 */	lhz r12, 4(r5)
/* 800E1FC8 000DCEC8  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 800E1FCC 000DCECC  39 60 00 00 */	li r11, 0
/* 800E1FD0 000DCED0  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 800E1FD4 000DCED4  91 06 80 00 */	stw r8, -0x8000(r6)
/* 800E1FD8 000DCED8  7D 69 5B 78 */	mr r9, r11
/* 800E1FDC 000DCEDC  A1 45 00 06 */	lhz r10, 6(r5)
/* 800E1FE0 000DCEE0  38 E0 00 EA */	li r7, 0xea
/* 800E1FE4 000DCEE4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 800E1FE8 000DCEE8  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 800E1FEC 000DCEEC  A1 85 00 08 */	lhz r12, 8(r5)
/* 800E1FF0 000DCEF0  7D 28 4B 78 */	mr r8, r9
/* 800E1FF4 000DCEF4  39 60 00 00 */	li r11, 0
/* 800E1FF8 000DCEF8  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 800E1FFC 000DCEFC  A1 45 00 0A */	lhz r10, 0xa(r5)
/* 800E2000 000DCF00  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 800E2004 000DCF04  91 06 80 00 */	stw r8, -0x8000(r6)
/* 800E2008 000DCF08  7D 69 5B 78 */	mr r9, r11
/* 800E200C 000DCF0C  38 E0 00 EB */	li r7, 0xeb
/* 800E2010 000DCF10  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 800E2014 000DCF14  98 06 80 00 */	stb r0, -0x8000(r6)
/* 800E2018 000DCF18  7D 28 4B 78 */	mr r8, r9
/* 800E201C 000DCF1C  A1 85 00 0C */	lhz r12, 0xc(r5)
/* 800E2020 000DCF20  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 800E2024 000DCF24  39 60 00 00 */	li r11, 0
/* 800E2028 000DCF28  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 800E202C 000DCF2C  91 06 80 00 */	stw r8, -0x8000(r6)
/* 800E2030 000DCF30  7D 69 5B 78 */	mr r9, r11
/* 800E2034 000DCF34  A1 45 00 0E */	lhz r10, 0xe(r5)
/* 800E2038 000DCF38  38 E0 00 EC */	li r7, 0xec
/* 800E203C 000DCF3C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 800E2040 000DCF40  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 800E2044 000DCF44  A1 85 00 10 */	lhz r12, 0x10(r5)
/* 800E2048 000DCF48  7D 28 4B 78 */	mr r8, r9
/* 800E204C 000DCF4C  39 60 00 00 */	li r11, 0
/* 800E2050 000DCF50  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 800E2054 000DCF54  A1 45 00 12 */	lhz r10, 0x12(r5)
/* 800E2058 000DCF58  91 06 80 00 */	stw r8, -0x8000(r6)
/* 800E205C 000DCF5C  51 8B 05 3E */	rlwimi r11, r12, 0, 0x14, 0x1f
/* 800E2060 000DCF60  7D 69 5B 78 */	mr r9, r11
/* 800E2064 000DCF64  38 E0 00 ED */	li r7, 0xed
/* 800E2068 000DCF68  51 49 62 26 */	rlwimi r9, r10, 0xc, 8, 0x13
/* 800E206C 000DCF6C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 800E2070 000DCF70  7D 28 4B 78 */	mr r8, r9
/* 800E2074 000DCF74  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 800E2078 000DCF78  91 06 80 00 */	stw r8, -0x8000(r6)
lbl_800E207C:
/* 800E207C 000DCF7C  38 04 01 56 */	addi r0, r4, 0x156
/* 800E2080 000DCF80  38 C0 00 00 */	li r6, 0
/* 800E2084 000DCF84  50 06 05 BE */	rlwimi r6, r0, 0, 0x16, 0x1f
/* 800E2088 000DCF88  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E208C 000DCF8C  38 00 00 61 */	li r0, 0x61
/* 800E2090 000DCF90  38 A0 00 E8 */	li r5, 0xe8
/* 800E2094 000DCF94  50 66 55 6A */	rlwimi r6, r3, 0xa, 0x15, 0x15
/* 800E2098 000DCF98  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E209C 000DCF9C  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 800E20A0 000DCFA0  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E20A4 000DCFA4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E20A8 000DCFA8  38 00 00 00 */	li r0, 0
/* 800E20AC 000DCFAC  B0 03 00 02 */	sth r0, 2(r3)
/* 800E20B0 000DCFB0  4E 80 00 20 */	blr 

.global GXSetBlendMode
GXSetBlendMode:
/* 800E20B4 000DCFB4  81 42 96 48 */	lwz r10, __GXData-_SDA2_BASE_(r2)
/* 800E20B8 000DCFB8  38 03 FF FD */	addi r0, r3, -3
/* 800E20BC 000DCFBC  39 03 FF FE */	addi r8, r3, -2
/* 800E20C0 000DCFC0  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 800E20C4 000DCFC4  7C 00 00 34 */	cntlzw r0, r0
/* 800E20C8 000DCFC8  81 2A 02 20 */	lwz r9, 0x220(r10)
/* 800E20CC 000DCFCC  50 09 35 28 */	rlwimi r9, r0, 6, 0x14, 0x14
/* 800E20D0 000DCFD0  7D 08 00 34 */	cntlzw r8, r8
/* 800E20D4 000DCFD4  38 00 00 61 */	li r0, 0x61
/* 800E20D8 000DCFD8  98 07 80 00 */	stb r0, 0xCC008000@l(r7)
/* 800E20DC 000DCFDC  50 69 07 FE */	rlwimi r9, r3, 0, 0x1f, 0x1f
/* 800E20E0 000DCFE0  51 09 E7 BC */	rlwimi r9, r8, 0x1c, 0x1e, 0x1e
/* 800E20E4 000DCFE4  38 00 00 00 */	li r0, 0
/* 800E20E8 000DCFE8  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 800E20EC 000DCFEC  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 800E20F0 000DCFF0  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 800E20F4 000DCFF4  91 27 80 00 */	stw r9, -0x8000(r7)
/* 800E20F8 000DCFF8  91 2A 02 20 */	stw r9, 0x220(r10)
/* 800E20FC 000DCFFC  B0 0A 00 02 */	sth r0, 2(r10)
/* 800E2100 000DD000  4E 80 00 20 */	blr 

.global GXSetColorUpdate
GXSetColorUpdate:
/* 800E2104 000DD004  80 E2 96 48 */	lwz r7, __GXData-_SDA2_BASE_(r2)
/* 800E2108 000DD008  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E210C 000DD00C  38 A0 00 61 */	li r5, 0x61
/* 800E2110 000DD010  38 00 00 00 */	li r0, 0
/* 800E2114 000DD014  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 800E2118 000DD018  50 66 1F 38 */	rlwimi r6, r3, 3, 0x1c, 0x1c
/* 800E211C 000DD01C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E2120 000DD020  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E2124 000DD024  90 C7 02 20 */	stw r6, 0x220(r7)
/* 800E2128 000DD028  B0 07 00 02 */	sth r0, 2(r7)
/* 800E212C 000DD02C  4E 80 00 20 */	blr 

.global GXSetAlphaUpdate
GXSetAlphaUpdate:
/* 800E2130 000DD030  80 E2 96 48 */	lwz r7, __GXData-_SDA2_BASE_(r2)
/* 800E2134 000DD034  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E2138 000DD038  38 A0 00 61 */	li r5, 0x61
/* 800E213C 000DD03C  38 00 00 00 */	li r0, 0
/* 800E2140 000DD040  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 800E2144 000DD044  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 800E2148 000DD048  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E214C 000DD04C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E2150 000DD050  90 C7 02 20 */	stw r6, 0x220(r7)
/* 800E2154 000DD054  B0 07 00 02 */	sth r0, 2(r7)
/* 800E2158 000DD058  4E 80 00 20 */	blr 

.global GXSetZMode
GXSetZMode:
/* 800E215C 000DD05C  81 22 96 48 */	lwz r9, __GXData-_SDA2_BASE_(r2)
/* 800E2160 000DD060  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800E2164 000DD064  38 E0 00 61 */	li r7, 0x61
/* 800E2168 000DD068  38 00 00 00 */	li r0, 0
/* 800E216C 000DD06C  81 09 02 28 */	lwz r8, 0x228(r9)
/* 800E2170 000DD070  50 68 07 FE */	rlwimi r8, r3, 0, 0x1f, 0x1f
/* 800E2174 000DD074  50 88 0F 3C */	rlwimi r8, r4, 1, 0x1c, 0x1e
/* 800E2178 000DD078  98 E6 80 00 */	stb r7, 0xCC008000@l(r6)
/* 800E217C 000DD07C  50 A8 26 F6 */	rlwimi r8, r5, 4, 0x1b, 0x1b
/* 800E2180 000DD080  91 06 80 00 */	stw r8, -0x8000(r6)
/* 800E2184 000DD084  91 09 02 28 */	stw r8, 0x228(r9)
/* 800E2188 000DD088  B0 09 00 02 */	sth r0, 2(r9)
/* 800E218C 000DD08C  4E 80 00 20 */	blr 

.global GXSetZCompLoc
GXSetZCompLoc:
/* 800E2190 000DD090  80 E2 96 48 */	lwz r7, __GXData-_SDA2_BASE_(r2)
/* 800E2194 000DD094  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E2198 000DD098  38 A0 00 61 */	li r5, 0x61
/* 800E219C 000DD09C  38 00 00 00 */	li r0, 0
/* 800E21A0 000DD0A0  80 C7 02 2C */	lwz r6, 0x22c(r7)
/* 800E21A4 000DD0A4  50 66 36 72 */	rlwimi r6, r3, 6, 0x19, 0x19
/* 800E21A8 000DD0A8  90 C7 02 2C */	stw r6, 0x22c(r7)
/* 800E21AC 000DD0AC  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E21B0 000DD0B0  80 67 02 2C */	lwz r3, 0x22c(r7)
/* 800E21B4 000DD0B4  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E21B8 000DD0B8  B0 07 00 02 */	sth r0, 2(r7)
/* 800E21BC 000DD0BC  4E 80 00 20 */	blr 

.global GXSetPixelFmt
GXSetPixelFmt:
/* 800E21C0 000DD0C0  81 22 96 48 */	lwz r9, __GXData-_SDA2_BASE_(r2)
/* 800E21C4 000DD0C4  3C C0 80 3A */	lis r6, lbl_8039B7F8@ha
/* 800E21C8 000DD0C8  54 67 10 3A */	slwi r7, r3, 2
/* 800E21CC 000DD0CC  38 C6 B7 F8 */	addi r6, r6, lbl_8039B7F8@l
/* 800E21D0 000DD0D0  81 09 02 2C */	lwz r8, 0x22c(r9)
/* 800E21D4 000DD0D4  7C 06 38 2E */	lwzx r0, r6, r7
/* 800E21D8 000DD0D8  7D 05 43 78 */	mr r5, r8
/* 800E21DC 000DD0DC  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 800E21E0 000DD0E0  50 85 1E B8 */	rlwimi r5, r4, 3, 0x1a, 0x1c
/* 800E21E4 000DD0E4  7C 08 28 40 */	cmplw r8, r5
/* 800E21E8 000DD0E8  90 A9 02 2C */	stw r5, 0x22c(r9)
/* 800E21EC 000DD0EC  41 82 00 38 */	beq lbl_800E2224
/* 800E21F0 000DD0F0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E21F4 000DD0F4  38 00 00 61 */	li r0, 0x61
/* 800E21F8 000DD0F8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E21FC 000DD0FC  38 03 FF FE */	addi r0, r3, -2
/* 800E2200 000DD100  7C 04 00 34 */	cntlzw r4, r0
/* 800E2204 000DD104  80 09 02 2C */	lwz r0, 0x22c(r9)
/* 800E2208 000DD108  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800E220C 000DD10C  80 09 02 54 */	lwz r0, 0x254(r9)
/* 800E2210 000DD110  50 80 25 AC */	rlwimi r0, r4, 4, 0x16, 0x16
/* 800E2214 000DD114  90 09 02 54 */	stw r0, 0x254(r9)
/* 800E2218 000DD118  80 09 05 FC */	lwz r0, 0x5fc(r9)
/* 800E221C 000DD11C  60 00 00 04 */	ori r0, r0, 4
/* 800E2220 000DD120  90 09 05 FC */	stw r0, 0x5fc(r9)
lbl_800E2224:
/* 800E2224 000DD124  7C 06 38 2E */	lwzx r0, r6, r7
/* 800E2228 000DD128  28 00 00 04 */	cmplwi r0, 4
/* 800E222C 000DD12C  40 82 00 30 */	bne lbl_800E225C
/* 800E2230 000DD130  38 03 FF FC */	addi r0, r3, -4
/* 800E2234 000DD134  80 89 02 24 */	lwz r4, 0x224(r9)
/* 800E2238 000DD138  50 04 4D 6C */	rlwimi r4, r0, 9, 0x15, 0x16
/* 800E223C 000DD13C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E2240 000DD140  38 00 00 42 */	li r0, 0x42
/* 800E2244 000DD144  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 800E2248 000DD148  90 89 02 24 */	stw r4, 0x224(r9)
/* 800E224C 000DD14C  38 00 00 61 */	li r0, 0x61
/* 800E2250 000DD150  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E2254 000DD154  80 09 02 24 */	lwz r0, 0x224(r9)
/* 800E2258 000DD158  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_800E225C:
/* 800E225C 000DD15C  38 00 00 00 */	li r0, 0
/* 800E2260 000DD160  B0 09 00 02 */	sth r0, 2(r9)
/* 800E2264 000DD164  4E 80 00 20 */	blr 

.global GXSetDither
GXSetDither:
/* 800E2268 000DD168  80 E2 96 48 */	lwz r7, __GXData-_SDA2_BASE_(r2)
/* 800E226C 000DD16C  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E2270 000DD170  38 A0 00 61 */	li r5, 0x61
/* 800E2274 000DD174  38 00 00 00 */	li r0, 0
/* 800E2278 000DD178  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 800E227C 000DD17C  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 800E2280 000DD180  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E2284 000DD184  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E2288 000DD188  90 C7 02 20 */	stw r6, 0x220(r7)
/* 800E228C 000DD18C  B0 07 00 02 */	sth r0, 2(r7)
/* 800E2290 000DD190  4E 80 00 20 */	blr 

.global GXSetDstAlpha
GXSetDstAlpha:
/* 800E2294 000DD194  81 02 96 48 */	lwz r8, __GXData-_SDA2_BASE_(r2)
/* 800E2298 000DD198  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E229C 000DD19C  38 C0 00 61 */	li r6, 0x61
/* 800E22A0 000DD1A0  38 00 00 00 */	li r0, 0
/* 800E22A4 000DD1A4  80 E8 02 24 */	lwz r7, 0x224(r8)
/* 800E22A8 000DD1A8  50 87 06 3E */	rlwimi r7, r4, 0, 0x18, 0x1f
/* 800E22AC 000DD1AC  50 67 45 EE */	rlwimi r7, r3, 8, 0x17, 0x17
/* 800E22B0 000DD1B0  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 800E22B4 000DD1B4  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 800E22B8 000DD1B8  90 E8 02 24 */	stw r7, 0x224(r8)
/* 800E22BC 000DD1BC  B0 08 00 02 */	sth r0, 2(r8)
/* 800E22C0 000DD1C0  4E 80 00 20 */	blr 

.global GXSetFieldMask
GXSetFieldMask:
/* 800E22C4 000DD1C4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E22C8 000DD1C8  38 00 00 61 */	li r0, 0x61
/* 800E22CC 000DD1CC  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800E22D0 000DD1D0  38 00 00 44 */	li r0, 0x44
/* 800E22D4 000DD1D4  38 C0 00 00 */	li r6, 0
/* 800E22D8 000DD1D8  50 86 07 FE */	rlwimi r6, r4, 0, 0x1f, 0x1f
/* 800E22DC 000DD1DC  50 66 0F BC */	rlwimi r6, r3, 1, 0x1e, 0x1e
/* 800E22E0 000DD1E0  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E22E4 000DD1E4  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 800E22E8 000DD1E8  38 00 00 00 */	li r0, 0
/* 800E22EC 000DD1EC  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 800E22F0 000DD1F0  B0 03 00 02 */	sth r0, 2(r3)
/* 800E22F4 000DD1F4  4E 80 00 20 */	blr 

.global GXSetFieldMode
GXSetFieldMode:
/* 800E22F8 000DD1F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E22FC 000DD1FC  7C 08 02 A6 */	mflr r0
/* 800E2300 000DD200  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800E2304 000DD204  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2308 000DD208  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E230C 000DD20C  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 800E2310 000DD210  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E2314 000DD214  3B C0 00 61 */	li r30, 0x61
/* 800E2318 000DD218  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E231C 000DD21C  7C 7D 1B 78 */	mr r29, r3
/* 800E2320 000DD220  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 800E2324 000DD224  50 80 B2 52 */	rlwimi r0, r4, 0x16, 9, 9
/* 800E2328 000DD228  90 05 00 7C */	stw r0, 0x7c(r5)
/* 800E232C 000DD22C  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 800E2330 000DD230  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 800E2334 000DD234  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 800E2338 000DD238  4B FF F2 29 */	bl __GXFlushTextureState
/* 800E233C 000DD23C  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 800E2340 000DD240  67 A0 68 00 */	oris r0, r29, 0x6800
/* 800E2344 000DD244  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 800E2348 000DD248  4B FF F2 19 */	bl __GXFlushTextureState
/* 800E234C 000DD24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E2350 000DD250  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E2354 000DD254  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E2358 000DD258  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E235C 000DD25C  7C 08 03 A6 */	mtlr r0
/* 800E2360 000DD260  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2364 000DD264  4E 80 00 20 */	blr 
.include "macros.inc"

# .text1 = .text

.section .text, "ax"  # 0x800076E0 - 0x80355080

.global func_8001E0FC
func_8001E0FC:
/* 8001E0FC 00018FFC  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8001E100 00019000  7C 08 02 A6 */	mflr r0
/* 8001E104 00019004  90 01 02 14 */	stw r0, 0x214(r1)
/* 8001E108 00019008  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 8001E10C 0001900C  F3 E1 02 08 */	psq_st f31, 520(r1), 0, qr0
/* 8001E110 00019010  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8001E114 00019014  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, qr0
/* 8001E118 00019018  DB A1 01 E0 */	stfd f29, 0x1e0(r1)
/* 8001E11C 0001901C  F3 A1 01 E8 */	psq_st f29, 488(r1), 0, qr0
/* 8001E120 00019020  DB 81 01 D0 */	stfd f28, 0x1d0(r1)
/* 8001E124 00019024  F3 81 01 D8 */	psq_st f28, 472(r1), 0, qr0
/* 8001E128 00019028  DB 61 01 C0 */	stfd f27, 0x1c0(r1)
/* 8001E12C 0001902C  F3 61 01 C8 */	psq_st f27, 456(r1), 0, qr0
/* 8001E130 00019030  DB 41 01 B0 */	stfd f26, 0x1b0(r1)
/* 8001E134 00019034  F3 41 01 B8 */	psq_st f26, 440(r1), 0, qr0
/* 8001E138 00019038  DB 21 01 A0 */	stfd f25, 0x1a0(r1)
/* 8001E13C 0001903C  F3 21 01 A8 */	psq_st f25, 424(r1), 0, qr0
/* 8001E140 00019040  DB 01 01 90 */	stfd f24, 0x190(r1)
/* 8001E144 00019044  F3 01 01 98 */	psq_st f24, 408(r1), 0, qr0
/* 8001E148 00019048  DA E1 01 80 */	stfd f23, 0x180(r1)
/* 8001E14C 0001904C  F2 E1 01 88 */	.4byte 0xF2E10188
/* 8001E150 00019050  DA C1 01 70 */	stfd f22, 0x170(r1)
/* 8001E154 00019054  F2 C1 01 78 */	psq_st f22, 376(r1), 0, qr0
/* 8001E158 00019058  DA A1 01 60 */	stfd f21, 0x160(r1)
/* 8001E15C 0001905C  F2 A1 01 68 */	psq_st f21, 360(r1), 0, qr0
/* 8001E160 00019060  DA 81 01 50 */	stfd f20, 0x150(r1)
/* 8001E164 00019064  F2 81 01 58 */	.4byte 0xF2810158
/* 8001E168 00019068  DA 61 01 40 */	stfd f19, 0x140(r1)
/* 8001E16C 0001906C  F2 61 01 48 */	.4byte 0xF2610148
/* 8001E170 00019070  DA 41 01 30 */	stfd f18, 0x130(r1)
/* 8001E174 00019074  F2 41 01 38 */	psq_st f18, 312(r1), 0, qr0
/* 8001E178 00019078  DA 21 01 20 */	stfd f17, 0x120(r1)
/* 8001E17C 0001907C  F2 21 01 28 */	psq_st f17, 296(r1), 0, qr0
/* 8001E180 00019080  DA 01 01 10 */	stfd f16, 0x110(r1)
/* 8001E184 00019084  F2 01 01 18 */	.4byte 0xF2010118
/* 8001E188 00019088  D9 E1 01 00 */	stfd f15, 0x100(r1)
/* 8001E18C 0001908C  F1 E1 01 08 */	.4byte 0xF1E10108
/* 8001E190 00019090  D9 C1 00 F0 */	stfd f14, 0xf0(r1)
/* 8001E194 00019094  F1 C1 00 F8 */	psq_st f14, 248(r1), 0, qr0
/* 8001E198 00019098  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8001E19C 0001909C  48 09 3B 7D */	bl func_800B1D18
/* 8001E1A0 000190A0  3C 00 43 30 */	lis r0, 0x4330
/* 8001E1A4 000190A4  FF 20 08 90 */	fmr f25, f1
/* 8001E1A8 000190A8  2C 06 00 01 */	cmpwi r6, 1
/* 8001E1AC 000190AC  90 01 00 98 */	stw r0, 0x98(r1)
/* 8001E1B0 000190B0  7C 7B 1B 78 */	mr r27, r3
/* 8001E1B4 000190B4  7C 9C 23 78 */	mr r28, r4
/* 8001E1B8 000190B8  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8001E1BC 000190BC  7C BD 2B 78 */	mr r29, r5
/* 8001E1C0 000190C0  7C D6 33 78 */	mr r22, r6
/* 8001E1C4 000190C4  7C F0 3B 78 */	mr r16, r7
/* 8001E1C8 000190C8  7D 11 43 78 */	mr r17, r8
/* 8001E1CC 000190CC  7D 3E 4B 78 */	mr r30, r9
/* 8001E1D0 000190D0  7D 5F 53 78 */	mr r31, r10
/* 8001E1D4 000190D4  41 80 07 74 */	blt lbl_8001E948
/* 8001E1D8 000190D8  C0 28 00 04 */	lfs f1, 4(r8)
/* 8001E1DC 000190DC  C0 02 82 28 */	lfs f0, lbl_804BFC48-_SDA2_BASE_(r2)
/* 8001E1E0 000190E0  C3 E8 00 00 */	lfs f31, 0(r8)
/* 8001E1E4 000190E4  ED C1 00 24 */	fdivs f14, f1, f0
/* 8001E1E8 000190E8  C0 02 82 2C */	lfs f0, lbl_804BFC4C-_SDA2_BASE_(r2)
/* 8001E1EC 000190EC  FC 20 FA 10 */	fabs f1, f31
/* 8001E1F0 000190F0  FC 20 08 18 */	frsp f1, f1
/* 8001E1F4 000190F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001E1F8 000190F8  40 81 00 08 */	ble lbl_8001E200
/* 8001E1FC 000190FC  48 00 00 08 */	b lbl_8001E204
lbl_8001E200:
/* 8001E200 00019100  FF E0 00 90 */	fmr f31, f0
lbl_8001E204:
/* 8001E204 00019104  54 E0 01 8D */	rlwinm. r0, r7, 0, 6, 6
/* 8001E208 00019108  41 82 00 10 */	beq lbl_8001E218
/* 8001E20C 0001910C  FF A0 F8 90 */	fmr f29, f31
/* 8001E210 00019110  FF 80 F8 90 */	fmr f28, f31
/* 8001E214 00019114  48 00 00 44 */	b lbl_8001E258
lbl_8001E218:
/* 8001E218 00019118  C3 A8 00 10 */	lfs f29, 0x10(r8)
/* 8001E21C 0001911C  C0 02 82 2C */	lfs f0, lbl_804BFC4C-_SDA2_BASE_(r2)
/* 8001E220 00019120  FC 20 EA 10 */	fabs f1, f29
/* 8001E224 00019124  FC 20 08 18 */	frsp f1, f1
/* 8001E228 00019128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001E22C 0001912C  40 81 00 08 */	ble lbl_8001E234
/* 8001E230 00019130  48 00 00 08 */	b lbl_8001E238
lbl_8001E234:
/* 8001E234 00019134  FF A0 00 90 */	fmr f29, f0
lbl_8001E238:
/* 8001E238 00019138  C3 88 00 14 */	lfs f28, 0x14(r8)
/* 8001E23C 0001913C  C0 02 82 2C */	lfs f0, lbl_804BFC4C-_SDA2_BASE_(r2)
/* 8001E240 00019140  FC 20 E2 10 */	fabs f1, f28
/* 8001E244 00019144  FC 20 08 18 */	frsp f1, f1
/* 8001E248 00019148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001E24C 0001914C  40 81 00 08 */	ble lbl_8001E254
/* 8001E250 00019150  48 00 00 08 */	b lbl_8001E258
lbl_8001E254:
/* 8001E254 00019154  FF 80 00 90 */	fmr f28, f0
lbl_8001E258:
/* 8001E258 00019158  54 E0 03 5B */	rlwinm. r0, r7, 0, 0xd, 0xd
/* 8001E25C 0001915C  C3 68 00 08 */	lfs f27, 8(r8)
/* 8001E260 00019160  40 82 00 50 */	bne lbl_8001E2B0
/* 8001E264 00019164  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 8001E268 00019168  80 A4 00 EC */	lwz r5, 0xec(r4)
/* 8001E26C 0001916C  38 03 43 FD */	addi r0, r3, 0x000343FD@l
/* 8001E270 00019170  C8 82 82 60 */	lfd f4, lbl_804BFC80-_SDA2_BASE_(r2)
/* 8001E274 00019174  7C 65 01 D6 */	mullw r3, r5, r0
/* 8001E278 00019178  C0 42 82 30 */	lfs f2, lbl_804BFC50-_SDA2_BASE_(r2)
/* 8001E27C 0001917C  C0 22 82 38 */	lfs f1, lbl_804BFC58-_SDA2_BASE_(r2)
/* 8001E280 00019180  C0 02 82 34 */	lfs f0, lbl_804BFC54-_SDA2_BASE_(r2)
/* 8001E284 00019184  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001E288 00019188  38 63 9E C3 */	addi r3, r3, -24893
/* 8001E28C 0001918C  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001E290 00019190  90 64 00 EC */	stw r3, 0xec(r4)
/* 8001E294 00019194  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E298 00019198  C8 61 00 98 */	lfd f3, 0x98(r1)
/* 8001E29C 0001919C  EC 63 20 28 */	fsubs f3, f3, f4
/* 8001E2A0 000191A0  EC 43 10 24 */	fdivs f2, f3, f2
/* 8001E2A4 000191A4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8001E2A8 000191A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001E2AC 000191AC  EF 7B 00 2A */	fadds f27, f27, f0
lbl_8001E2B0:
/* 8001E2B0 000191B0  54 E0 03 9D */	rlwinm. r0, r7, 0, 0xe, 0xe
/* 8001E2B4 000191B4  41 82 03 BC */	beq lbl_8001E670
/* 8001E2B8 000191B8  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 8001E2BC 000191BC  54 C3 08 3C */	slwi r3, r6, 1
/* 8001E2C0 000191C0  C0 08 00 08 */	lfs f0, 8(r8)
/* 8001E2C4 000191C4  3A A3 00 01 */	addi r21, r3, 1
/* 8001E2C8 000191C8  C8 42 82 40 */	lfd f2, lbl_804BFC60-_SDA2_BASE_(r2)
/* 8001E2CC 000191CC  3A 80 00 00 */	li r20, 0
/* 8001E2D0 000191D0  EF 41 00 28 */	fsubs f26, f1, f0
/* 8001E2D4 000191D4  3A 60 00 01 */	li r19, 1
/* 8001E2D8 000191D8  3A 40 00 00 */	li r18, 0
/* 8001E2DC 000191DC  3A 20 00 00 */	li r17, 0
/* 8001E2E0 000191E0  FC 20 D0 90 */	fmr f1, f26
/* 8001E2E4 000191E4  48 0A 2B 99 */	bl func_800C0E7C
/* 8001E2E8 000191E8  FC 20 08 18 */	frsp f1, f1
/* 8001E2EC 000191EC  C0 02 82 48 */	lfs f0, lbl_804BFC68-_SDA2_BASE_(r2)
/* 8001E2F0 000191F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001E2F4 000191F4  41 80 00 10 */	blt lbl_8001E304
/* 8001E2F8 000191F8  C0 02 82 4C */	lfs f0, lbl_804BFC6C-_SDA2_BASE_(r2)
/* 8001E2FC 000191FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001E300 00019200  40 81 00 08 */	ble lbl_8001E308
lbl_8001E304:
/* 8001E304 00019204  3A 20 00 01 */	li r17, 1
lbl_8001E308:
/* 8001E308 00019208  56 C0 10 3A */	slwi r0, r22, 2
/* 8001E30C 0001920C  C2 42 82 54 */	lfs f18, lbl_804BFC74-_SDA2_BASE_(r2)
/* 8001E310 00019210  7C 96 01 D6 */	mullw r4, r22, r0
/* 8001E314 00019214  C0 02 82 5C */	lfs f0, lbl_804BFC7C-_SDA2_BASE_(r2)
/* 8001E318 00019218  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 8001E31C 0001921C  EE 32 70 28 */	fsubs f17, f18, f14
/* 8001E320 00019220  38 15 FF FF */	addi r0, r21, -1
/* 8001E324 00019224  CA E2 82 68 */	lfd f23, lbl_804BFC88-_SDA2_BASE_(r2)
/* 8001E328 00019228  56 17 01 CE */	rlwinm r23, r16, 0, 7, 7
/* 8001E32C 0001922C  C2 C2 82 38 */	lfs f22, lbl_804BFC58-_SDA2_BASE_(r2)
/* 8001E330 00019230  C2 A2 82 50 */	lfs f21, lbl_804BFC70-_SDA2_BASE_(r2)
/* 8001E334 00019234  3A C4 00 02 */	addi r22, r4, 2
/* 8001E338 00019238  CA 82 82 60 */	lfd f20, lbl_804BFC80-_SDA2_BASE_(r2)
/* 8001E33C 0001923C  6C 19 80 00 */	xoris r25, r0, 0x8000
/* 8001E340 00019240  C2 62 82 30 */	lfs f19, lbl_804BFC50-_SDA2_BASE_(r2)
/* 8001E344 00019244  3B 43 43 FD */	addi r26, r3, 0x000343FD@l
/* 8001E348 00019248  C2 02 82 58 */	lfs f16, lbl_804BFC78-_SDA2_BASE_(r2)
/* 8001E34C 0001924C  3A 00 00 00 */	li r16, 0
/* 8001E350 00019250  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8001E354 00019254  3B 00 00 00 */	li r24, 0
/* 8001E358 00019258  48 00 03 0C */	b lbl_8001E664
lbl_8001E35C:
/* 8001E35C 0001925C  6E 80 80 00 */	xoris r0, r20, 0x8000
/* 8001E360 00019260  93 21 00 9C */	stw r25, 0x9c(r1)
/* 8001E364 00019264  2C 13 00 01 */	cmpwi r19, 1
/* 8001E368 00019268  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001E36C 0001926C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E370 00019270  C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 8001E374 00019274  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8001E378 00019278  EC 21 B8 28 */	fsubs f1, f1, f23
/* 8001E37C 0001927C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8001E380 00019280  EC 16 00 32 */	fmuls f0, f22, f0
/* 8001E384 00019284  EF 15 00 2A */	fadds f24, f21, f0
/* 8001E388 00019288  40 82 00 0C */	bne lbl_8001E394
/* 8001E38C 0001928C  FF C0 D8 90 */	fmr f30, f27
/* 8001E390 00019290  48 00 00 6C */	b lbl_8001E3FC
lbl_8001E394:
/* 8001E394 00019294  2C 11 00 00 */	cmpwi r17, 0
/* 8001E398 00019298  41 82 00 34 */	beq lbl_8001E3CC
/* 8001E39C 0001929C  6E 43 80 00 */	xoris r3, r18, 0x8000
/* 8001E3A0 000192A0  6E 60 80 00 */	xoris r0, r19, 0x8000
/* 8001E3A4 000192A4  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8001E3A8 000192A8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E3AC 000192AC  C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 8001E3B0 000192B0  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E3B4 000192B4  EC 21 B8 28 */	fsubs f1, f1, f23
/* 8001E3B8 000192B8  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8001E3BC 000192BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8001E3C0 000192C0  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8001E3C4 000192C4  EF DB 00 2A */	fadds f30, f27, f0
/* 8001E3C8 000192C8  48 00 00 34 */	b lbl_8001E3FC
lbl_8001E3CC:
/* 8001E3CC 000192CC  38 13 FF FF */	addi r0, r19, -1
/* 8001E3D0 000192D0  6E 43 80 00 */	xoris r3, r18, 0x8000
/* 8001E3D4 000192D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001E3D8 000192D8  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8001E3DC 000192DC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E3E0 000192E0  C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 8001E3E4 000192E4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E3E8 000192E8  EC 21 B8 28 */	fsubs f1, f1, f23
/* 8001E3EC 000192EC  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8001E3F0 000192F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8001E3F4 000192F4  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8001E3F8 000192F8  EF DB 00 2A */	fadds f30, f27, f0
lbl_8001E3FC:
/* 8001E3FC 000192FC  3A 52 00 01 */	addi r18, r18, 1
/* 8001E400 00019300  7C 12 98 00 */	cmpw r18, r19
/* 8001E404 00019304  40 82 00 44 */	bne lbl_8001E448
/* 8001E408 00019308  3B 18 00 02 */	addi r24, r24, 2
/* 8001E40C 0001930C  3A 40 00 00 */	li r18, 0
/* 8001E410 00019310  7C 18 A8 00 */	cmpw r24, r21
/* 8001E414 00019314  3A 94 00 01 */	addi r20, r20, 1
/* 8001E418 00019318  40 80 00 1C */	bge lbl_8001E434
/* 8001E41C 0001931C  2C 13 00 01 */	cmpwi r19, 1
/* 8001E420 00019320  38 13 00 03 */	addi r0, r19, 3
/* 8001E424 00019324  41 82 00 08 */	beq lbl_8001E42C
/* 8001E428 00019328  38 13 00 04 */	addi r0, r19, 4
lbl_8001E42C:
/* 8001E42C 0001932C  7C 13 03 78 */	mr r19, r0
/* 8001E430 00019330  48 00 00 18 */	b lbl_8001E448
lbl_8001E434:
/* 8001E434 00019334  2C 13 00 04 */	cmpwi r19, 4
/* 8001E438 00019338  38 00 00 01 */	li r0, 1
/* 8001E43C 0001933C  41 82 00 08 */	beq lbl_8001E444
/* 8001E440 00019340  38 13 FF FC */	addi r0, r19, -4
lbl_8001E444:
/* 8001E444 00019344  7C 13 03 78 */	mr r19, r0
lbl_8001E448:
/* 8001E448 00019348  80 1C 00 EC */	lwz r0, 0xec(r28)
/* 8001E44C 0001934C  2C 17 00 00 */	cmpwi r23, 0
/* 8001E450 00019350  7C 60 D1 D6 */	mullw r3, r0, r26
/* 8001E454 00019354  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001E458 00019358  38 63 9E C3 */	addi r3, r3, -24893
/* 8001E45C 0001935C  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001E460 00019360  90 7C 00 EC */	stw r3, 0xec(r28)
/* 8001E464 00019364  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001E468 00019368  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8001E46C 0001936C  EC 00 A0 28 */	fsubs f0, f0, f20
/* 8001E470 00019370  EC 20 98 24 */	fdivs f1, f0, f19
/* 8001E474 00019374  41 82 00 10 */	beq lbl_8001E484
/* 8001E478 00019378  EC 01 00 72 */	fmuls f0, f1, f1
/* 8001E47C 0001937C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001E480 00019380  EC 32 00 28 */	fsubs f1, f18, f0
lbl_8001E484:
/* 8001E484 00019384  EC 01 04 72 */	fmuls f0, f1, f17
/* 8001E488 00019388  FC 20 F0 90 */	fmr f1, f30
/* 8001E48C 0001938C  ED EE 00 2A */	fadds f15, f14, f0
/* 8001E490 00019390  48 0A 28 91 */	bl func_800C0D20
/* 8001E494 00019394  FC 00 08 18 */	frsp f0, f1
/* 8001E498 00019398  D2 01 00 6C */	stfs f16, 0x6c(r1)
/* 8001E49C 0001939C  FC 20 F0 90 */	fmr f1, f30
/* 8001E4A0 000193A0  FC 00 00 50 */	fneg f0, f0
/* 8001E4A4 000193A4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8001E4A8 000193A8  48 0A 23 71 */	bl func_800C0818
/* 8001E4AC 000193AC  FC 00 08 18 */	frsp f0, f1
/* 8001E4B0 000193B0  FC 20 C0 90 */	fmr f1, f24
/* 8001E4B4 000193B4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8001E4B8 000193B8  48 0A 23 61 */	bl func_800C0818
/* 8001E4BC 000193BC  FC 60 08 18 */	frsp f3, f1
/* 8001E4C0 000193C0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8001E4C4 000193C4  EC 5F 03 F2 */	fmuls f2, f31, f15
/* 8001E4C8 000193C8  FC 20 C0 90 */	fmr f1, f24
/* 8001E4CC 000193CC  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8001E4D0 000193D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8001E4D4 000193D4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8001E4D8 000193D8  48 0A 28 49 */	bl func_800C0D20
/* 8001E4DC 000193DC  FC 00 08 18 */	frsp f0, f1
/* 8001E4E0 000193E0  EC 5D 03 F2 */	fmuls f2, f29, f15
/* 8001E4E4 000193E4  FC 20 C0 90 */	fmr f1, f24
/* 8001E4E8 000193E8  FC 00 00 50 */	fneg f0, f0
/* 8001E4EC 000193EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001E4F0 000193F0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8001E4F4 000193F4  48 0A 23 25 */	bl func_800C0818
/* 8001E4F8 000193F8  FC 60 08 18 */	frsp f3, f1
/* 8001E4FC 000193FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8001E500 00019400  EC 5C 03 F2 */	fmuls f2, f28, f15
/* 8001E504 00019404  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8001E508 00019408  FC 10 00 00 */	fcmpu cr0, f16, f0
/* 8001E50C 0001940C  EC 02 00 F2 */	fmuls f0, f2, f3
/* 8001E510 00019410  EC 21 00 32 */	fmuls f1, f1, f0
/* 8001E514 00019414  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8001E518 00019418  40 82 00 18 */	bne lbl_8001E530
/* 8001E51C 0001941C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8001E520 00019420  FC 10 00 00 */	fcmpu cr0, f16, f0
/* 8001E524 00019424  40 82 00 0C */	bne lbl_8001E530
/* 8001E528 00019428  FC 10 08 00 */	fcmpu cr0, f16, f1
/* 8001E52C 0001942C  41 82 00 14 */	beq lbl_8001E540
lbl_8001E530:
/* 8001E530 00019430  38 61 00 8C */	addi r3, r1, 0x8c
/* 8001E534 00019434  38 81 00 74 */	addi r4, r1, 0x74
/* 8001E538 00019438  48 0C 9F DD */	bl func_800E8514
/* 8001E53C 0001943C  48 00 00 10 */	b lbl_8001E54C
lbl_8001E540:
/* 8001E540 00019440  D2 01 00 7C */	stfs f16, 0x7c(r1)
/* 8001E544 00019444  D2 01 00 78 */	stfs f16, 0x78(r1)
/* 8001E548 00019448  D2 01 00 74 */	stfs f16, 0x74(r1)
lbl_8001E54C:
/* 8001E54C 0001944C  FC 20 C0 90 */	fmr f1, f24
/* 8001E550 00019450  48 0A 22 C9 */	bl func_800C0818
/* 8001E554 00019454  FC 00 08 18 */	frsp f0, f1
/* 8001E558 00019458  FC 00 80 40 */	fcmpo cr0, f0, f16
/* 8001E55C 0001945C  40 80 00 1C */	bge lbl_8001E578
/* 8001E560 00019460  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8001E564 00019464  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8001E568 00019468  FC 20 08 50 */	fneg f1, f1
/* 8001E56C 0001946C  FC 00 00 50 */	fneg f0, f0
/* 8001E570 00019470  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8001E574 00019474  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_8001E578:
/* 8001E578 00019478  38 E1 00 74 */	addi r7, r1, 0x74
/* 8001E57C 0001947C  7F 63 DB 78 */	mr r3, r27
/* 8001E580 00019480  7F 85 E3 78 */	mr r5, r28
/* 8001E584 00019484  38 81 00 80 */	addi r4, r1, 0x80
/* 8001E588 00019488  7C E8 3B 78 */	mr r8, r7
/* 8001E58C 0001948C  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8001E590 00019490  39 21 00 68 */	addi r9, r1, 0x68
/* 8001E594 00019494  4B FF E5 F1 */	bl func_8001CB84
/* 8001E598 00019498  80 1C 00 EC */	lwz r0, 0xec(r28)
/* 8001E59C 0001949C  FC 20 C8 90 */	fmr f1, f25
/* 8001E5A0 000194A0  7F 63 DB 78 */	mr r3, r27
/* 8001E5A4 000194A4  7F C4 F3 78 */	mr r4, r30
/* 8001E5A8 000194A8  7C C0 D1 D6 */	mullw r6, r0, r26
/* 8001E5AC 000194AC  7F 85 E3 78 */	mr r5, r28
/* 8001E5B0 000194B0  3C C6 00 27 */	addis r6, r6, 0x27
/* 8001E5B4 000194B4  38 C6 9E C3 */	addi r6, r6, -24893
/* 8001E5B8 000194B8  54 C0 84 3E */	srwi r0, r6, 0x10
/* 8001E5BC 000194BC  90 DC 00 EC */	stw r6, 0xec(r28)
/* 8001E5C0 000194C0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E5C4 000194C4  81 41 00 80 */	lwz r10, 0x80(r1)
/* 8001E5C8 000194C8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E5CC 000194CC  81 21 00 84 */	lwz r9, 0x84(r1)
/* 8001E5D0 000194D0  EC 00 A0 28 */	fsubs f0, f0, f20
/* 8001E5D4 000194D4  81 01 00 88 */	lwz r8, 0x88(r1)
/* 8001E5D8 000194D8  80 E1 00 8C */	lwz r7, 0x8c(r1)
/* 8001E5DC 000194DC  80 C1 00 90 */	lwz r6, 0x90(r1)
/* 8001E5E0 000194E0  EF 00 98 24 */	fdivs f24, f0, f19
/* 8001E5E4 000194E4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8001E5E8 000194E8  91 41 00 20 */	stw r10, 0x20(r1)
/* 8001E5EC 000194EC  91 21 00 24 */	stw r9, 0x24(r1)
/* 8001E5F0 000194F0  91 01 00 28 */	stw r8, 0x28(r1)
/* 8001E5F4 000194F4  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8001E5F8 000194F8  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8001E5FC 000194FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001E600 00019500  4B FF EA A1 */	bl func_8001D0A0
/* 8001E604 00019504  88 1C 00 67 */	lbz r0, 0x67(r28)
/* 8001E608 00019508  7C 64 1B 78 */	mr r4, r3
/* 8001E60C 0001950C  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 8001E610 00019510  7F A3 EB 78 */	mr r3, r29
/* 8001E614 00019514  7C 00 07 74 */	extsb r0, r0
/* 8001E618 00019518  7F E7 FB 78 */	mr r7, r31
/* 8001E61C 0001951C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001E620 00019520  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8001E624 00019524  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001E628 00019528  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8001E62C 0001952C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8001E630 00019530  38 C1 00 20 */	addi r6, r1, 0x20
/* 8001E634 00019534  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8001E638 00019538  39 1C 00 FC */	addi r8, r28, 0xfc
/* 8001E63C 0001953C  81 3C 00 F8 */	lwz r9, 0xf8(r28)
/* 8001E640 00019540  EC 20 B8 28 */	fsubs f1, f0, f23
/* 8001E644 00019544  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8001E648 00019548  A1 5C 00 E8 */	lhz r10, 0xe8(r28)
/* 8001E64C 0001954C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001E650 00019550  EC 00 06 32 */	fmuls f0, f0, f24
/* 8001E654 00019554  EC 32 00 2A */	fadds f1, f18, f0
/* 8001E658 00019558  7D 89 03 A6 */	mtctr r12
/* 8001E65C 0001955C  4E 80 04 21 */	bctrl 
/* 8001E660 00019560  3A 10 00 01 */	addi r16, r16, 1
lbl_8001E664:
/* 8001E664 00019564  7C 10 B0 00 */	cmpw r16, r22
/* 8001E668 00019568  41 80 FC F4 */	blt lbl_8001E35C
/* 8001E66C 0001956C  48 00 02 DC */	b lbl_8001E948
lbl_8001E670:
/* 8001E670 00019570  3C 60 00 03 */	lis r3, 0x000343FD@ha
/* 8001E674 00019574  CA 02 82 60 */	lfd f16, lbl_804BFC80-_SDA2_BASE_(r2)
/* 8001E678 00019578  C2 22 82 30 */	lfs f17, lbl_804BFC50-_SDA2_BASE_(r2)
/* 8001E67C 0001957C  54 F9 01 CE */	rlwinm r25, r7, 0, 7, 7
/* 8001E680 00019580  C2 42 82 28 */	lfs f18, lbl_804BFC48-_SDA2_BASE_(r2)
/* 8001E684 00019584  3B 43 43 FD */	addi r26, r3, 0x000343FD@l
/* 8001E688 00019588  C2 62 82 54 */	lfs f19, lbl_804BFC74-_SDA2_BASE_(r2)
/* 8001E68C 0001958C  3A 00 00 00 */	li r16, 0
/* 8001E690 00019590  C2 82 82 38 */	lfs f20, lbl_804BFC58-_SDA2_BASE_(r2)
/* 8001E694 00019594  C2 A2 82 50 */	lfs f21, lbl_804BFC70-_SDA2_BASE_(r2)
/* 8001E698 00019598  C2 C2 82 58 */	lfs f22, lbl_804BFC78-_SDA2_BASE_(r2)
/* 8001E69C 0001959C  CA E2 82 68 */	lfd f23, lbl_804BFC88-_SDA2_BASE_(r2)
/* 8001E6A0 000195A0  C3 02 82 5C */	lfs f24, lbl_804BFC7C-_SDA2_BASE_(r2)
/* 8001E6A4 000195A4  48 00 02 9C */	b lbl_8001E940
lbl_8001E6A8:
/* 8001E6A8 000195A8  80 1C 00 EC */	lwz r0, 0xec(r28)
/* 8001E6AC 000195AC  2C 19 00 00 */	cmpwi r25, 0
/* 8001E6B0 000195B0  7C 60 D1 D6 */	mullw r3, r0, r26
/* 8001E6B4 000195B4  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001E6B8 000195B8  38 63 9E C3 */	addi r3, r3, -24893
/* 8001E6BC 000195BC  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001E6C0 000195C0  90 7C 00 EC */	stw r3, 0xec(r28)
/* 8001E6C4 000195C4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E6C8 000195C8  C0 11 00 04 */	lfs f0, 4(r17)
/* 8001E6CC 000195CC  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8001E6D0 000195D0  EC 40 90 24 */	fdivs f2, f0, f18
/* 8001E6D4 000195D4  EC 01 80 28 */	fsubs f0, f1, f16
/* 8001E6D8 000195D8  EC 20 88 24 */	fdivs f1, f0, f17
/* 8001E6DC 000195DC  41 82 00 20 */	beq lbl_8001E6FC
/* 8001E6E0 000195E0  EC 01 00 72 */	fmuls f0, f1, f1
/* 8001E6E4 000195E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001E6E8 000195E8  EC 33 00 28 */	fsubs f1, f19, f0
/* 8001E6EC 000195EC  EC 13 08 28 */	fsubs f0, f19, f1
/* 8001E6F0 000195F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001E6F4 000195F4  EF C1 00 2A */	fadds f30, f1, f0
/* 8001E6F8 000195F8  48 00 00 10 */	b lbl_8001E708
lbl_8001E6FC:
/* 8001E6FC 000195FC  EC 13 08 28 */	fsubs f0, f19, f1
/* 8001E700 00019600  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001E704 00019604  EF C1 00 2A */	fadds f30, f1, f0
lbl_8001E708:
/* 8001E708 00019608  7C 63 D1 D6 */	mullw r3, r3, r26
/* 8001E70C 0001960C  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001E710 00019610  38 03 9E C3 */	addi r0, r3, -24893
/* 8001E714 00019614  7C 60 D1 D6 */	mullw r3, r0, r26
/* 8001E718 00019618  90 1C 00 EC */	stw r0, 0xec(r28)
/* 8001E71C 0001961C  54 00 84 3E */	srwi r0, r0, 0x10
/* 8001E720 00019620  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001E724 00019624  C0 51 00 0C */	lfs f2, 0xc(r17)
/* 8001E728 00019628  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8001E72C 0001962C  3C 63 00 27 */	addis r3, r3, 0x27
/* 8001E730 00019630  EC 00 80 28 */	fsubs f0, f0, f16
/* 8001E734 00019634  38 63 9E C3 */	addi r3, r3, -24893
/* 8001E738 00019638  C0 31 00 08 */	lfs f1, 8(r17)
/* 8001E73C 0001963C  54 60 84 3E */	srwi r0, r3, 0x10
/* 8001E740 00019640  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E744 00019644  EC 60 88 24 */	fdivs f3, f0, f17
/* 8001E748 00019648  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E74C 0001964C  90 7C 00 EC */	stw r3, 0xec(r28)
/* 8001E750 00019650  EC 00 80 28 */	fsubs f0, f0, f16
/* 8001E754 00019654  EC 22 08 28 */	fsubs f1, f2, f1
/* 8001E758 00019658  EC 00 88 24 */	fdivs f0, f0, f17
/* 8001E75C 0001965C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8001E760 00019660  EC 14 00 32 */	fmuls f0, f20, f0
/* 8001E764 00019664  ED DB 08 2A */	fadds f14, f27, f1
/* 8001E768 00019668  EF 55 00 2A */	fadds f26, f21, f0
/* 8001E76C 0001966C  FC 20 70 90 */	fmr f1, f14
/* 8001E770 00019670  48 0A 25 B1 */	bl func_800C0D20
/* 8001E774 00019674  FD E0 08 18 */	frsp f15, f1
/* 8001E778 00019678  FC 20 D0 90 */	fmr f1, f26
/* 8001E77C 0001967C  48 0A 20 9D */	bl func_800C0818
/* 8001E780 00019680  FC 00 08 18 */	frsp f0, f1
/* 8001E784 00019684  EC 5F 07 B2 */	fmuls f2, f31, f30
/* 8001E788 00019688  FC 20 D0 90 */	fmr f1, f26
/* 8001E78C 0001968C  FC 00 00 50 */	fneg f0, f0
/* 8001E790 00019690  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001E794 00019694  EC 00 03 F2 */	fmuls f0, f0, f15
/* 8001E798 00019698  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8001E79C 0001969C  48 0A 25 85 */	bl func_800C0D20
/* 8001E7A0 000196A0  FC 00 08 18 */	frsp f0, f1
/* 8001E7A4 000196A4  EC 5D 07 B2 */	fmuls f2, f29, f30
/* 8001E7A8 000196A8  FC 20 70 90 */	fmr f1, f14
/* 8001E7AC 000196AC  FC 00 00 50 */	fneg f0, f0
/* 8001E7B0 000196B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001E7B4 000196B4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8001E7B8 000196B8  48 0A 20 61 */	bl func_800C0818
/* 8001E7BC 000196BC  FD E0 08 18 */	frsp f15, f1
/* 8001E7C0 000196C0  FC 20 D0 90 */	fmr f1, f26
/* 8001E7C4 000196C4  48 0A 20 55 */	bl func_800C0818
/* 8001E7C8 000196C8  FC 40 08 18 */	frsp f2, f1
/* 8001E7CC 000196CC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8001E7D0 000196D0  EC 3C 07 B2 */	fmuls f1, f28, f30
/* 8001E7D4 000196D4  FC 16 00 00 */	fcmpu cr0, f22, f0
/* 8001E7D8 000196D8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8001E7DC 000196DC  EC 20 03 F2 */	fmuls f1, f0, f15
/* 8001E7E0 000196E0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8001E7E4 000196E4  40 82 00 18 */	bne lbl_8001E7FC
/* 8001E7E8 000196E8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8001E7EC 000196EC  FC 16 00 00 */	fcmpu cr0, f22, f0
/* 8001E7F0 000196F0  40 82 00 0C */	bne lbl_8001E7FC
/* 8001E7F4 000196F4  FC 16 08 00 */	fcmpu cr0, f22, f1
/* 8001E7F8 000196F8  41 82 00 14 */	beq lbl_8001E80C
lbl_8001E7FC:
/* 8001E7FC 000196FC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8001E800 00019700  38 81 00 44 */	addi r4, r1, 0x44
/* 8001E804 00019704  48 0C 9D 11 */	bl func_800E8514
/* 8001E808 00019708  48 00 00 10 */	b lbl_8001E818
lbl_8001E80C:
/* 8001E80C 0001970C  D2 C1 00 4C */	stfs f22, 0x4c(r1)
/* 8001E810 00019710  D2 C1 00 48 */	stfs f22, 0x48(r1)
/* 8001E814 00019714  D2 C1 00 44 */	stfs f22, 0x44(r1)
lbl_8001E818:
/* 8001E818 00019718  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8001E81C 0001971C  80 61 00 60 */	lwz r3, 0x60(r1)
/* 8001E820 00019720  90 01 00 38 */	stw r0, 0x38(r1)
/* 8001E824 00019724  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001E828 00019728  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8001E82C 0001972C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8001E830 00019730  FC 16 00 00 */	fcmpu cr0, f22, f0
/* 8001E834 00019734  90 01 00 40 */	stw r0, 0x40(r1)
/* 8001E838 00019738  D2 C1 00 3C */	stfs f22, 0x3c(r1)
/* 8001E83C 0001973C  40 82 00 10 */	bne lbl_8001E84C
/* 8001E840 00019740  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8001E844 00019744  FC 16 00 00 */	fcmpu cr0, f22, f0
/* 8001E848 00019748  41 82 00 10 */	beq lbl_8001E858
lbl_8001E84C:
/* 8001E84C 0001974C  38 61 00 38 */	addi r3, r1, 0x38
/* 8001E850 00019750  7C 64 1B 78 */	mr r4, r3
/* 8001E854 00019754  48 0C 9C C1 */	bl func_800E8514
lbl_8001E858:
/* 8001E858 00019758  38 E1 00 44 */	addi r7, r1, 0x44
/* 8001E85C 0001975C  7F 63 DB 78 */	mr r3, r27
/* 8001E860 00019760  7F 85 E3 78 */	mr r5, r28
/* 8001E864 00019764  38 81 00 50 */	addi r4, r1, 0x50
/* 8001E868 00019768  7C E8 3B 78 */	mr r8, r7
/* 8001E86C 0001976C  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8001E870 00019770  39 21 00 38 */	addi r9, r1, 0x38
/* 8001E874 00019774  4B FF E3 11 */	bl func_8001CB84
/* 8001E878 00019778  80 1C 00 EC */	lwz r0, 0xec(r28)
/* 8001E87C 0001977C  FC 20 C8 90 */	fmr f1, f25
/* 8001E880 00019780  7F 63 DB 78 */	mr r3, r27
/* 8001E884 00019784  7F C4 F3 78 */	mr r4, r30
/* 8001E888 00019788  7C C0 D1 D6 */	mullw r6, r0, r26
/* 8001E88C 0001978C  7F 85 E3 78 */	mr r5, r28
/* 8001E890 00019790  3C C6 00 27 */	addis r6, r6, 0x27
/* 8001E894 00019794  38 C6 9E C3 */	addi r6, r6, -24893
/* 8001E898 00019798  54 C0 84 3E */	srwi r0, r6, 0x10
/* 8001E89C 0001979C  90 DC 00 EC */	stw r6, 0xec(r28)
/* 8001E8A0 000197A0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001E8A4 000197A4  81 41 00 50 */	lwz r10, 0x50(r1)
/* 8001E8A8 000197A8  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8001E8AC 000197AC  81 21 00 54 */	lwz r9, 0x54(r1)
/* 8001E8B0 000197B0  EC 00 80 28 */	fsubs f0, f0, f16
/* 8001E8B4 000197B4  81 01 00 58 */	lwz r8, 0x58(r1)
/* 8001E8B8 000197B8  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 8001E8BC 000197BC  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 8001E8C0 000197C0  ED C0 88 24 */	fdivs f14, f0, f17
/* 8001E8C4 000197C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001E8C8 000197C8  91 41 00 08 */	stw r10, 8(r1)
/* 8001E8CC 000197CC  91 21 00 0C */	stw r9, 0xc(r1)
/* 8001E8D0 000197D0  91 01 00 10 */	stw r8, 0x10(r1)
/* 8001E8D4 000197D4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8001E8D8 000197D8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8001E8DC 000197DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001E8E0 000197E0  4B FF E7 C1 */	bl func_8001D0A0
/* 8001E8E4 000197E4  88 1C 00 67 */	lbz r0, 0x67(r28)
/* 8001E8E8 000197E8  7C 64 1B 78 */	mr r4, r3
/* 8001E8EC 000197EC  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 8001E8F0 000197F0  7F A3 EB 78 */	mr r3, r29
/* 8001E8F4 000197F4  7C 00 07 74 */	extsb r0, r0
/* 8001E8F8 000197F8  7F E7 FB 78 */	mr r7, r31
/* 8001E8FC 000197FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8001E900 00019800  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8001E904 00019804  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8001E908 00019808  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8001E90C 0001980C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001E910 00019810  38 C1 00 08 */	addi r6, r1, 8
/* 8001E914 00019814  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8001E918 00019818  39 1C 00 FC */	addi r8, r28, 0xfc
/* 8001E91C 0001981C  81 3C 00 F8 */	lwz r9, 0xf8(r28)
/* 8001E920 00019820  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8001E924 00019824  A1 5C 00 E8 */	lhz r10, 0xe8(r28)
/* 8001E928 00019828  EC 18 00 32 */	fmuls f0, f24, f0
/* 8001E92C 0001982C  EC 00 03 B2 */	fmuls f0, f0, f14
/* 8001E930 00019830  EC 33 00 2A */	fadds f1, f19, f0
/* 8001E934 00019834  7D 89 03 A6 */	mtctr r12
/* 8001E938 00019838  4E 80 04 21 */	bctrl 
/* 8001E93C 0001983C  3A 10 00 01 */	addi r16, r16, 1
lbl_8001E940:
/* 8001E940 00019840  7C 10 B0 00 */	cmpw r16, r22
/* 8001E944 00019844  41 80 FD 64 */	blt lbl_8001E6A8
lbl_8001E948:
/* 8001E948 00019848  E3 E1 02 08 */	psq_l f31, 520(r1), 0, qr0
/* 8001E94C 0001984C  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8001E950 00019850  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, qr0
/* 8001E954 00019854  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8001E958 00019858  E3 A1 01 E8 */	psq_l f29, 488(r1), 0, qr0
/* 8001E95C 0001985C  CB A1 01 E0 */	lfd f29, 0x1e0(r1)
/* 8001E960 00019860  E3 81 01 D8 */	psq_l f28, 472(r1), 0, qr0
/* 8001E964 00019864  CB 81 01 D0 */	lfd f28, 0x1d0(r1)
/* 8001E968 00019868  E3 61 01 C8 */	psq_l f27, 456(r1), 0, qr0
/* 8001E96C 0001986C  CB 61 01 C0 */	lfd f27, 0x1c0(r1)
/* 8001E970 00019870  E3 41 01 B8 */	psq_l f26, 440(r1), 0, qr0
/* 8001E974 00019874  CB 41 01 B0 */	lfd f26, 0x1b0(r1)
/* 8001E978 00019878  E3 21 01 A8 */	psq_l f25, 424(r1), 0, qr0
/* 8001E97C 0001987C  CB 21 01 A0 */	lfd f25, 0x1a0(r1)
/* 8001E980 00019880  E3 01 01 98 */	psq_l f24, 408(r1), 0, qr0
/* 8001E984 00019884  CB 01 01 90 */	lfd f24, 0x190(r1)
/* 8001E988 00019888  E2 E1 01 88 */	psq_l f23, 392(r1), 0, qr0
/* 8001E98C 0001988C  CA E1 01 80 */	lfd f23, 0x180(r1)
/* 8001E990 00019890  E2 C1 01 78 */	psq_l f22, 376(r1), 0, qr0
/* 8001E994 00019894  CA C1 01 70 */	lfd f22, 0x170(r1)
/* 8001E998 00019898  E2 A1 01 68 */	psq_l f21, 360(r1), 0, qr0
/* 8001E99C 0001989C  CA A1 01 60 */	lfd f21, 0x160(r1)
/* 8001E9A0 000198A0  E2 81 01 58 */	psq_l f20, 344(r1), 0, qr0
/* 8001E9A4 000198A4  CA 81 01 50 */	lfd f20, 0x150(r1)
/* 8001E9A8 000198A8  E2 61 01 48 */	psq_l f19, 328(r1), 0, qr0
/* 8001E9AC 000198AC  CA 61 01 40 */	lfd f19, 0x140(r1)
/* 8001E9B0 000198B0  E2 41 01 38 */	psq_l f18, 312(r1), 0, qr0
/* 8001E9B4 000198B4  CA 41 01 30 */	lfd f18, 0x130(r1)
/* 8001E9B8 000198B8  E2 21 01 28 */	psq_l f17, 296(r1), 0, qr0
/* 8001E9BC 000198BC  CA 21 01 20 */	lfd f17, 0x120(r1)
/* 8001E9C0 000198C0  E2 01 01 18 */	psq_l f16, 280(r1), 0, qr0
/* 8001E9C4 000198C4  CA 01 01 10 */	lfd f16, 0x110(r1)
/* 8001E9C8 000198C8  E1 E1 01 08 */	psq_l f15, 264(r1), 0, qr0
/* 8001E9CC 000198CC  C9 E1 01 00 */	lfd f15, 0x100(r1)
/* 8001E9D0 000198D0  E1 C1 00 F8 */	psq_l f14, 248(r1), 0, qr0
/* 8001E9D4 000198D4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8001E9D8 000198D8  C9 C1 00 F0 */	lfd f14, 0xf0(r1)
/* 8001E9DC 000198DC  48 09 33 89 */	bl func_800B1D64
/* 8001E9E0 000198E0  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8001E9E4 000198E4  7C 08 03 A6 */	mtlr r0
/* 8001E9E8 000198E8  38 21 02 10 */	addi r1, r1, 0x210
/* 8001E9EC 000198EC  4E 80 00 20 */	blr 

.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C0FC0
lbl_804C0FC0:
	.incbin "baserom.dol", 0x3C9C00, 0x8

.section .text, "ax"
.global __ieee754_sqrt
__ieee754_sqrt:
/* 800C0E84 000BBD84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C0E88 000BBD88  D8 21 00 08 */	stfd f1, 8(r1)
/* 800C0E8C 000BBD8C  80 C1 00 08 */	lwz r6, 8(r1)
/* 800C0E90 000BBD90  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C0E94 000BBD94  54 C3 00 56 */	rlwinm r3, r6, 0, 1, 0xb
/* 800C0E98 000BBD98  3C 63 80 10 */	addis r3, r3, 0x8010
/* 800C0E9C 000BBD9C  28 03 00 00 */	cmplwi r3, 0
/* 800C0EA0 000BBDA0  40 82 00 18 */	bne lbl_800C0EB8
/* 800C0EA4 000BBDA4  FC 01 00 72 */	fmul f0, f1, f1
/* 800C0EA8 000BBDA8  38 00 00 21 */	li r0, 0x21
/* 800C0EAC 000BBDAC  90 0D 99 E8 */	stw r0, errno-_SDA_BASE_(r13)
/* 800C0EB0 000BBDB0  FC 21 00 2A */	fadd f1, f1, f0
/* 800C0EB4 000BBDB4  48 00 02 10 */	b lbl_800C10C4
lbl_800C0EB8:
/* 800C0EB8 000BBDB8  2C 86 00 00 */	cmpwi cr1, r6, 0
/* 800C0EBC 000BBDBC  41 85 00 2C */	bgt cr1, lbl_800C0EE8
/* 800C0EC0 000BBDC0  54 C3 00 7E */	clrlwi r3, r6, 1
/* 800C0EC4 000BBDC4  7C 03 1B 79 */	or. r3, r0, r3
/* 800C0EC8 000BBDC8  40 82 00 08 */	bne lbl_800C0ED0
/* 800C0ECC 000BBDCC  48 00 01 F8 */	b lbl_800C10C4
lbl_800C0ED0:
/* 800C0ED0 000BBDD0  40 84 00 18 */	bge cr1, lbl_800C0EE8
/* 800C0ED4 000BBDD4  38 00 00 21 */	li r0, 0x21
/* 800C0ED8 000BBDD8  3C 60 80 4C */	lis r3, __float_nan@ha
/* 800C0EDC 000BBDDC  90 0D 99 E8 */	stw r0, errno-_SDA_BASE_(r13)
/* 800C0EE0 000BBDE0  C0 23 D5 48 */	lfs f1, __float_nan@l(r3)
/* 800C0EE4 000BBDE4  48 00 01 E0 */	b lbl_800C10C4
lbl_800C0EE8:
/* 800C0EE8 000BBDE8  7C C3 A6 71 */	srawi. r3, r6, 0x14
/* 800C0EEC 000BBDEC  40 82 00 50 */	bne lbl_800C0F3C
/* 800C0EF0 000BBDF0  48 00 00 14 */	b lbl_800C0F04
lbl_800C0EF4:
/* 800C0EF4 000BBDF4  54 04 AA FE */	srwi r4, r0, 0xb
/* 800C0EF8 000BBDF8  54 00 A8 14 */	slwi r0, r0, 0x15
/* 800C0EFC 000BBDFC  7C C6 23 78 */	or r6, r6, r4
/* 800C0F00 000BBE00  38 63 FF EB */	addi r3, r3, -21
lbl_800C0F04:
/* 800C0F04 000BBE04  2C 06 00 00 */	cmpwi r6, 0
/* 800C0F08 000BBE08  41 82 FF EC */	beq lbl_800C0EF4
/* 800C0F0C 000BBE0C  38 E0 00 00 */	li r7, 0
/* 800C0F10 000BBE10  48 00 00 0C */	b lbl_800C0F1C
lbl_800C0F14:
/* 800C0F14 000BBE14  54 C6 08 3C */	slwi r6, r6, 1
/* 800C0F18 000BBE18  38 E7 00 01 */	addi r7, r7, 1
lbl_800C0F1C:
/* 800C0F1C 000BBE1C  54 C4 02 D7 */	rlwinm. r4, r6, 0, 0xb, 0xb
/* 800C0F20 000BBE20  41 82 FF F4 */	beq lbl_800C0F14
/* 800C0F24 000BBE24  20 87 00 20 */	subfic r4, r7, 0x20
/* 800C0F28 000BBE28  38 A7 FF FF */	addi r5, r7, -1
/* 800C0F2C 000BBE2C  7C 04 24 30 */	srw r4, r0, r4
/* 800C0F30 000BBE30  7C 00 38 30 */	slw r0, r0, r7
/* 800C0F34 000BBE34  7C 65 18 50 */	subf r3, r5, r3
/* 800C0F38 000BBE38  7C C6 23 78 */	or r6, r6, r4
lbl_800C0F3C:
/* 800C0F3C 000BBE3C  38 83 FC 01 */	addi r4, r3, -1023
/* 800C0F40 000BBE40  54 C5 03 3E */	clrlwi r5, r6, 0xc
/* 800C0F44 000BBE44  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 800C0F48 000BBE48  64 A6 00 10 */	oris r6, r5, 0x10
/* 800C0F4C 000BBE4C  41 82 00 14 */	beq lbl_800C0F60
/* 800C0F50 000BBE50  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800C0F54 000BBE54  7C 86 32 14 */	add r4, r6, r6
/* 800C0F58 000BBE58  7C C5 22 14 */	add r6, r5, r4
/* 800C0F5C 000BBE5C  7C 00 02 14 */	add r0, r0, r0
lbl_800C0F60:
/* 800C0F60 000BBE60  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800C0F64 000BBE64  7C 86 32 14 */	add r4, r6, r6
/* 800C0F68 000BBE68  7C C5 22 14 */	add r6, r5, r4
/* 800C0F6C 000BBE6C  7C 00 02 14 */	add r0, r0, r0
/* 800C0F70 000BBE70  39 20 00 00 */	li r9, 0
/* 800C0F74 000BBE74  39 60 00 00 */	li r11, 0
/* 800C0F78 000BBE78  39 40 00 00 */	li r10, 0
/* 800C0F7C 000BBE7C  39 80 00 00 */	li r12, 0
/* 800C0F80 000BBE80  3C E0 00 20 */	lis r7, 0x20
/* 800C0F84 000BBE84  48 00 00 30 */	b lbl_800C0FB4
lbl_800C0F88:
/* 800C0F88 000BBE88  7C 8B 3A 14 */	add r4, r11, r7
/* 800C0F8C 000BBE8C  7C 04 30 00 */	cmpw r4, r6
/* 800C0F90 000BBE90  41 81 00 10 */	bgt lbl_800C0FA0
/* 800C0F94 000BBE94  7D 64 3A 14 */	add r11, r4, r7
/* 800C0F98 000BBE98  7C C4 30 50 */	subf r6, r4, r6
/* 800C0F9C 000BBE9C  7D 8C 3A 14 */	add r12, r12, r7
lbl_800C0FA0:
/* 800C0FA0 000BBEA0  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800C0FA4 000BBEA4  7C 86 32 14 */	add r4, r6, r6
/* 800C0FA8 000BBEA8  7C C5 22 14 */	add r6, r5, r4
/* 800C0FAC 000BBEAC  7C 00 02 14 */	add r0, r0, r0
/* 800C0FB0 000BBEB0  54 E7 F8 7E */	srwi r7, r7, 1
lbl_800C0FB4:
/* 800C0FB4 000BBEB4  2C 07 00 00 */	cmpwi r7, 0
/* 800C0FB8 000BBEB8  40 82 FF D0 */	bne lbl_800C0F88
/* 800C0FBC 000BBEBC  3C E0 80 00 */	lis r7, 0x8000
/* 800C0FC0 000BBEC0  48 00 00 6C */	b lbl_800C102C
lbl_800C0FC4:
/* 800C0FC4 000BBEC4  7C 0B 30 00 */	cmpw r11, r6
/* 800C0FC8 000BBEC8  7D 65 5B 78 */	mr r5, r11
/* 800C0FCC 000BBECC  7D 09 3A 14 */	add r8, r9, r7
/* 800C0FD0 000BBED0  41 80 00 10 */	blt lbl_800C0FE0
/* 800C0FD4 000BBED4  40 82 00 44 */	bne lbl_800C1018
/* 800C0FD8 000BBED8  7C 08 00 40 */	cmplw r8, r0
/* 800C0FDC 000BBEDC  41 81 00 3C */	bgt lbl_800C1018
lbl_800C0FE0:
/* 800C0FE0 000BBEE0  55 04 00 00 */	rlwinm r4, r8, 0, 0, 0
/* 800C0FE4 000BBEE4  7D 28 3A 14 */	add r9, r8, r7
/* 800C0FE8 000BBEE8  3C 84 80 00 */	addis r4, r4, 0x8000
/* 800C0FEC 000BBEEC  28 04 00 00 */	cmplwi r4, 0
/* 800C0FF0 000BBEF0  40 82 00 10 */	bne lbl_800C1000
/* 800C0FF4 000BBEF4  55 24 00 01 */	rlwinm. r4, r9, 0, 0, 0
/* 800C0FF8 000BBEF8  40 82 00 08 */	bne lbl_800C1000
/* 800C0FFC 000BBEFC  39 6B 00 01 */	addi r11, r11, 1
lbl_800C1000:
/* 800C1000 000BBF00  7C 00 40 40 */	cmplw r0, r8
/* 800C1004 000BBF04  7C C5 30 50 */	subf r6, r5, r6
/* 800C1008 000BBF08  40 80 00 08 */	bge lbl_800C1010
/* 800C100C 000BBF0C  38 C6 FF FF */	addi r6, r6, -1
lbl_800C1010:
/* 800C1010 000BBF10  7C 08 00 50 */	subf r0, r8, r0
/* 800C1014 000BBF14  7D 4A 3A 14 */	add r10, r10, r7
lbl_800C1018:
/* 800C1018 000BBF18  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800C101C 000BBF1C  7C 86 32 14 */	add r4, r6, r6
/* 800C1020 000BBF20  7C C5 22 14 */	add r6, r5, r4
/* 800C1024 000BBF24  7C 00 02 14 */	add r0, r0, r0
/* 800C1028 000BBF28  54 E7 F8 7E */	srwi r7, r7, 1
lbl_800C102C:
/* 800C102C 000BBF2C  2C 07 00 00 */	cmpwi r7, 0
/* 800C1030 000BBF30  40 82 FF 94 */	bne lbl_800C0FC4
/* 800C1034 000BBF34  7C C0 03 79 */	or. r0, r6, r0
/* 800C1038 000BBF38  41 82 00 58 */	beq lbl_800C1090
/* 800C103C 000BBF3C  C8 02 95 A0 */	lfd f0, lbl_804C0FC0-_SDA2_BASE_(r2)
/* 800C1040 000BBF40  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 800C1044 000BBF44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800C1048 000BBF48  4C 41 13 82 */	cror 2, 1, 2
/* 800C104C 000BBF4C  40 82 00 44 */	bne lbl_800C1090
/* 800C1050 000BBF50  3C 0A 00 01 */	addis r0, r10, 1
/* 800C1054 000BBF54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800C1058 000BBF58  28 00 FF FF */	cmplwi r0, 0xffff
/* 800C105C 000BBF5C  40 82 00 10 */	bne lbl_800C106C
/* 800C1060 000BBF60  39 40 00 00 */	li r10, 0
/* 800C1064 000BBF64  39 8C 00 01 */	addi r12, r12, 1
/* 800C1068 000BBF68  48 00 00 28 */	b lbl_800C1090
lbl_800C106C:
/* 800C106C 000BBF6C  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 800C1070 000BBF70  40 81 00 18 */	ble lbl_800C1088
/* 800C1074 000BBF74  28 00 FF FE */	cmplwi r0, 0xfffe
/* 800C1078 000BBF78  40 82 00 08 */	bne lbl_800C1080
/* 800C107C 000BBF7C  39 8C 00 01 */	addi r12, r12, 1
lbl_800C1080:
/* 800C1080 000BBF80  39 4A 00 02 */	addi r10, r10, 2
/* 800C1084 000BBF84  48 00 00 0C */	b lbl_800C1090
lbl_800C1088:
/* 800C1088 000BBF88  55 40 07 FE */	clrlwi r0, r10, 0x1f
/* 800C108C 000BBF8C  7D 4A 02 14 */	add r10, r10, r0
lbl_800C1090:
/* 800C1090 000BBF90  55 80 07 FE */	clrlwi r0, r12, 0x1f
/* 800C1094 000BBF94  7D 84 0E 70 */	srawi r4, r12, 1
/* 800C1098 000BBF98  2C 00 00 01 */	cmpwi r0, 1
/* 800C109C 000BBF9C  55 45 F8 7E */	srwi r5, r10, 1
/* 800C10A0 000BBFA0  3C 84 3F E0 */	addis r4, r4, 0x3fe0
/* 800C10A4 000BBFA4  40 82 00 08 */	bne lbl_800C10AC
/* 800C10A8 000BBFA8  64 A5 80 00 */	oris r5, r5, 0x8000
lbl_800C10AC:
/* 800C10AC 000BBFAC  38 03 FC 01 */	addi r0, r3, -1023
/* 800C10B0 000BBFB0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800C10B4 000BBFB4  54 00 98 16 */	rlwinm r0, r0, 0x13, 0, 0xb
/* 800C10B8 000BBFB8  7C 84 02 14 */	add r4, r4, r0
/* 800C10BC 000BBFBC  90 81 00 10 */	stw r4, 0x10(r1)
/* 800C10C0 000BBFC0  C8 21 00 10 */	lfd f1, 0x10(r1)
lbl_800C10C4:
/* 800C10C4 000BBFC4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C10C8 000BBFC8  4E 80 00 20 */	blr 

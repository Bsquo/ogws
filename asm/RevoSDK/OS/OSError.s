.include "macros.inc"

.section .sdata, "wa"
.balign 0x8
.global __OSFpscrEnableBits
__OSFpscrEnableBits:
	.long 0x000000F8
.global lbl_804BD6F4
lbl_804BD6F4:
	.string "\n"
    .balign 4

.section .data, "wa"
.balign 0x8
.global strings_8039C388
strings_8039C388:
    .string " in \"%s\" on line %d.\n"
    .balign 4
    .string "\nAddress:      Back Chain    LR Save\n"
    .balign 4
    .string "0x%08x:   0x%08x    0x%08x\n"
    .balign 4
    .string "Non-recoverable Exception %d"
    .balign 4
    .string "Unhandled Exception %d"
    .balign 4
    .string "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
    .balign 4
    .string "TB = 0x%016llx\n"
    .balign 4
    .string "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
    .balign 4
    .string "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
    .balign 4
    .string "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
    .balign 4
    .string "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
    .balign 4
    .string "AI DMA Address =   0x%04x%04x\n"
    .balign 4
    .string "ARAM DMA Address = 0x%04x%04x\n"
    .balign 4
    .string "DI DMA Address =   0x%08x\n"
    .balign 4
    .string "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
    .balign 4
.global switch_8039C664
switch_8039C664:
	.incbin "baserom.dol", 0x398764, 0x44

.section .bss, "wa"
.balign 0x8
.global __OSErrorTable
__OSErrorTable:
	.skip 0x44

.section .text, "ax"
.global OSPanic
OSPanic:
/* 800EEFA8 000E9EA8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800EEFAC 000E9EAC  7C 08 02 A6 */	mflr r0
/* 800EEFB0 000E9EB0  90 01 00 94 */	stw r0, 0x94(r1)
/* 800EEFB4 000E9EB4  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800EEFB8 000E9EB8  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800EEFBC 000E9EBC  7C 9E 23 78 */	mr r30, r4
/* 800EEFC0 000E9EC0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 800EEFC4 000E9EC4  7C BD 2B 78 */	mr r29, r5
/* 800EEFC8 000E9EC8  93 81 00 80 */	stw r28, 0x80(r1)
/* 800EEFCC 000E9ECC  7C 7C 1B 78 */	mr r28, r3
/* 800EEFD0 000E9ED0  40 86 00 24 */	bne cr1, lbl_800EEFF4
/* 800EEFD4 000E9ED4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800EEFD8 000E9ED8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800EEFDC 000E9EDC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800EEFE0 000E9EE0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800EEFE4 000E9EE4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800EEFE8 000E9EE8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800EEFEC 000E9EEC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800EEFF0 000E9EF0  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_800EEFF4:
/* 800EEFF4 000E9EF4  3F E0 80 3A */	lis r31, strings_8039C388@ha
/* 800EEFF8 000E9EF8  90 61 00 08 */	stw r3, 8(r1)
/* 800EEFFC 000E9EFC  3B FF C3 88 */	addi r31, r31, strings_8039C388@l
/* 800EF000 000E9F00  90 81 00 0C */	stw r4, 0xc(r1)
/* 800EF004 000E9F04  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800EF008 000E9F08  90 C1 00 14 */	stw r6, 0x14(r1)
/* 800EF00C 000E9F0C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800EF010 000E9F10  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800EF014 000E9F14  91 21 00 20 */	stw r9, 0x20(r1)
/* 800EF018 000E9F18  91 41 00 24 */	stw r10, 0x24(r1)
/* 800EF01C 000E9F1C  48 00 28 A5 */	bl OSDisableInterrupts
/* 800EF020 000E9F20  38 A1 00 98 */	addi r5, r1, 0x98
/* 800EF024 000E9F24  38 01 00 08 */	addi r0, r1, 8
/* 800EF028 000E9F28  3C 60 03 00 */	lis r3, 0x300
/* 800EF02C 000E9F2C  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 800EF030 000E9F30  38 81 00 68 */	addi r4, r1, 0x68
/* 800EF034 000E9F34  90 61 00 68 */	stw r3, 0x68(r1)
/* 800EF038 000E9F38  7F A3 EB 78 */	mr r3, r29
/* 800EF03C 000E9F3C  90 01 00 70 */	stw r0, 0x70(r1)
/* 800EF040 000E9F40  4B FC 83 45 */	bl vprintf
/* 800EF044 000E9F44  7F 84 E3 78 */	mr r4, r28
/* 800EF048 000E9F48  7F C5 F3 78 */	mr r5, r30
/* 800EF04C 000E9F4C  38 7F 00 00 */	addi r3, r31, 0
/* 800EF050 000E9F50  4C C6 31 82 */	crclr 6
/* 800EF054 000E9F54  48 09 4E C5 */	bl OSReport
/* 800EF058 000E9F58  38 7F 00 18 */	addi r3, r31, 0x18
/* 800EF05C 000E9F5C  4C C6 31 82 */	crclr 6
/* 800EF060 000E9F60  48 09 4E B9 */	bl OSReport
/* 800EF064 000E9F64  3B C0 00 00 */	li r30, 0
/* 800EF068 000E9F68  4B FF FA CD */	bl OSGetStackPointer
/* 800EF06C 000E9F6C  7C 7D 1B 78 */	mr r29, r3
/* 800EF070 000E9F70  48 00 00 20 */	b lbl_800EF090
lbl_800EF074:
/* 800EF074 000E9F74  80 BD 00 00 */	lwz r5, 0(r29)
/* 800EF078 000E9F78  7F A4 EB 78 */	mr r4, r29
/* 800EF07C 000E9F7C  80 DD 00 04 */	lwz r6, 4(r29)
/* 800EF080 000E9F80  38 7F 00 40 */	addi r3, r31, 0x40
/* 800EF084 000E9F84  4C C6 31 82 */	crclr 6
/* 800EF088 000E9F88  48 09 4E 91 */	bl OSReport
/* 800EF08C 000E9F8C  83 BD 00 00 */	lwz r29, 0(r29)
lbl_800EF090:
/* 800EF090 000E9F90  2C 1D 00 00 */	cmpwi r29, 0
/* 800EF094 000E9F94  41 82 00 1C */	beq lbl_800EF0B0
/* 800EF098 000E9F98  3C 1D 00 01 */	addis r0, r29, 1
/* 800EF09C 000E9F9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800EF0A0 000E9FA0  41 82 00 10 */	beq lbl_800EF0B0
/* 800EF0A4 000E9FA4  28 1E 00 10 */	cmplwi r30, 0x10
/* 800EF0A8 000E9FA8  3B DE 00 01 */	addi r30, r30, 1
/* 800EF0AC 000E9FAC  41 80 FF C8 */	blt lbl_800EF074
lbl_800EF0B0:
/* 800EF0B0 000E9FB0  48 01 B9 A9 */	bl func_8010AA58
/* 800EF0B4 000E9FB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800EF0B8 000E9FB8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800EF0BC 000E9FBC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800EF0C0 000E9FC0  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 800EF0C4 000E9FC4  83 81 00 80 */	lwz r28, 0x80(r1)
/* 800EF0C8 000E9FC8  7C 08 03 A6 */	mtlr r0
/* 800EF0CC 000E9FCC  38 21 00 90 */	addi r1, r1, 0x90
/* 800EF0D0 000E9FD0  4E 80 00 20 */	blr 

.global OSSetErrorHandler
OSSetErrorHandler:
/* 800EF0D4 000E9FD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EF0D8 000E9FD8  7C 08 02 A6 */	mflr r0
/* 800EF0DC 000E9FDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EF0E0 000E9FE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EF0E4 000E9FE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EF0E8 000E9FE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EF0EC 000E9FEC  7C 7D 1B 78 */	mr r29, r3
/* 800EF0F0 000E9FF0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800EF0F4 000E9FF4  7C 9C 23 78 */	mr r28, r4
/* 800EF0F8 000E9FF8  48 00 27 C9 */	bl OSDisableInterrupts
/* 800EF0FC 000E9FFC  3C 80 80 41 */	lis r4, __OSErrorTable@ha
/* 800EF100 000EA000  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 800EF104 000EA004  38 84 41 50 */	addi r4, r4, __OSErrorTable@l
/* 800EF108 000EA008  28 1D 00 10 */	cmplwi r29, 0x10
/* 800EF10C 000EA00C  7F C4 00 2E */	lwzx r30, r4, r0
/* 800EF110 000EA010  7C 7D 1B 78 */	mr r29, r3
/* 800EF114 000EA014  7F 84 01 2E */	stwx r28, r4, r0
/* 800EF118 000EA018  40 82 02 18 */	bne lbl_800EF330
/* 800EF11C 000EA01C  48 01 B8 FD */	bl func_8010AA18
/* 800EF120 000EA020  7C 7F 1B 78 */	mr r31, r3
/* 800EF124 000EA024  60 63 20 00 */	ori r3, r3, 0x2000
/* 800EF128 000EA028  48 01 B8 F9 */	bl func_8010AA20
/* 800EF12C 000EA02C  48 01 B9 71 */	bl func_8010AA9C
/* 800EF130 000EA030  2C 1C 00 00 */	cmpwi r28, 0
/* 800EF134 000EA034  41 82 01 98 */	beq lbl_800EF2CC
/* 800EF138 000EA038  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 800EF13C 000EA03C  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800EF140 000EA040  81 25 00 DC */	lwz r9, 0x800000DC@l(r5)
/* 800EF144 000EA044  38 A4 F8 FF */	addi r5, r4, 0x6005F8FF@l
/* 800EF148 000EA048  39 00 FF FF */	li r8, -1
/* 800EF14C 000EA04C  38 E0 00 04 */	li r7, 4
/* 800EF150 000EA050  38 00 00 02 */	li r0, 2
/* 800EF154 000EA054  48 00 01 5C */	b lbl_800EF2B0
lbl_800EF158:
/* 800EF158 000EA058  80 89 01 9C */	lwz r4, 0x19c(r9)
/* 800EF15C 000EA05C  60 84 09 00 */	ori r4, r4, 0x900
/* 800EF160 000EA060  90 89 01 9C */	stw r4, 0x19c(r9)
/* 800EF164 000EA064  A0 C9 01 A2 */	lhz r6, 0x1a2(r9)
/* 800EF168 000EA068  54 C4 07 FF */	clrlwi. r4, r6, 0x1f
/* 800EF16C 000EA06C  40 82 01 28 */	bne lbl_800EF294
/* 800EF170 000EA070  60 C4 00 01 */	ori r4, r6, 1
/* 800EF174 000EA074  38 C9 00 90 */	addi r6, r9, 0x90
/* 800EF178 000EA078  B0 89 01 A2 */	sth r4, 0x1a2(r9)
/* 800EF17C 000EA07C  38 89 01 C8 */	addi r4, r9, 0x1c8
/* 800EF180 000EA080  7C 09 03 A6 */	mtctr r0
lbl_800EF184:
/* 800EF184 000EA084  91 06 00 04 */	stw r8, 4(r6)
/* 800EF188 000EA088  91 06 00 00 */	stw r8, 0(r6)
/* 800EF18C 000EA08C  91 04 00 04 */	stw r8, 4(r4)
/* 800EF190 000EA090  91 04 00 00 */	stw r8, 0(r4)
/* 800EF194 000EA094  91 06 00 0C */	stw r8, 0xc(r6)
/* 800EF198 000EA098  91 06 00 08 */	stw r8, 8(r6)
/* 800EF19C 000EA09C  91 04 00 0C */	stw r8, 0xc(r4)
/* 800EF1A0 000EA0A0  91 04 00 08 */	stw r8, 8(r4)
/* 800EF1A4 000EA0A4  91 06 00 14 */	stw r8, 0x14(r6)
/* 800EF1A8 000EA0A8  91 06 00 10 */	stw r8, 0x10(r6)
/* 800EF1AC 000EA0AC  91 04 00 14 */	stw r8, 0x14(r4)
/* 800EF1B0 000EA0B0  91 04 00 10 */	stw r8, 0x10(r4)
/* 800EF1B4 000EA0B4  91 06 00 1C */	stw r8, 0x1c(r6)
/* 800EF1B8 000EA0B8  91 06 00 18 */	stw r8, 0x18(r6)
/* 800EF1BC 000EA0BC  91 04 00 1C */	stw r8, 0x1c(r4)
/* 800EF1C0 000EA0C0  91 04 00 18 */	stw r8, 0x18(r4)
/* 800EF1C4 000EA0C4  91 06 00 24 */	stw r8, 0x24(r6)
/* 800EF1C8 000EA0C8  91 06 00 20 */	stw r8, 0x20(r6)
/* 800EF1CC 000EA0CC  91 04 00 24 */	stw r8, 0x24(r4)
/* 800EF1D0 000EA0D0  91 04 00 20 */	stw r8, 0x20(r4)
/* 800EF1D4 000EA0D4  91 06 00 2C */	stw r8, 0x2c(r6)
/* 800EF1D8 000EA0D8  91 06 00 28 */	stw r8, 0x28(r6)
/* 800EF1DC 000EA0DC  91 04 00 2C */	stw r8, 0x2c(r4)
/* 800EF1E0 000EA0E0  91 04 00 28 */	stw r8, 0x28(r4)
/* 800EF1E4 000EA0E4  91 06 00 34 */	stw r8, 0x34(r6)
/* 800EF1E8 000EA0E8  91 06 00 30 */	stw r8, 0x30(r6)
/* 800EF1EC 000EA0EC  91 04 00 34 */	stw r8, 0x34(r4)
/* 800EF1F0 000EA0F0  91 04 00 30 */	stw r8, 0x30(r4)
/* 800EF1F4 000EA0F4  91 06 00 3C */	stw r8, 0x3c(r6)
/* 800EF1F8 000EA0F8  91 06 00 38 */	stw r8, 0x38(r6)
/* 800EF1FC 000EA0FC  91 04 00 3C */	stw r8, 0x3c(r4)
/* 800EF200 000EA100  91 04 00 38 */	stw r8, 0x38(r4)
/* 800EF204 000EA104  91 06 00 44 */	stw r8, 0x44(r6)
/* 800EF208 000EA108  91 06 00 40 */	stw r8, 0x40(r6)
/* 800EF20C 000EA10C  91 04 00 44 */	stw r8, 0x44(r4)
/* 800EF210 000EA110  91 04 00 40 */	stw r8, 0x40(r4)
/* 800EF214 000EA114  91 06 00 4C */	stw r8, 0x4c(r6)
/* 800EF218 000EA118  91 06 00 48 */	stw r8, 0x48(r6)
/* 800EF21C 000EA11C  91 04 00 4C */	stw r8, 0x4c(r4)
/* 800EF220 000EA120  91 04 00 48 */	stw r8, 0x48(r4)
/* 800EF224 000EA124  91 06 00 54 */	stw r8, 0x54(r6)
/* 800EF228 000EA128  91 06 00 50 */	stw r8, 0x50(r6)
/* 800EF22C 000EA12C  91 04 00 54 */	stw r8, 0x54(r4)
/* 800EF230 000EA130  91 04 00 50 */	stw r8, 0x50(r4)
/* 800EF234 000EA134  91 06 00 5C */	stw r8, 0x5c(r6)
/* 800EF238 000EA138  91 06 00 58 */	stw r8, 0x58(r6)
/* 800EF23C 000EA13C  91 04 00 5C */	stw r8, 0x5c(r4)
/* 800EF240 000EA140  91 04 00 58 */	stw r8, 0x58(r4)
/* 800EF244 000EA144  91 06 00 64 */	stw r8, 0x64(r6)
/* 800EF248 000EA148  91 06 00 60 */	stw r8, 0x60(r6)
/* 800EF24C 000EA14C  91 04 00 64 */	stw r8, 0x64(r4)
/* 800EF250 000EA150  91 04 00 60 */	stw r8, 0x60(r4)
/* 800EF254 000EA154  91 06 00 6C */	stw r8, 0x6c(r6)
/* 800EF258 000EA158  91 06 00 68 */	stw r8, 0x68(r6)
/* 800EF25C 000EA15C  91 04 00 6C */	stw r8, 0x6c(r4)
/* 800EF260 000EA160  91 04 00 68 */	stw r8, 0x68(r4)
/* 800EF264 000EA164  91 06 00 74 */	stw r8, 0x74(r6)
/* 800EF268 000EA168  91 06 00 70 */	stw r8, 0x70(r6)
/* 800EF26C 000EA16C  91 04 00 74 */	stw r8, 0x74(r4)
/* 800EF270 000EA170  91 04 00 70 */	stw r8, 0x70(r4)
/* 800EF274 000EA174  91 06 00 7C */	stw r8, 0x7c(r6)
/* 800EF278 000EA178  91 06 00 78 */	stw r8, 0x78(r6)
/* 800EF27C 000EA17C  38 C6 00 80 */	addi r6, r6, 0x80
/* 800EF280 000EA180  91 04 00 7C */	stw r8, 0x7c(r4)
/* 800EF284 000EA184  91 04 00 78 */	stw r8, 0x78(r4)
/* 800EF288 000EA188  38 84 00 80 */	addi r4, r4, 0x80
/* 800EF28C 000EA18C  42 00 FE F8 */	bdnz lbl_800EF184
/* 800EF290 000EA190  90 E9 01 94 */	stw r7, 0x194(r9)
lbl_800EF294:
/* 800EF294 000EA194  80 8D 83 70 */	lwz r4, __OSFpscrEnableBits-_SDA_BASE_(r13)
/* 800EF298 000EA198  80 C9 01 94 */	lwz r6, 0x194(r9)
/* 800EF29C 000EA19C  54 84 06 38 */	rlwinm r4, r4, 0, 0x18, 0x1c
/* 800EF2A0 000EA1A0  7C C4 23 78 */	or r4, r6, r4
/* 800EF2A4 000EA1A4  7C 84 28 38 */	and r4, r4, r5
/* 800EF2A8 000EA1A8  90 89 01 94 */	stw r4, 0x194(r9)
/* 800EF2AC 000EA1AC  81 29 02 FC */	lwz r9, 0x2fc(r9)
lbl_800EF2B0:
/* 800EF2B0 000EA1B0  2C 09 00 00 */	cmpwi r9, 0
/* 800EF2B4 000EA1B4  40 82 FE A4 */	bne lbl_800EF158
/* 800EF2B8 000EA1B8  80 0D 83 70 */	lwz r0, __OSFpscrEnableBits-_SDA_BASE_(r13)
/* 800EF2BC 000EA1BC  63 FF 09 00 */	ori r31, r31, 0x900
/* 800EF2C0 000EA1C0  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 800EF2C4 000EA1C4  7C 64 03 78 */	or r4, r3, r0
/* 800EF2C8 000EA1C8  48 00 00 50 */	b lbl_800EF318
lbl_800EF2CC:
/* 800EF2CC 000EA1CC  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 800EF2D0 000EA1D0  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 800EF2D4 000EA1D4  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 800EF2D8 000EA1D8  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 800EF2DC 000EA1DC  38 A0 F6 FF */	li r5, -2305
/* 800EF2E0 000EA1E0  48 00 00 24 */	b lbl_800EF304
lbl_800EF2E4:
/* 800EF2E4 000EA1E4  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 800EF2E8 000EA1E8  7C 00 28 38 */	and r0, r0, r5
/* 800EF2EC 000EA1EC  90 06 01 9C */	stw r0, 0x19c(r6)
/* 800EF2F0 000EA1F0  80 06 01 94 */	lwz r0, 0x194(r6)
/* 800EF2F4 000EA1F4  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 800EF2F8 000EA1F8  7C 00 20 38 */	and r0, r0, r4
/* 800EF2FC 000EA1FC  90 06 01 94 */	stw r0, 0x194(r6)
/* 800EF300 000EA200  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_800EF304:
/* 800EF304 000EA204  2C 06 00 00 */	cmpwi r6, 0
/* 800EF308 000EA208  40 82 FF DC */	bne lbl_800EF2E4
/* 800EF30C 000EA20C  38 00 F6 FF */	li r0, -2305
/* 800EF310 000EA210  54 64 07 6E */	rlwinm r4, r3, 0, 0x1d, 0x17
/* 800EF314 000EA214  7F FF 00 38 */	and r31, r31, r0
lbl_800EF318:
/* 800EF318 000EA218  3C 60 60 06 */	lis r3, 0x6005F8FF@ha
/* 800EF31C 000EA21C  38 03 F8 FF */	addi r0, r3, 0x6005F8FF@l
/* 800EF320 000EA220  7C 83 00 38 */	and r3, r4, r0
/* 800EF324 000EA224  48 01 B7 99 */	bl func_8010AABC
/* 800EF328 000EA228  7F E3 FB 78 */	mr r3, r31
/* 800EF32C 000EA22C  48 01 B6 F5 */	bl func_8010AA20
lbl_800EF330:
/* 800EF330 000EA230  7F A3 EB 78 */	mr r3, r29
/* 800EF334 000EA234  48 00 25 B5 */	bl OSRestoreInterrupts
/* 800EF338 000EA238  7F C3 F3 78 */	mr r3, r30
/* 800EF33C 000EA23C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EF340 000EA240  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EF344 000EA244  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EF348 000EA248  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800EF34C 000EA24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EF350 000EA250  7C 08 03 A6 */	mtlr r0
/* 800EF354 000EA254  38 21 00 20 */	addi r1, r1, 0x20
/* 800EF358 000EA258  4E 80 00 20 */	blr 

.global __OSUnhandledException
__OSUnhandledException:
/* 800EF35C 000EA25C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EF360 000EA260  7C 08 02 A6 */	mflr r0
/* 800EF364 000EA264  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EF368 000EA268  39 61 00 30 */	addi r11, r1, 0x30
/* 800EF36C 000EA26C  4B FC 29 C9 */	bl _savegpr_23
/* 800EF370 000EA270  3F E0 80 3A */	lis r31, strings_8039C388@ha
/* 800EF374 000EA274  7C 79 1B 78 */	mr r25, r3
/* 800EF378 000EA278  7C 9A 23 78 */	mr r26, r4
/* 800EF37C 000EA27C  7C BB 2B 78 */	mr r27, r5
/* 800EF380 000EA280  7C DC 33 78 */	mr r28, r6
/* 800EF384 000EA284  3B FF C3 88 */	addi r31, r31, strings_8039C388@l
/* 800EF388 000EA288  48 00 62 7D */	bl OSGetTime
/* 800EF38C 000EA28C  80 BA 01 9C */	lwz r5, 0x19c(r26)
/* 800EF390 000EA290  7C 9D 23 78 */	mr r29, r4
/* 800EF394 000EA294  7C 7E 1B 78 */	mr r30, r3
/* 800EF398 000EA298  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 800EF39C 000EA29C  40 82 00 18 */	bne lbl_800EF3B4
/* 800EF3A0 000EA2A0  7F 24 CB 78 */	mr r4, r25
/* 800EF3A4 000EA2A4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800EF3A8 000EA2A8  4C C6 31 82 */	crclr 6
/* 800EF3AC 000EA2AC  48 09 4B 6D */	bl OSReport
/* 800EF3B0 000EA2B0  48 00 01 60 */	b lbl_800EF510
lbl_800EF3B4:
/* 800EF3B4 000EA2B4  28 19 00 06 */	cmplwi r25, 6
/* 800EF3B8 000EA2B8  40 82 00 EC */	bne lbl_800EF4A4
/* 800EF3BC 000EA2BC  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 800EF3C0 000EA2C0  41 82 00 E4 */	beq lbl_800EF4A4
/* 800EF3C4 000EA2C4  3C 60 80 41 */	lis r3, __OSErrorTable@ha
/* 800EF3C8 000EA2C8  38 63 41 50 */	addi r3, r3, __OSErrorTable@l
/* 800EF3CC 000EA2CC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 800EF3D0 000EA2D0  2C 00 00 00 */	cmpwi r0, 0
/* 800EF3D4 000EA2D4  41 82 00 D0 */	beq lbl_800EF4A4
/* 800EF3D8 000EA2D8  3B 20 00 10 */	li r25, 0x10
/* 800EF3DC 000EA2DC  48 01 B6 3D */	bl func_8010AA18
/* 800EF3E0 000EA2E0  7C 77 1B 78 */	mr r23, r3
/* 800EF3E4 000EA2E4  60 63 20 00 */	ori r3, r3, 0x2000
/* 800EF3E8 000EA2E8  48 01 B6 39 */	bl func_8010AA20
/* 800EF3EC 000EA2EC  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 800EF3F0 000EA2F0  80 63 00 D8 */	lwz r3, 0x800000D8@l(r3)
/* 800EF3F4 000EA2F4  2C 03 00 00 */	cmpwi r3, 0
/* 800EF3F8 000EA2F8  41 82 00 08 */	beq lbl_800EF400
/* 800EF3FC 000EA2FC  4B FF F5 71 */	bl OSSaveFPUContext
lbl_800EF400:
/* 800EF400 000EA300  48 01 B6 9D */	bl func_8010AA9C
/* 800EF404 000EA304  3F 00 60 06 */	lis r24, 0x6005F8FF@ha
/* 800EF408 000EA308  38 18 F8 FF */	addi r0, r24, 0x6005F8FF@l
/* 800EF40C 000EA30C  7C 63 00 38 */	and r3, r3, r0
/* 800EF410 000EA310  48 01 B6 AD */	bl func_8010AABC
/* 800EF414 000EA314  7E E3 BB 78 */	mr r3, r23
/* 800EF418 000EA318  48 01 B6 09 */	bl func_8010AA20
/* 800EF41C 000EA31C  3E E0 80 00 */	lis r23, 0x800000D8@ha
/* 800EF420 000EA320  80 17 00 D8 */	lwz r0, 0x800000D8@l(r23)
/* 800EF424 000EA324  7C 00 D0 40 */	cmplw r0, r26
/* 800EF428 000EA328  40 82 00 60 */	bne lbl_800EF488
/* 800EF42C 000EA32C  48 00 4D 65 */	bl func_800F4190
/* 800EF430 000EA330  7F 44 D3 78 */	mr r4, r26
/* 800EF434 000EA334  7F 65 DB 78 */	mr r5, r27
/* 800EF438 000EA338  7F 86 E3 78 */	mr r6, r28
/* 800EF43C 000EA33C  38 60 00 10 */	li r3, 0x10
/* 800EF440 000EA340  4C C6 31 82 */	crclr 6
/* 800EF444 000EA344  3C E0 80 41 */	lis r7, __OSErrorTable@ha
/* 800EF448 000EA348  38 E7 41 50 */	addi r7, r7, __OSErrorTable@l
/* 800EF44C 000EA34C  81 87 00 40 */	lwz r12, 0x40(r7)
/* 800EF450 000EA350  7D 89 03 A6 */	mtctr r12
/* 800EF454 000EA354  4E 80 04 21 */	bctrl 
/* 800EF458 000EA358  80 9A 01 9C */	lwz r4, 0x19c(r26)
/* 800EF45C 000EA35C  38 60 00 00 */	li r3, 0
/* 800EF460 000EA360  38 18 F8 FF */	addi r0, r24, -1793
/* 800EF464 000EA364  54 84 04 E2 */	rlwinm r4, r4, 0, 0x13, 0x11
/* 800EF468 000EA368  90 9A 01 9C */	stw r4, 0x19c(r26)
/* 800EF46C 000EA36C  90 77 00 D8 */	stw r3, 0xd8(r23)
/* 800EF470 000EA370  80 7A 01 94 */	lwz r3, 0x194(r26)
/* 800EF474 000EA374  7C 60 00 38 */	and r0, r3, r0
/* 800EF478 000EA378  90 1A 01 94 */	stw r0, 0x194(r26)
/* 800EF47C 000EA37C  48 00 4D 51 */	bl func_800F41CC
/* 800EF480 000EA380  48 00 52 59 */	bl func_800F46D8
/* 800EF484 000EA384  48 00 00 18 */	b lbl_800EF49C
lbl_800EF488:
/* 800EF488 000EA388  80 7A 01 9C */	lwz r3, 0x19c(r26)
/* 800EF48C 000EA38C  38 00 00 00 */	li r0, 0
/* 800EF490 000EA390  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 800EF494 000EA394  90 7A 01 9C */	stw r3, 0x19c(r26)
/* 800EF498 000EA398  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_800EF49C:
/* 800EF49C 000EA39C  7F 43 D3 78 */	mr r3, r26
/* 800EF4A0 000EA3A0  4B FF F5 BD */	bl OSLoadContext
lbl_800EF4A4:
/* 800EF4A4 000EA3A4  3F 00 80 41 */	lis r24, __OSErrorTable@ha
/* 800EF4A8 000EA3A8  57 37 15 BA */	rlwinm r23, r25, 2, 0x16, 0x1d
/* 800EF4AC 000EA3AC  3B 18 41 50 */	addi r24, r24, __OSErrorTable@l
/* 800EF4B0 000EA3B0  7C 18 B8 2E */	lwzx r0, r24, r23
/* 800EF4B4 000EA3B4  2C 00 00 00 */	cmpwi r0, 0
/* 800EF4B8 000EA3B8  41 82 00 38 */	beq lbl_800EF4F0
/* 800EF4BC 000EA3BC  48 00 4C D5 */	bl func_800F4190
/* 800EF4C0 000EA3C0  7F 23 CB 78 */	mr r3, r25
/* 800EF4C4 000EA3C4  7F 44 D3 78 */	mr r4, r26
/* 800EF4C8 000EA3C8  7F 65 DB 78 */	mr r5, r27
/* 800EF4CC 000EA3CC  7F 86 E3 78 */	mr r6, r28
/* 800EF4D0 000EA3D0  4C C6 31 82 */	crclr 6
/* 800EF4D4 000EA3D4  7D 98 B8 2E */	lwzx r12, r24, r23
/* 800EF4D8 000EA3D8  7D 89 03 A6 */	mtctr r12
/* 800EF4DC 000EA3DC  4E 80 04 21 */	bctrl 
/* 800EF4E0 000EA3E0  48 00 4C ED */	bl func_800F41CC
/* 800EF4E4 000EA3E4  48 00 51 F5 */	bl func_800F46D8
/* 800EF4E8 000EA3E8  7F 43 D3 78 */	mr r3, r26
/* 800EF4EC 000EA3EC  4B FF F5 71 */	bl OSLoadContext
lbl_800EF4F0:
/* 800EF4F0 000EA3F0  28 19 00 08 */	cmplwi r25, 8
/* 800EF4F4 000EA3F4  40 82 00 0C */	bne lbl_800EF500
/* 800EF4F8 000EA3F8  7F 43 D3 78 */	mr r3, r26
/* 800EF4FC 000EA3FC  4B FF F5 61 */	bl OSLoadContext
lbl_800EF500:
/* 800EF500 000EA400  7F 24 CB 78 */	mr r4, r25
/* 800EF504 000EA404  38 7F 00 7C */	addi r3, r31, 0x7c
/* 800EF508 000EA408  4C C6 31 82 */	crclr 6
/* 800EF50C 000EA40C  48 09 4A 0D */	bl OSReport
lbl_800EF510:
/* 800EF510 000EA410  38 6D 83 74 */	addi r3, r13, lbl_804BD6F4-_SDA_BASE_
/* 800EF514 000EA414  4C C6 31 82 */	crclr 6
/* 800EF518 000EA418  48 09 4A 01 */	bl OSReport
/* 800EF51C 000EA41C  7F 43 D3 78 */	mr r3, r26
/* 800EF520 000EA420  4B FF F7 5D */	bl OSDumpContext
/* 800EF524 000EA424  7F 64 DB 78 */	mr r4, r27
/* 800EF528 000EA428  7F 85 E3 78 */	mr r5, r28
/* 800EF52C 000EA42C  38 7F 00 94 */	addi r3, r31, 0x94
/* 800EF530 000EA430  4C C6 31 82 */	crclr 6
/* 800EF534 000EA434  48 09 49 E5 */	bl OSReport
/* 800EF538 000EA438  7F A6 EB 78 */	mr r6, r29
/* 800EF53C 000EA43C  7F C5 F3 78 */	mr r5, r30
/* 800EF540 000EA440  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 800EF544 000EA444  4C C6 31 82 */	crclr 6
/* 800EF548 000EA448  48 09 49 D1 */	bl OSReport
/* 800EF54C 000EA44C  28 19 00 0F */	cmplwi r25, 0xf
/* 800EF550 000EA450  41 81 00 C4 */	bgt lbl_800EF614
/* 800EF554 000EA454  3C 60 80 3A */	lis r3, switch_8039C664@ha
/* 800EF558 000EA458  57 20 10 3A */	slwi r0, r25, 2
/* 800EF55C 000EA45C  38 63 C6 64 */	addi r3, r3, switch_8039C664@l
/* 800EF560 000EA460  7C 63 00 2E */	lwzx r3, r3, r0
/* 800EF564 000EA464  7C 69 03 A6 */	mtctr r3
/* 800EF568 000EA468  4E 80 04 20 */	bctr 
/* 800EF56C 000EA46C  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 800EF570 000EA470  7F 85 E3 78 */	mr r5, r28
/* 800EF574 000EA474  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 800EF578 000EA478  4C C6 31 82 */	crclr 6
/* 800EF57C 000EA47C  48 09 49 9D */	bl OSReport
/* 800EF580 000EA480  48 00 00 94 */	b lbl_800EF614
/* 800EF584 000EA484  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 800EF588 000EA488  38 7F 01 38 */	addi r3, r31, 0x138
/* 800EF58C 000EA48C  4C C6 31 82 */	crclr 6
/* 800EF590 000EA490  48 09 49 89 */	bl OSReport
/* 800EF594 000EA494  48 00 00 80 */	b lbl_800EF614
/* 800EF598 000EA498  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 800EF59C 000EA49C  7F 85 E3 78 */	mr r5, r28
/* 800EF5A0 000EA4A0  38 7F 01 84 */	addi r3, r31, 0x184
/* 800EF5A4 000EA4A4  4C C6 31 82 */	crclr 6
/* 800EF5A8 000EA4A8  48 09 49 71 */	bl OSReport
/* 800EF5AC 000EA4AC  48 00 00 68 */	b lbl_800EF614
/* 800EF5B0 000EA4B0  80 9A 01 98 */	lwz r4, 0x198(r26)
/* 800EF5B4 000EA4B4  7F 85 E3 78 */	mr r5, r28
/* 800EF5B8 000EA4B8  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 800EF5BC 000EA4BC  4C C6 31 82 */	crclr 6
/* 800EF5C0 000EA4C0  48 09 49 59 */	bl OSReport
/* 800EF5C4 000EA4C4  48 00 00 50 */	b lbl_800EF614
/* 800EF5C8 000EA4C8  38 6D 83 74 */	addi r3, r13, lbl_804BD6F4-_SDA_BASE_
/* 800EF5CC 000EA4CC  4C C6 31 82 */	crclr 6
/* 800EF5D0 000EA4D0  48 09 49 49 */	bl OSReport
/* 800EF5D4 000EA4D4  3F 20 CC 00 */	lis r25, 0xCC005030@ha
/* 800EF5D8 000EA4D8  38 7F 02 48 */	addi r3, r31, 0x248
/* 800EF5DC 000EA4DC  A0 99 50 30 */	lhz r4, 0xCC005030@l(r25)
/* 800EF5E0 000EA4E0  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 800EF5E4 000EA4E4  4C C6 31 82 */	crclr 6
/* 800EF5E8 000EA4E8  48 09 49 31 */	bl OSReport
/* 800EF5EC 000EA4EC  A0 99 50 20 */	lhz r4, 0x5020(r25)
/* 800EF5F0 000EA4F0  38 7F 02 68 */	addi r3, r31, 0x268
/* 800EF5F4 000EA4F4  A0 B9 50 22 */	lhz r5, 0x5022(r25)
/* 800EF5F8 000EA4F8  4C C6 31 82 */	crclr 6
/* 800EF5FC 000EA4FC  48 09 49 1D */	bl OSReport
/* 800EF600 000EA500  3C 80 CD 00 */	lis r4, 0xCD006014@ha
/* 800EF604 000EA504  38 7F 02 88 */	addi r3, r31, 0x288
/* 800EF608 000EA508  80 84 60 14 */	lwz r4, 0xCD006014@l(r4)
/* 800EF60C 000EA50C  4C C6 31 82 */	crclr 6
/* 800EF610 000EA510  48 09 49 09 */	bl OSReport
lbl_800EF614:
/* 800EF614 000EA514  A8 8D 9C 0C */	lha r4, lbl_804BEF8C-_SDA_BASE_(r13)
/* 800EF618 000EA518  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 800EF61C 000EA51C  80 AD 9C 08 */	lwz r5, lbl_804BEF88-_SDA_BASE_(r13)
/* 800EF620 000EA520  80 ED 9C 10 */	lwz r7, lbl_804BEF90-_SDA_BASE_(r13)
/* 800EF624 000EA524  81 0D 9C 14 */	lwz r8, lbl_804BEF94-_SDA_BASE_(r13)
/* 800EF628 000EA528  4C C6 31 82 */	crclr 6
/* 800EF62C 000EA52C  48 09 48 ED */	bl OSReport
/* 800EF630 000EA530  48 01 B4 29 */	bl func_8010AA58
/* 800EF634 000EA534  39 61 00 30 */	addi r11, r1, 0x30
/* 800EF638 000EA538  4B FC 27 49 */	bl _restgpr_23
/* 800EF63C 000EA53C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EF640 000EA540  7C 08 03 A6 */	mtlr r0
/* 800EF644 000EA544  38 21 00 30 */	addi r1, r1, 0x30
/* 800EF648 000EA548  4E 80 00 20 */	blr 
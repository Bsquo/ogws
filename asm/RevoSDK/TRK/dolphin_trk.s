.include "macros.inc"

.section .init, "ax"  # 0x80004000 - 0x800064E0

.global __TRK_reset
__TRK_reset:
/* 800060BC 000021BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800060C0 000021C0  7C 08 02 A6 */	mflr r0
/* 800060C4 000021C4  38 60 00 00 */	li r3, 0
/* 800060C8 000021C8  38 80 00 00 */	li r4, 0
/* 800060CC 000021CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800060D0 000021D0  38 A0 00 00 */	li r5, 0
/* 800060D4 000021D4  48 0E D2 55 */	bl OSResetSystem
/* 800060D8 000021D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800060DC 000021DC  7C 08 03 A6 */	mtlr r0
/* 800060E0 000021E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800060E4 000021E4  4E 80 00 20 */	blr 

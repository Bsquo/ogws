.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global __EXIFreq
__EXIFreq:
	.incbin "baserom.dol", 0x3C9CA0, 0x4

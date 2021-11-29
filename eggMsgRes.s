Analyzing: C:\Users\schif\AppData\Local\Temp\eggMsgRes.o
Header idenfication: 0x7f, ELF, 32 bit MSB v1
    type:           1, machine:         20
    version: 00000001, entry:     00000000, phoff:  00000000
    shoff:   000017f8, flags:     80000000, ehsize:       52, phentsize:  0
    phnum:          0, shentsize:       40, shnum:        13, shstrndx:  11


==> .shstrtab
    [  1]	.text
    [  7]	.rodata
    [ 15]	.data
    [ 21]	.sdata
    [ 28]	.mwcats.text
    [ 41]	.rela.text
    [ 52]	.rela.data
    [ 63]	.rela.mwcats.text
    [ 81]	.symtab
    [ 89]	.strtab
    [ 97]	.shstrtab
    [ 107]	.comment

==> .text [1]: Section Header
    type:    00000001, flags:  00000006
    address: 00000000, offset: 00000034, size: 0000096c
    link:    00000000, info:   00000000, alignment: 4, entry size: 0


==> .rodata [2]: Section Header
    type:    00000001, flags:  00000002
    address: 00000000, offset: 000009a0, size: 0000012c
    link:    00000000, info:   00000000, alignment: 8, entry size: 0


==> .data [3]: Section Header
    type:    00000001, flags:  00000003
    address: 00000000, offset: 00000ad0, size: 0000004c
    link:    00000000, info:   00000000, alignment: 8, entry size: 0


==> .sdata [4]: Section Header
    type:    00000001, flags:  00000003
    address: 00000000, offset: 00000b20, size: 00000005
    link:    00000000, info:   00000000, alignment: 8, entry size: 0


==> .mwcats.text [5]: Section Header
    type:    ca2a82c2, flags:  00000000
    address: 00000000, offset: 00000b28, size: 00000070
    link:    00000001, info:   00000000, alignment: 4, entry size: 1


==> .rela.text [6]: Section Header
    type:    00000004, flags:  00000000
    address: 00000000, offset: 00000b98, size: 000004e0
    link:    00000009, info:   00000001, alignment: 4, entry size: 12


==> .rela.data [7]: Section Header
    type:    00000004, flags:  00000000
    address: 00000000, offset: 00001078, size: 0000000c
    link:    00000009, info:   00000003, alignment: 4, entry size: 12


==> .rela.mwcats.text [8]: Section Header
    type:    00000004, flags:  00000000
    address: 00000000, offset: 00001084, size: 000000a8
    link:    00000009, info:   00000005, alignment: 4, entry size: 12


==> .symtab [9]: Section Header
    type:    00000002, flags:  00000000
    address: 00000000, offset: 0000112c, size: 00000200
    link:    0000000a, info:   00000008, alignment: 4, entry size: 16


==> .strtab [10]: Section Header
    type:    00000003, flags:  00000000
    address: 00000000, offset: 0000132c, size: 00000329
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .shstrtab [11]: Section Header
    type:    00000003, flags:  00000000
    address: 00000000, offset: 00001655, size: 00000074
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .comment [12]: Section Header
    type:    00000001, flags:  00000000
    address: 00000000, offset: 000016c9, size: 0000012c
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .strtab
    [  1]	eggMsgRes.cpp
    [ 15]	@stringBase0
    [ 28]	__vt__Q23EGG6MsgRes
    [ 48]	@STRING@getDataBlkKind__Q23EGG6MsgResFPCv
    [ 90]	@STRING@getBlkSize__Q23EGG6MsgResFPCv
    [ 128]	@STRING@getBlkSize__Q23EGG6MsgResFPCv@0
    [ 168]	__ct__Q23EGG6MsgResFPCv
    [ 192]	system_halt
    [ 204]	@STRING@getDataBlkKind__Q23EGG6MsgResFPCv@0
    [ 248]	analyzeDataBlkKind__Q23EGG6MsgResFUl
    [ 285]	__dt__Q23EGG6MsgResFv
    [ 307]	__dl__FPv
    [ 317]	analyzeTag__Q23EGG6MsgResFUsPCwPUcPUlPPv
    [ 358]	cMsgBlkMagic__Q23EGG6MsgRes
    [ 386]	getMsg__Q23EGG6MsgResFUlUl
    [ 413]	getMsgEntry__Q23EGG6MsgResFUlUl
    [ 445]	extractMsgHeader__Q23EGG6MsgResFPCv
    [ 481]	extractMsgInfoDataBlk__Q23EGG6MsgResFPCv
    [ 522]	extractMsgDataBlk__Q23EGG6MsgResFPCv
    [ 559]	extractStrAttrDataBlk__Q23EGG6MsgResFPCv
    [ 600]	extractMsgIDDataBlk__Q23EGG6MsgResFPCv
    [ 639]	extractFlowChartInfoDataBlk__Q23EGG6MsgResFPCv
    [ 686]	extractFlowLabelInfoDataBlk__Q23EGG6MsgResFPCv
    [ 733]	cIDShifts__Q23EGG6MsgRes
    [ 758]	cIDMasks__Q23EGG6MsgRes
    [ 782]	getMsgID__Q23EGG6MsgResFUs

==> .symtab
    entry  spndx   value      size   bind   type  other    shndx         name
    [   0]     0   00000000      0   LOC    NULL      0    UND           
    [   1]     1   00000000      0   LOC    FILE      0    ABS           eggMsgRes.cpp
    [   2]     0   00000000      0   LOC    SECT      0    .text         .text
    [   3]     0   00000000      0   LOC    SECT      0    .rodata       .rodata
    [   4]     0   00000000      0   LOC    SECT      0    .data         .data
    [   5]     0   00000000      0   LOC    SECT      0    .sdata        .sdata
    [   6]     0   00000000      0   LOC    SECT      0    .mwcats.text  .mwcats.text
    [   7]    15   00000040    236   LOC    OBJ       0    .rodata       @stringBase0
    [   8]    28   00000018     12   GLOB   OBJ       0    .data         __vt__Q23EGG6MsgRes
    [   9]    48   00000040     12   WEAK   OBJ       0    .data         @STRING@getDataBlkKind__Q23EGG6MsgResFPCv
    [  10]    90   00000034     12   WEAK   OBJ       0    .data         @STRING@getBlkSize__Q23EGG6MsgResFPCv
    [  11]   128   00000024     14   WEAK   OBJ       0    .data         @STRING@getBlkSize__Q23EGG6MsgResFPCv@0
    [  12]   168   00000000    636   GLOB   FUNC      0    .text         __ct__Q23EGG6MsgResFPCv
    [  13]   192   00000000      0   GLOB   NULL      0    UND           system_halt
    [  14]   204   00000000      5   WEAK   OBJ       0    .sdata        @STRING@getDataBlkKind__Q23EGG6MsgResFPCv@0
    [  15]   248   000003cc    184   GLOB   FUNC      0    .text         analyzeDataBlkKind__Q23EGG6MsgResFUl
    [  16]   285   0000027c     64   GLOB   FUNC      0    .text         __dt__Q23EGG6MsgResFv
    [  17]   307   00000000      0   GLOB   NULL      0    UND           __dl__FPv
    [  18]   317   000002bc    272   GLOB   FUNC      0    .text         analyzeTag__Q23EGG6MsgResFUsPCwPUcPUlPPv
    [  19]   358   00000000     24   GLOB   OBJ       0    .data         cMsgBlkMagic__Q23EGG6MsgRes
    [  20]   386   00000484    184   GLOB   FUNC      0    .text         getMsg__Q23EGG6MsgResFUlUl
    [  21]   413   000007a4    352   GLOB   FUNC      0    .text         getMsgEntry__Q23EGG6MsgResFUlUl
    [  22]   445   0000053c     88   GLOB   FUNC      0    .text         extractMsgHeader__Q23EGG6MsgResFPCv
    [  23]   481   00000594     88   GLOB   FUNC      0    .text         extractMsgInfoDataBlk__Q23EGG6MsgResFPCv
    [  24]   522   000005ec     88   GLOB   FUNC      0    .text         extractMsgDataBlk__Q23EGG6MsgResFPCv
    [  25]   559   00000644     88   GLOB   FUNC      0    .text         extractStrAttrDataBlk__Q23EGG6MsgResFPCv
    [  26]   600   0000069c     88   GLOB   FUNC      0    .text         extractMsgIDDataBlk__Q23EGG6MsgResFPCv
    [  27]   639   000006f4     88   GLOB   FUNC      0    .text         extractFlowChartInfoDataBlk__Q23EGG6MsgResFPCv
    [  28]   686   0000074c     88   GLOB   FUNC      0    .text         extractFlowLabelInfoDataBlk__Q23EGG6MsgResFPCv
    [  29]   733   00000000     24   GLOB   OBJ       0    .rodata       cIDShifts__Q23EGG6MsgRes
    [  30]   758   00000018     40   GLOB   OBJ       0    .rodata       cIDMasks__Q23EGG6MsgRes
    [  31]   782   00000904    104   GLOB   FUNC      0    .text         getMsgID__Q23EGG6MsgResFUs

==> .rela.text
    entry  offset   addend   type name(symbol id)
    [   0] 0000000a 00000000    6 __vt__Q23EGG6MsgRes(8)
    [   1] 00000016 00000000    4 __vt__Q23EGG6MsgRes(8)
    [   2] 0000002e 00000000    6 @stringBase0(7)
    [   3] 00000036 00000000    4 @stringBase0(7)
    [   4] 00000040 00000000   10 system_halt(13)
    [   5] 0000006e 00000000    6 @stringBase0(7)
    [   6] 00000076 00000000    4 @stringBase0(7)
    [   7] 00000080 00000000   10 system_halt(13)
    [   8] 00000092 00000000    6 @stringBase0(7)
    [   9] 0000009a 00000000    6 @STRING@getDataBlkKind__Q23EGG6MsgResFPCv(9)
    [  10] 0000009e 00000000    6 @STRING@getBlkSize__Q23EGG6MsgResFPCv(10)
    [  11] 000000a2 00000000    6 @STRING@getBlkSize__Q23EGG6MsgResFPCv@0(11)
    [  12] 000000be 00000000    4 @stringBase0(7)
    [  13] 000000cc 00000000   10 system_halt(13)
    [  14] 000000da 00000000    4 @STRING@getDataBlkKind__Q23EGG6MsgResFPCv(9)
    [  15] 000000e0 00000000  109 @STRING@getDataBlkKind__Q23EGG6MsgResFPCv@0(14)
    [  16] 000000e8 00000000   10 system_halt(13)
    [  17] 000000f4 00000000   10 analyzeDataBlkKind__Q23EGG6MsgResFUl(15)
    [  18] 00000136 00000000    4 @stringBase0(7)
    [  19] 00000144 00000000   10 system_halt(13)
    [  20] 0000015e 00000000    4 @stringBase0(7)
    [  21] 0000016c 00000000   10 system_halt(13)
    [  22] 00000186 00000000    4 @stringBase0(7)
    [  23] 00000194 00000000   10 system_halt(13)
    [  24] 000001ae 00000000    4 @stringBase0(7)
    [  25] 000001bc 00000000   10 system_halt(13)
    [  26] 000001d6 00000000    4 @stringBase0(7)
    [  27] 000001e4 00000000   10 system_halt(13)
    [  28] 000001fe 00000000    4 @stringBase0(7)
    [  29] 0000020c 00000000   10 system_halt(13)
    [  30] 0000021e 00000000    4 @stringBase0(7)
    [  31] 0000022c 00000000   10 system_halt(13)
    [  32] 0000023e 00000000    4 @STRING@getBlkSize__Q23EGG6MsgResFPCv(10)
    [  33] 00000242 00000000    4 @STRING@getBlkSize__Q23EGG6MsgResFPCv@0(11)
    [  34] 0000024c 00000000   10 system_halt(13)
    [  35] 000002a0 00000000   10 __dl__FPv(17)
    [  36] 000002ea 00000000    6 @stringBase0(7)
    [  37] 000002f2 00000000    4 @stringBase0(7)
    [  38] 000002fc 00000000   10 system_halt(13)
    [  39] 0000030a 00000000    6 @stringBase0(7)
    [  40] 00000312 00000000    4 @stringBase0(7)
    [  41] 0000031c 00000000   10 system_halt(13)
    [  42] 0000032a 00000000    6 @stringBase0(7)
    [  43] 00000332 00000000    4 @stringBase0(7)
    [  44] 0000033c 00000000   10 system_halt(13)
    [  45] 0000034a 00000000    6 @stringBase0(7)
    [  46] 00000352 00000000    4 @stringBase0(7)
    [  47] 0000035c 00000000   10 system_halt(13)
    [  48] 0000036a 00000000    6 @stringBase0(7)
    [  49] 00000372 00000000    4 @stringBase0(7)
    [  50] 0000037c 00000000   10 system_halt(13)
    [  51] 000003d6 00000000    6 cMsgBlkMagic__Q23EGG6MsgRes(19)
    [  52] 000003de 00000000    4 cMsgBlkMagic__Q23EGG6MsgRes(19)
    [  53] 000003f2 00000000    4 cMsgBlkMagic__Q23EGG6MsgRes(19)
    [  54] 0000045a 00000000    6 @stringBase0(7)
    [  55] 00000462 00000000    4 @stringBase0(7)
    [  56] 0000046c 00000000   10 system_halt(13)
    [  57] 000004ba 00000000    6 @stringBase0(7)
    [  58] 000004c2 00000000    4 @stringBase0(7)
    [  59] 000004cc 00000000   10 system_halt(13)
    [  60] 000004dc 00000000   10 getMsgEntry__Q23EGG6MsgResFUlUl(21)
    [  61] 000004ee 00000000    6 @stringBase0(7)
    [  62] 000004f6 00000000    4 @stringBase0(7)
    [  63] 00000508 00000000   10 system_halt(13)
    [  64] 00000562 00000000    6 @stringBase0(7)
    [  65] 0000056a 00000000    4 @stringBase0(7)
    [  66] 00000574 00000000   10 system_halt(13)
    [  67] 000005ba 00000000    6 @stringBase0(7)
    [  68] 000005c2 00000000    4 @stringBase0(7)
    [  69] 000005cc 00000000   10 system_halt(13)
    [  70] 00000612 00000000    6 @stringBase0(7)
    [  71] 0000061a 00000000    4 @stringBase0(7)
    [  72] 00000624 00000000   10 system_halt(13)
    [  73] 0000066a 00000000    6 @stringBase0(7)
    [  74] 00000672 00000000    4 @stringBase0(7)
    [  75] 0000067c 00000000   10 system_halt(13)
    [  76] 000006c2 00000000    6 @stringBase0(7)
    [  77] 000006ca 00000000    4 @stringBase0(7)
    [  78] 000006d4 00000000   10 system_halt(13)
    [  79] 0000071a 00000000    6 @stringBase0(7)
    [  80] 00000722 00000000    4 @stringBase0(7)
    [  81] 0000072c 00000000   10 system_halt(13)
    [  82] 00000772 00000000    6 @stringBase0(7)
    [  83] 0000077a 00000000    4 @stringBase0(7)
    [  84] 00000784 00000000   10 system_halt(13)
    [  85] 000007ce 00000000    6 @stringBase0(7)
    [  86] 000007d6 00000000    4 @stringBase0(7)
    [  87] 000007e0 00000000   10 system_halt(13)
    [  88] 000007f2 00000000    6 @stringBase0(7)
    [  89] 000007fa 00000000    4 @stringBase0(7)
    [  90] 00000804 00000000   10 system_halt(13)
    [  91] 0000080e 00000000    6 cIDShifts__Q23EGG6MsgRes(29)
    [  92] 00000812 00000000    6 cIDMasks__Q23EGG6MsgRes(30)
    [  93] 0000081e 00000000    4 cIDShifts__Q23EGG6MsgRes(29)
    [  94] 00000822 00000000    4 cIDMasks__Q23EGG6MsgRes(30)
    [  95] 00000826 00000000    6 @stringBase0(7)
    [  96] 00000852 00000000    4 @stringBase0(7)
    [  97] 00000860 00000000   10 system_halt(13)
    [  98] 000008a6 00000000    6 @stringBase0(7)
    [  99] 000008ae 00000000    4 @stringBase0(7)
    [ 100] 000008b8 00000000   10 system_halt(13)
    [ 101] 0000092e 00000000    6 @stringBase0(7)
    [ 102] 00000936 00000000    4 @stringBase0(7)
    [ 103] 00000940 00000000   10 system_halt(13)

==> .text

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="__ct__Q23EGG6MsgResFPCv"  Size=636
00000000: 9421FFD0  stwu     rsp,-48(rsp)
00000004: 7C0802A6  mflr     r0
00000008: 3CA00000  lis      r5,__vt__Q23EGG6MsgRes@ha
0000000C: 2C040000  cmpwi    r4,0x0000
00000010: 90010034  stw      r0,52(rsp)
00000014: 38A50000  addi     r5,r5,__vt__Q23EGG6MsgRes@l
00000018: BEC10008  stmw     r22,8(rsp)
0000001C: 7C761B78  mr       r22,r3
00000020: 7C972378  mr       r23,r4
00000024: 90A3001C  stw      r5,28(r3)
00000028: 4082001C  bne      *+28                    ; 0x00000044
0000002C: 3C600000  lis      r3,@stringBase0@ha
00000030: 38800035  li       r4,53
00000034: 38630000  addi     r3,r3,@stringBase0@l
00000038: 38A3000E  addi     r5,r3,14
0000003C: 4CC63182  crxor    6,6,6
00000040: 48000001  bl       system_halt
00000044: 38000000  li       r0,0
00000048: 2C170000  cmpwi    r23,0x0000
0000004C: 90160000  stw      r0,0(r22)
00000050: 90160004  stw      r0,4(r22)
00000054: 90160008  stw      r0,8(r22)
00000058: 9016000C  stw      r0,12(r22)
0000005C: 90160010  stw      r0,16(r22)
00000060: 90160014  stw      r0,20(r22)
00000064: 90160018  stw      r0,24(r22)
00000068: 4082001C  bne      *+28                    ; 0x00000084
0000006C: 3C600000  lis      r3,@stringBase0@ha
00000070: 388000DF  li       r4,223
00000074: 38630000  addi     r3,r3,@stringBase0@l
00000078: 38A3000E  addi     r5,r3,14
0000007C: 4CC63182  crxor    6,6,6
00000080: 48000001  bl       system_halt
00000084: 92F60000  stw      r23,0(r22)
00000088: 3B770020  addi     r27,r23,32
0000008C: 3B200000  li       r25,0
00000090: 3FA00000  lis      r29,@stringBase0@ha
00000094: 8357000C  lwz      r26,12(r23)
00000098: 3F800000  lis      r28,@STRING@getDataBlkKind__Q23EGG6MsgResFPCv@ha
0000009C: 3FC00000  lis      r30,@STRING@getBlkSize__Q23EGG6MsgResFPCv@ha
000000A0: 3FE00000  lis      r31,@STRING@getBlkSize__Q23EGG6MsgResFPCv@0@ha
000000A4: 480001B8  b        *+440                   ; 0x0000025C
000000A8: 80760000  lwz      r3,0(r22)
000000AC: 80030008  lwz      r0,8(r3)
000000B0: 7C170214  add      r0,r23,r0
000000B4: 7C00D840  cmplw    r0,r27
000000B8: 41810018  bgt      *+24                    ; 0x000000D0
000000BC: 387D0000  addi     r3,r29,@stringBase0@l
000000C0: 38800047  li       r4,71
000000C4: 38A30013  addi     r5,r3,19
000000C8: 4CC63182  crxor    6,6,6
000000CC: 48000001  bl       system_halt
000000D0: 2C1B0000  cmpwi    r27,0x0000
000000D4: 40820018  bne      *+24                    ; 0x000000EC
000000D8: 387C0000  addi     r3,r28,@STRING@getDataBlkKind__Q23EGG6MsgResFPCv@l
000000DC: 3880010F  li       r4,271
000000E0: 38A00000  li       r5,@STRING@getDataBlkKind__Q23EGG6MsgResFPCv@0@sda21
000000E4: 4CC63182  crxor    6,6,6
000000E8: 48000001  bl       system_halt
000000EC: 809B0000  lwz      r4,0(r27)
000000F0: 7EC3B378  mr       r3,r22
000000F4: 48000001  bl       analyzeDataBlkKind__Q23EGG6MsgResFUl
000000F8: 2C030003  cmpwi    r3,0x0003
000000FC: 41820030  beq      *+48                    ; 0x0000012C
00000100: 4080001C  bge      *+28                    ; 0x0000011C
00000104: 2C030001  cmpwi    r3,0x0001
00000108: 4182004C  beq      *+76                    ; 0x00000154
0000010C: 40800098  bge      *+152                   ; 0x000001A4
00000110: 2C030000  cmpwi    r3,0x0000
00000114: 40800068  bge      *+104                   ; 0x0000017C
00000118: 48000104  b        *+260                   ; 0x0000021C
0000011C: 2C030005  cmpwi    r3,0x0005
00000120: 418200AC  beq      *+172                   ; 0x000001CC
00000124: 408000F8  bge      *+248                   ; 0x0000021C
00000128: 480000CC  b        *+204                   ; 0x000001F4
0000012C: 2C1B0000  cmpwi    r27,0x0000
00000130: 40820018  bne      *+24                    ; 0x00000148
00000134: 387D0000  addi     r3,r29,@stringBase0@l
00000138: 38800135  li       r4,309
0000013C: 38A3000E  addi     r5,r3,14
00000140: 4CC63182  crxor    6,6,6
00000144: 48000001  bl       system_halt
00000148: 93760010  stw      r27,16(r22)
0000014C: 7F78DB78  mr       r24,r27
00000150: 480000E4  b        *+228                   ; 0x00000234
00000154: 2C1B0000  cmpwi    r27,0x0000
00000158: 40820018  bne      *+24                    ; 0x00000170
0000015C: 387D0000  addi     r3,r29,@stringBase0@l
00000160: 38800115  li       r4,277
00000164: 38A3000E  addi     r5,r3,14
00000168: 4CC63182  crxor    6,6,6
0000016C: 48000001  bl       system_halt
00000170: 93760008  stw      r27,8(r22)
00000174: 83160010  lwz      r24,16(r22)
00000178: 480000BC  b        *+188                   ; 0x00000234
0000017C: 2C1B0000  cmpwi    r27,0x0000
00000180: 40820018  bne      *+24                    ; 0x00000198
00000184: 387D0000  addi     r3,r29,@stringBase0@l
00000188: 388000FB  li       r4,251
0000018C: 38A3000E  addi     r5,r3,14
00000190: 4CC63182  crxor    6,6,6
00000194: 48000001  bl       system_halt
00000198: 93760004  stw      r27,4(r22)
0000019C: 7F78DB78  mr       r24,r27
000001A0: 48000094  b        *+148                   ; 0x00000234
000001A4: 2C1B0000  cmpwi    r27,0x0000
000001A8: 40820018  bne      *+24                    ; 0x000001C0
000001AC: 387D0000  addi     r3,r29,@stringBase0@l
000001B0: 3880012A  li       r4,298
000001B4: 38A3000E  addi     r5,r3,14
000001B8: 4CC63182  crxor    6,6,6
000001BC: 48000001  bl       system_halt
000001C0: 9376000C  stw      r27,12(r22)
000001C4: 7F78DB78  mr       r24,r27
000001C8: 4800006C  b        *+108                   ; 0x00000234
000001CC: 2C1B0000  cmpwi    r27,0x0000
000001D0: 40820018  bne      *+24                    ; 0x000001E8
000001D4: 387D0000  addi     r3,r29,@stringBase0@l
000001D8: 38800159  li       r4,345
000001DC: 38A3000E  addi     r5,r3,14
000001E0: 4CC63182  crxor    6,6,6
000001E4: 48000001  bl       system_halt
000001E8: 93760018  stw      r27,24(r22)
000001EC: 7F78DB78  mr       r24,r27
000001F0: 48000044  b        *+68                    ; 0x00000234
000001F4: 2C1B0000  cmpwi    r27,0x0000
000001F8: 40820018  bne      *+24                    ; 0x00000210
000001FC: 387D0000  addi     r3,r29,@stringBase0@l
00000200: 3880014E  li       r4,334
00000204: 38A3000E  addi     r5,r3,14
00000208: 4CC63182  crxor    6,6,6
0000020C: 48000001  bl       system_halt
00000210: 93760014  stw      r27,20(r22)
00000214: 7F78DB78  mr       r24,r27
00000218: 4800001C  b        *+28                    ; 0x00000234
0000021C: 387D0000  addi     r3,r29,@stringBase0@l
00000220: 3880007D  li       r4,125
00000224: 38A30048  addi     r5,r3,72
00000228: 4CC63182  crxor    6,6,6
0000022C: 48000001  bl       system_halt
00000230: 3B000000  li       r24,0
00000234: 2C180000  cmpwi    r24,0x0000
00000238: 40820018  bne      *+24                    ; 0x00000250
0000023C: 387E0000  addi     r3,r30,@STRING@getBlkSize__Q23EGG6MsgResFPCv@l
00000240: 38BF0000  addi     r5,r31,@STRING@getBlkSize__Q23EGG6MsgResFPCv@0@l
00000244: 38800104  li       r4,260
00000248: 4CC63182  crxor    6,6,6
0000024C: 48000001  bl       system_halt
00000250: 80180004  lwz      r0,4(r24)
00000254: 3B390001  addi     r25,r25,1
00000258: 7F7B0214  add      r27,r27,r0
0000025C: 7C19D040  cmplw    r25,r26
00000260: 4180FE48  blt      *-440                   ; 0x000000A8
00000264: 7EC3B378  mr       r3,r22
00000268: BAC10008  lmw      r22,8(rsp)
0000026C: 80010034  lwz      r0,52(rsp)
00000270: 7C0803A6  mtlr     r0
00000274: 38210030  addi     rsp,rsp,48
00000278: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="__dt__Q23EGG6MsgResFv"  Size=64
0000027C: 9421FFF0  stwu     rsp,-16(rsp)
00000280: 7C0802A6  mflr     r0
00000284: 2C030000  cmpwi    r3,0x0000
00000288: 90010014  stw      r0,20(rsp)
0000028C: 93E1000C  stw      r31,12(rsp)
00000290: 7C7F1B78  mr       r31,r3
00000294: 41820010  beq      *+16                    ; 0x000002A4
00000298: 2C040000  cmpwi    r4,0x0000
0000029C: 40810008  ble      *+8                     ; 0x000002A4
000002A0: 48000001  bl       __dl__FPv
000002A4: 7FE3FB78  mr       r3,r31
000002A8: 83E1000C  lwz      r31,12(rsp)
000002AC: 80010014  lwz      r0,20(rsp)
000002B0: 7C0803A6  mtlr     r0
000002B4: 38210010  addi     rsp,rsp,16
000002B8: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="analyzeTag__Q23EGG6MsgResFUsPCwPUcPUlPPv"  Size=272
000002BC: 9421FFE0  stwu     rsp,-32(rsp)
000002C0: 7C0802A6  mflr     r0
000002C4: 2C040000  cmpwi    r4,0x0000
000002C8: 90010024  stw      r0,36(rsp)
000002CC: BF61000C  stmw     r27,12(rsp)
000002D0: 7C7B1B78  mr       r27,r3
000002D4: 7C9C2378  mr       r28,r4
000002D8: 7CBD2B78  mr       r29,r5
000002DC: 7CDE3378  mr       r30,r6
000002E0: 7CFF3B78  mr       r31,r7
000002E4: 4082001C  bne      *+28                    ; 0x00000300
000002E8: 3C600000  lis      r3,@stringBase0@ha
000002EC: 3880009F  li       r4,159
000002F0: 38630000  addi     r3,r3,@stringBase0@l
000002F4: 38A3005C  addi     r5,r3,92
000002F8: 4CC63182  crxor    6,6,6
000002FC: 48000001  bl       system_halt
00000300: 2C1D0000  cmpwi    r29,0x0000
00000304: 4082001C  bne      *+28                    ; 0x00000320
00000308: 3C600000  lis      r3,@stringBase0@ha
0000030C: 388000A0  li       r4,160
00000310: 38630000  addi     r3,r3,@stringBase0@l
00000314: 38A30060  addi     r5,r3,96
00000318: 4CC63182  crxor    6,6,6
0000031C: 48000001  bl       system_halt
00000320: 2C1E0000  cmpwi    r30,0x0000
00000324: 4082001C  bne      *+28                    ; 0x00000340
00000328: 3C600000  lis      r3,@stringBase0@ha
0000032C: 388000A1  li       r4,161
00000330: 38630000  addi     r3,r3,@stringBase0@l
00000334: 38A3006A  addi     r5,r3,106
00000338: 4CC63182  crxor    6,6,6
0000033C: 48000001  bl       system_halt
00000340: 2C1F0000  cmpwi    r31,0x0000
00000344: 4082001C  bne      *+28                    ; 0x00000360
00000348: 3C600000  lis      r3,@stringBase0@ha
0000034C: 388000A2  li       r4,162
00000350: 38630000  addi     r3,r3,@stringBase0@l
00000354: 38A30070  addi     r5,r3,112
00000358: 4CC63182  crxor    6,6,6
0000035C: 48000001  bl       system_halt
00000360: 2C1B001A  cmpwi    r27,0x001a
00000364: 4182001C  beq      *+28                    ; 0x00000380
00000368: 3C600000  lis      r3,@stringBase0@ha
0000036C: 388000A3  li       r4,163
00000370: 38630000  addi     r3,r3,@stringBase0@l
00000374: 38A30076  addi     r5,r3,118
00000378: 4CC63182  crxor    6,6,6
0000037C: 48000001  bl       system_halt
00000380: A07C0000  lhz      r3,0(r28)
00000384: 3803FFFE  subi     r0,r3,2
00000388: 981D0000  stb      r0,0(r29)
0000038C: 801C0000  lwz      r0,0(r28)
00000390: 5400023E  clrlwi   r0,r0,8                 ; rlwinm     r0,r0,0,8,31
00000394: 901E0000  stw      r0,0(r30)
00000398: 881D0000  lbz      r0,0(r29)
0000039C: 28000004  cmplwi   r0,0x0004
000003A0: 40810010  ble      *+16                    ; 0x000003B0
000003A4: 381C0004  addi     r0,r28,4
000003A8: 901F0000  stw      r0,0(r31)
000003AC: 4800000C  b        *+12                    ; 0x000003B8
000003B0: 38000000  li       r0,0
000003B4: 901F0000  stw      r0,0(r31)
000003B8: BB61000C  lmw      r27,12(rsp)
000003BC: 80010024  lwz      r0,36(rsp)
000003C0: 7C0803A6  mtlr     r0
000003C4: 38210020  addi     rsp,rsp,32
000003C8: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="analyzeDataBlkKind__Q23EGG6MsgResFUl"  Size=184
000003CC: 9421FFF0  stwu     rsp,-16(rsp)
000003D0: 7C0802A6  mflr     r0
000003D4: 3C600000  lis      r3,cMsgBlkMagic__Q23EGG6MsgRes@ha
000003D8: 90010014  stw      r0,20(rsp)
000003DC: 80030000  lwz      r0,cMsgBlkMagic__Q23EGG6MsgRes@l(r3)
000003E0: 7C040040  cmplw    r4,r0
000003E4: 4082000C  bne      *+12                    ; 0x000003F0
000003E8: 38600000  li       r3,0
000003EC: 48000088  b        *+136                   ; 0x00000474
000003F0: 38630000  addi     r3,r3,cMsgBlkMagic__Q23EGG6MsgRes@l
000003F4: 80030004  lwz      r0,4(r3)
000003F8: 7C040040  cmplw    r4,r0
000003FC: 4082000C  bne      *+12                    ; 0x00000408
00000400: 38600001  li       r3,1
00000404: 48000070  b        *+112                   ; 0x00000474
00000408: 80030008  lwz      r0,8(r3)
0000040C: 7C040040  cmplw    r4,r0
00000410: 4082000C  bne      *+12                    ; 0x0000041C
00000414: 38600002  li       r3,2
00000418: 4800005C  b        *+92                    ; 0x00000474
0000041C: 8003000C  lwz      r0,12(r3)
00000420: 7C040040  cmplw    r4,r0
00000424: 4082000C  bne      *+12                    ; 0x00000430
00000428: 38600003  li       r3,3
0000042C: 48000048  b        *+72                    ; 0x00000474
00000430: 80030010  lwz      r0,16(r3)
00000434: 7C040040  cmplw    r4,r0
00000438: 4082000C  bne      *+12                    ; 0x00000444
0000043C: 38600004  li       r3,4
00000440: 48000034  b        *+52                    ; 0x00000474
00000444: 80030014  lwz      r0,20(r3)
00000448: 7C040040  cmplw    r4,r0
0000044C: 4082000C  bne      *+12                    ; 0x00000458
00000450: 38600005  li       r3,5
00000454: 48000020  b        *+32                    ; 0x00000474
00000458: 3C600000  lis      r3,@stringBase0@ha
0000045C: 3880016E  li       r4,366
00000460: 38630000  addi     r3,r3,@stringBase0@l
00000464: 38A30048  addi     r5,r3,72
00000468: 4CC63182  crxor    6,6,6
0000046C: 48000001  bl       system_halt
00000470: 38600006  li       r3,6
00000474: 80010014  lwz      r0,20(rsp)
00000478: 7C0803A6  mtlr     r0
0000047C: 38210010  addi     rsp,rsp,16
00000480: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="getMsg__Q23EGG6MsgResFUlUl"  Size=184
00000484: 9421FFE0  stwu     rsp,-32(rsp)
00000488: 7C0802A6  mflr     r0
0000048C: 90010024  stw      r0,36(rsp)
00000490: 93E1001C  stw      r31,28(rsp)
00000494: 93C10018  stw      r30,24(rsp)
00000498: 7CBE2B78  mr       r30,r5
0000049C: 93A10014  stw      r29,20(rsp)
000004A0: 7C9D2378  mr       r29,r4
000004A4: 93810010  stw      r28,16(rsp)
000004A8: 7C7C1B78  mr       r28,r3
000004AC: 80030008  lwz      r0,8(r3)
000004B0: 2C000000  cmpwi    r0,0x0000
000004B4: 4082001C  bne      *+28                    ; 0x000004D0
000004B8: 3C600000  lis      r3,@stringBase0@ha
000004BC: 388000BD  li       r4,189
000004C0: 38630000  addi     r3,r3,@stringBase0@l
000004C4: 38A30087  addi     r5,r3,135
000004C8: 4CC63182  crxor    6,6,6
000004CC: 48000001  bl       system_halt
000004D0: 7F83E378  mr       r3,r28
000004D4: 7FA4EB78  mr       r4,r29
000004D8: 7FC5F378  mr       r5,r30
000004DC: 48000001  bl       getMsgEntry__Q23EGG6MsgResFUlUl
000004E0: 2C030000  cmpwi    r3,0x0000
000004E4: 7C7F1B78  mr       r31,r3
000004E8: 40820024  bne      *+36                    ; 0x0000050C
000004EC: 3C600000  lis      r3,@stringBase0@ha
000004F0: 7FA6EB78  mr       r6,r29
000004F4: 38630000  addi     r3,r3,@stringBase0@l
000004F8: 7FC7F378  mr       r7,r30
000004FC: 38A30093  addi     r5,r3,147
00000500: 388000C0  li       r4,192
00000504: 4CC63182  crxor    6,6,6
00000508: 48000001  bl       system_halt
0000050C: 801F0000  lwz      r0,0(r31)
00000510: 807C0008  lwz      r3,8(r28)
00000514: 83E1001C  lwz      r31,28(rsp)
00000518: 7C630214  add      r3,r3,r0
0000051C: 83C10018  lwz      r30,24(rsp)
00000520: 83A10014  lwz      r29,20(rsp)
00000524: 38630008  addi     r3,r3,8
00000528: 83810010  lwz      r28,16(rsp)
0000052C: 80010024  lwz      r0,36(rsp)
00000530: 7C0803A6  mtlr     r0
00000534: 38210020  addi     rsp,rsp,32
00000538: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractMsgHeader__Q23EGG6MsgResFPCv"  Size=88
0000053C: 9421FFF0  stwu     rsp,-16(rsp)
00000540: 7C0802A6  mflr     r0
00000544: 2C040000  cmpwi    r4,0x0000
00000548: 90010014  stw      r0,20(rsp)
0000054C: 93E1000C  stw      r31,12(rsp)
00000550: 7C9F2378  mr       r31,r4
00000554: 93C10008  stw      r30,8(rsp)
00000558: 7C7E1B78  mr       r30,r3
0000055C: 4082001C  bne      *+28                    ; 0x00000578
00000560: 3C600000  lis      r3,@stringBase0@ha
00000564: 388000DF  li       r4,223
00000568: 38630000  addi     r3,r3,@stringBase0@l
0000056C: 38A3000E  addi     r5,r3,14
00000570: 4CC63182  crxor    6,6,6
00000574: 48000001  bl       system_halt
00000578: 93FE0000  stw      r31,0(r30)
0000057C: 83E1000C  lwz      r31,12(rsp)
00000580: 83C10008  lwz      r30,8(rsp)
00000584: 80010014  lwz      r0,20(rsp)
00000588: 7C0803A6  mtlr     r0
0000058C: 38210010  addi     rsp,rsp,16
00000590: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractMsgInfoDataBlk__Q23EGG6MsgResFPCv"  Size=88
00000594: 9421FFF0  stwu     rsp,-16(rsp)
00000598: 7C0802A6  mflr     r0
0000059C: 2C040000  cmpwi    r4,0x0000
000005A0: 90010014  stw      r0,20(rsp)
000005A4: 93E1000C  stw      r31,12(rsp)
000005A8: 7C9F2378  mr       r31,r4
000005AC: 93C10008  stw      r30,8(rsp)
000005B0: 7C7E1B78  mr       r30,r3
000005B4: 4082001C  bne      *+28                    ; 0x000005D0
000005B8: 3C600000  lis      r3,@stringBase0@ha
000005BC: 388000FB  li       r4,251
000005C0: 38630000  addi     r3,r3,@stringBase0@l
000005C4: 38A3000E  addi     r5,r3,14
000005C8: 4CC63182  crxor    6,6,6
000005CC: 48000001  bl       system_halt
000005D0: 93FE0004  stw      r31,4(r30)
000005D4: 83E1000C  lwz      r31,12(rsp)
000005D8: 83C10008  lwz      r30,8(rsp)
000005DC: 80010014  lwz      r0,20(rsp)
000005E0: 7C0803A6  mtlr     r0
000005E4: 38210010  addi     rsp,rsp,16
000005E8: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractMsgDataBlk__Q23EGG6MsgResFPCv"  Size=88
000005EC: 9421FFF0  stwu     rsp,-16(rsp)
000005F0: 7C0802A6  mflr     r0
000005F4: 2C040000  cmpwi    r4,0x0000
000005F8: 90010014  stw      r0,20(rsp)
000005FC: 93E1000C  stw      r31,12(rsp)
00000600: 7C9F2378  mr       r31,r4
00000604: 93C10008  stw      r30,8(rsp)
00000608: 7C7E1B78  mr       r30,r3
0000060C: 4082001C  bne      *+28                    ; 0x00000628
00000610: 3C600000  lis      r3,@stringBase0@ha
00000614: 38800115  li       r4,277
00000618: 38630000  addi     r3,r3,@stringBase0@l
0000061C: 38A3000E  addi     r5,r3,14
00000620: 4CC63182  crxor    6,6,6
00000624: 48000001  bl       system_halt
00000628: 93FE0008  stw      r31,8(r30)
0000062C: 83E1000C  lwz      r31,12(rsp)
00000630: 83C10008  lwz      r30,8(rsp)
00000634: 80010014  lwz      r0,20(rsp)
00000638: 7C0803A6  mtlr     r0
0000063C: 38210010  addi     rsp,rsp,16
00000640: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractStrAttrDataBlk__Q23EGG6MsgResFPCv"  Size=88
00000644: 9421FFF0  stwu     rsp,-16(rsp)
00000648: 7C0802A6  mflr     r0
0000064C: 2C040000  cmpwi    r4,0x0000
00000650: 90010014  stw      r0,20(rsp)
00000654: 93E1000C  stw      r31,12(rsp)
00000658: 7C9F2378  mr       r31,r4
0000065C: 93C10008  stw      r30,8(rsp)
00000660: 7C7E1B78  mr       r30,r3
00000664: 4082001C  bne      *+28                    ; 0x00000680
00000668: 3C600000  lis      r3,@stringBase0@ha
0000066C: 3880012A  li       r4,298
00000670: 38630000  addi     r3,r3,@stringBase0@l
00000674: 38A3000E  addi     r5,r3,14
00000678: 4CC63182  crxor    6,6,6
0000067C: 48000001  bl       system_halt
00000680: 93FE000C  stw      r31,12(r30)
00000684: 83E1000C  lwz      r31,12(rsp)
00000688: 83C10008  lwz      r30,8(rsp)
0000068C: 80010014  lwz      r0,20(rsp)
00000690: 7C0803A6  mtlr     r0
00000694: 38210010  addi     rsp,rsp,16
00000698: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractMsgIDDataBlk__Q23EGG6MsgResFPCv"  Size=88
0000069C: 9421FFF0  stwu     rsp,-16(rsp)
000006A0: 7C0802A6  mflr     r0
000006A4: 2C040000  cmpwi    r4,0x0000
000006A8: 90010014  stw      r0,20(rsp)
000006AC: 93E1000C  stw      r31,12(rsp)
000006B0: 7C9F2378  mr       r31,r4
000006B4: 93C10008  stw      r30,8(rsp)
000006B8: 7C7E1B78  mr       r30,r3
000006BC: 4082001C  bne      *+28                    ; 0x000006D8
000006C0: 3C600000  lis      r3,@stringBase0@ha
000006C4: 38800135  li       r4,309
000006C8: 38630000  addi     r3,r3,@stringBase0@l
000006CC: 38A3000E  addi     r5,r3,14
000006D0: 4CC63182  crxor    6,6,6
000006D4: 48000001  bl       system_halt
000006D8: 93FE0010  stw      r31,16(r30)
000006DC: 83E1000C  lwz      r31,12(rsp)
000006E0: 83C10008  lwz      r30,8(rsp)
000006E4: 80010014  lwz      r0,20(rsp)
000006E8: 7C0803A6  mtlr     r0
000006EC: 38210010  addi     rsp,rsp,16
000006F0: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractFlowChartInfoDataBlk__Q23EGG6MsgResFPCv"  Size=88
000006F4: 9421FFF0  stwu     rsp,-16(rsp)
000006F8: 7C0802A6  mflr     r0
000006FC: 2C040000  cmpwi    r4,0x0000
00000700: 90010014  stw      r0,20(rsp)
00000704: 93E1000C  stw      r31,12(rsp)
00000708: 7C9F2378  mr       r31,r4
0000070C: 93C10008  stw      r30,8(rsp)
00000710: 7C7E1B78  mr       r30,r3
00000714: 4082001C  bne      *+28                    ; 0x00000730
00000718: 3C600000  lis      r3,@stringBase0@ha
0000071C: 3880014E  li       r4,334
00000720: 38630000  addi     r3,r3,@stringBase0@l
00000724: 38A3000E  addi     r5,r3,14
00000728: 4CC63182  crxor    6,6,6
0000072C: 48000001  bl       system_halt
00000730: 93FE0014  stw      r31,20(r30)
00000734: 83E1000C  lwz      r31,12(rsp)
00000738: 83C10008  lwz      r30,8(rsp)
0000073C: 80010014  lwz      r0,20(rsp)
00000740: 7C0803A6  mtlr     r0
00000744: 38210010  addi     rsp,rsp,16
00000748: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="extractFlowLabelInfoDataBlk__Q23EGG6MsgResFPCv"  Size=88
0000074C: 9421FFF0  stwu     rsp,-16(rsp)
00000750: 7C0802A6  mflr     r0
00000754: 2C040000  cmpwi    r4,0x0000
00000758: 90010014  stw      r0,20(rsp)
0000075C: 93E1000C  stw      r31,12(rsp)
00000760: 7C9F2378  mr       r31,r4
00000764: 93C10008  stw      r30,8(rsp)
00000768: 7C7E1B78  mr       r30,r3
0000076C: 4082001C  bne      *+28                    ; 0x00000788
00000770: 3C600000  lis      r3,@stringBase0@ha
00000774: 38800159  li       r4,345
00000778: 38630000  addi     r3,r3,@stringBase0@l
0000077C: 38A3000E  addi     r5,r3,14
00000780: 4CC63182  crxor    6,6,6
00000784: 48000001  bl       system_halt
00000788: 93FE0018  stw      r31,24(r30)
0000078C: 83E1000C  lwz      r31,12(rsp)
00000790: 83C10008  lwz      r30,8(rsp)
00000794: 80010014  lwz      r0,20(rsp)
00000798: 7C0803A6  mtlr     r0
0000079C: 38210010  addi     rsp,rsp,16
000007A0: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="getMsgEntry__Q23EGG6MsgResFUlUl"  Size=352
000007A4: 9421FFD0  stwu     rsp,-48(rsp)
000007A8: 7C0802A6  mflr     r0
000007AC: 90010034  stw      r0,52(rsp)
000007B0: BF010010  stmw     r24,16(rsp)
000007B4: 7C7C1B78  mr       r28,r3
000007B8: 7C9D2378  mr       r29,r4
000007BC: 7CBE2B78  mr       r30,r5
000007C0: 80030004  lwz      r0,4(r3)
000007C4: 2C000000  cmpwi    r0,0x0000
000007C8: 4082001C  bne      *+28                    ; 0x000007E4
000007CC: 3C600000  lis      r3,@stringBase0@ha
000007D0: 3880017C  li       r4,380
000007D4: 38630000  addi     r3,r3,@stringBase0@l
000007D8: 38A300AD  addi     r5,r3,173
000007DC: 4CC63182  crxor    6,6,6
000007E0: 48000001  bl       system_halt
000007E4: 801C0010  lwz      r0,16(r28)
000007E8: 2C000000  cmpwi    r0,0x0000
000007EC: 4082001C  bne      *+28                    ; 0x00000808
000007F0: 3C600000  lis      r3,@stringBase0@ha
000007F4: 3880017D  li       r4,381
000007F8: 38630000  addi     r3,r3,@stringBase0@l
000007FC: 38A300BD  addi     r5,r3,189
00000800: 4CC63182  crxor    6,6,6
00000804: 48000001  bl       system_halt
00000808: 80DC0010  lwz      r6,16(r28)
0000080C: 3C800000  lis      r4,cIDShifts__Q23EGG6MsgRes@ha
00000810: 3C600000  lis      r3,cIDMasks__Q23EGG6MsgRes@ha
00000814: 3BE00000  li       r31,0
00000818: 8806000B  lbz      r0,11(r6)
0000081C: 38840000  addi     r4,r4,cIDShifts__Q23EGG6MsgRes@l
00000820: 38630000  addi     r3,r3,cIDMasks__Q23EGG6MsgRes@l
00000824: 3F200000  lis      r25,@stringBase0@ha
00000828: 5405103A  slwi     r5,r0,2                 ; rlwinm     r5,r0,2,0,29
0000082C: 54001838  slwi     r0,r0,3                 ; rlwinm     r0,r0,3,0,28
00000830: 7C630214  add      r3,r3,r0
00000834: 7C04282E  lwzx     r0,r4,r5
00000838: 83430000  lwz      r26,0(r3)
0000083C: 83630004  lwz      r27,4(r3)
00000840: 23000020  subfic   r24,r0,32
00000844: 48000098  b        *+152                   ; 0x000008DC
00000848: 2C060000  cmpwi    r6,0x0000
0000084C: 40820018  bne      *+24                    ; 0x00000864
00000850: 38790000  addi     r3,r25,@stringBase0@l
00000854: 388001A9  li       r4,425
00000858: 38A300BD  addi     r5,r3,189
0000085C: 4CC63182  crxor    6,6,6
00000860: 48000001  bl       system_halt
00000864: 80DC0010  lwz      r6,16(r28)
00000868: 57E013BA  clrlslwi r0,r31,16,2             ; rlwinm     r0,r31,2,14,29
0000086C: 7C660214  add      r3,r6,r0
00000870: 80630010  lwz      r3,16(r3)
00000874: 7C60D038  and      r0,r3,r26
00000878: 7C00C430  srw      r0,r0,r24
0000087C: 7C1D0040  cmplw    r29,r0
00000880: 40820058  bne      *+88                    ; 0x000008D8
00000884: 7C60D838  and      r0,r3,r27
00000888: 7C1E0040  cmplw    r30,r0
0000088C: 4082004C  bne      *+76                    ; 0x000008D8
00000890: 807C0004  lwz      r3,4(r28)
00000894: 57E0043E  clrlwi   r0,r31,16               ; rlwinm     r0,r31,0,16,31
00000898: A0630008  lhz      r3,8(r3)
0000089C: 7C030040  cmplw    r3,r0
000008A0: 4181001C  bgt      *+28                    ; 0x000008BC
000008A4: 3C600000  lis      r3,@stringBase0@ha
000008A8: 38800192  li       r4,402
000008AC: 38630000  addi     r3,r3,@stringBase0@l
000008B0: 38A300CB  addi     r5,r3,203
000008B4: 4CC63182  crxor    6,6,6
000008B8: 48000001  bl       system_halt
000008BC: 809C0004  lwz      r4,4(r28)
000008C0: 57E0043E  clrlwi   r0,r31,16               ; rlwinm     r0,r31,0,16,31
000008C4: A064000A  lhz      r3,10(r4)
000008C8: 7C0301D6  mullw    r0,r3,r0
000008CC: 7C640214  add      r3,r4,r0
000008D0: 38630010  addi     r3,r3,16
000008D4: 4800001C  b        *+28                    ; 0x000008F0
000008D8: 3BFF0001  addi     r31,r31,1
000008DC: A0060008  lhz      r0,8(r6)
000008E0: 57E3043E  clrlwi   r3,r31,16               ; rlwinm     r3,r31,0,16,31
000008E4: 7C030040  cmplw    r3,r0
000008E8: 4180FF60  blt      *-160                   ; 0x00000848
000008EC: 38600000  li       r3,0
000008F0: BB010010  lmw      r24,16(rsp)
000008F4: 80010034  lwz      r0,52(rsp)
000008F8: 7C0803A6  mtlr     r0
000008FC: 38210030  addi     rsp,rsp,48
00000900: 4E800020  blr

Hunk:	Kind=HUNK_GLOBAL_CODE     Name="getMsgID__Q23EGG6MsgResFUs"  Size=104
00000904: 9421FFF0  stwu     rsp,-16(rsp)
00000908: 7C0802A6  mflr     r0
0000090C: 90010014  stw      r0,20(rsp)
00000910: 93E1000C  stw      r31,12(rsp)
00000914: 7C9F2378  mr       r31,r4
00000918: 93C10008  stw      r30,8(rsp)
0000091C: 7C7E1B78  mr       r30,r3
00000920: 80030010  lwz      r0,16(r3)
00000924: 2C000000  cmpwi    r0,0x0000
00000928: 4082001C  bne      *+28                    ; 0x00000944
0000092C: 3C600000  lis      r3,@stringBase0@ha
00000930: 388001A9  li       r4,425
00000934: 38630000  addi     r3,r3,@stringBase0@l
00000938: 38A300BD  addi     r5,r3,189
0000093C: 4CC63182  crxor    6,6,6
00000940: 48000001  bl       system_halt
00000944: 807E0010  lwz      r3,16(r30)
00000948: 57E013BA  clrlslwi r0,r31,16,2             ; rlwinm     r0,r31,2,14,29
0000094C: 83E1000C  lwz      r31,12(rsp)
00000950: 7C630214  add      r3,r3,r0
00000954: 83C10008  lwz      r30,8(rsp)
00000958: 80010014  lwz      r0,20(rsp)
0000095C: 80630010  lwz      r3,16(r3)
00000960: 7C0803A6  mtlr     r0
00000964: 38210010  addi     rsp,rsp,16
00000968: 4E800020  blr

==> .rodata
cIDShifts__Q23EGG6MsgRes:
00000000: 00000020  00000018  00000010  00000008 '... ............'
00000010: 00000000  00000000                     '........        '
cIDMasks__Q23EGG6MsgRes:
00000018:                     FFFFFFFF  00000000 '        ........'
00000020: FFFFFF00  000000FF  FFFF0000  0000FFFF '................'
00000030: FF000000  00FFFFFF  00000000  FFFFFFFF '................'
@stringBase0:
00000040: 6567674D  73675265  732E6370  70006461 'eggMsgRes.cpp.da'
00000050: 74610028  20753332  20296461  7461202B 'ta.( u32 )data +'
00000060: 206D4D73  67486561  6465722D  3E6D4461 ' mMsgHeader->mDa'
00000070: 74615369  7A65203E  20282075  33322029 'taSize > ( u32 )'
00000080: 63757272  656E7400  496C6C65  67616C20 'current.Illegal '
00000090: 64617461  20626C6F  636B2E00  74616700 'data block..tag.'
000000A0: 7461674C  656E6774  68007461  67494400 'tagLength.tagID.'
000000B0: 70617261  6D006354  61674D61  726B203D 'param.cTagMark ='
000000C0: 3D20636F  6465006D  4D736744  61746142 '= code.mMsgDataB'
000000D0: 6C6B004E  6F742066  6F756E64  206D6573 'lk.Not found mes'
000000E0: 73616765  2025642C  2025642E  006D4D73 'sage %d, %d..mMs'
000000F0: 67496E66  6F446174  61426C6B  006D4D73 'gInfoDataBlk.mMs'
00000100: 67494444  61746142  6C6B006D  4D736749 'gIDDataBlk.mMsgI'
00000110: 6E666F44  61746142  6C6B2D3E  6D4E756D 'nfoDataBlk->mNum'
00000120: 456E7472  69657320  3E206900           'Entries > i.    '

==> .rela.data
    entry  offset   addend   type name(symbol id)
    [   0] 00000020 00000000    1 __dt__Q23EGG6MsgResFv(16)

==> .data
cMsgBlkMagic__Q23EGG6MsgRes:
00000000: 494E4631  44415431  53545231  4D494431 'INF1DAT1STR1MID1'
00000010: 464C5731  464C4931                     'FLW1FLI1        '
__vt__Q23EGG6MsgRes:
00000018:                     00000000  00000000 '        ........'
00000020: 00000000                               '....            '
@STRING@getBlkSize__Q23EGG6MsgResFPCv@0:
00000024:           64617461  426C6B48  65616465 '    dataBlkHeade'
00000030: 72000000                               'r...            '
@STRING@getBlkSize__Q23EGG6MsgResFPCv:
00000034:           6567674D  73675265  732E6800 '    eggMsgRes.h.'
@STRING@getDataBlkKind__Q23EGG6MsgResFPCv:
00000040: 6567674D  73675265  732E6800           'eggMsgRes.h.    '

==> .sdata
@STRING@getDataBlkKind__Q23EGG6MsgResFPCv@0:
00000000: 64617461  00                           'data.           '

==> .rela.mwcats.text
    entry  offset   addend   type name(symbol id)
    [   0] 00000004 00000000    1 __ct__Q23EGG6MsgResFPCv(12)
    [   1] 0000000c 00000000    1 __dt__Q23EGG6MsgResFv(16)
    [   2] 00000014 00000000    1 analyzeTag__Q23EGG6MsgResFUsPCwPUcPUlPPv(18)
    [   3] 0000001c 00000000    1 analyzeDataBlkKind__Q23EGG6MsgResFUl(15)
    [   4] 00000024 00000000    1 getMsg__Q23EGG6MsgResFUlUl(20)
    [   5] 0000002c 00000000    1 extractMsgHeader__Q23EGG6MsgResFPCv(22)
    [   6] 00000034 00000000    1 extractMsgInfoDataBlk__Q23EGG6MsgResFPCv(23)
    [   7] 0000003c 00000000    1 extractMsgDataBlk__Q23EGG6MsgResFPCv(24)
    [   8] 00000044 00000000    1 extractStrAttrDataBlk__Q23EGG6MsgResFPCv(25)
    [   9] 0000004c 00000000    1 extractMsgIDDataBlk__Q23EGG6MsgResFPCv(26)
    [  10] 00000054 00000000    1 extractFlowChartInfoDataBlk__Q23EGG6MsgResFPCv(27)
    [  11] 0000005c 00000000    1 extractFlowLabelInfoDataBlk__Q23EGG6MsgResFPCv(28)
    [  12] 00000064 00000000    1 getMsgEntry__Q23EGG6MsgResFUlUl(21)
    [  13] 0000006c 00000000    1 getMsgID__Q23EGG6MsgResFUs(31)

==> .mwcats.text
    entry   offset    type size     addr     procexits
    [   0]  00000000     2 027c     00000000         0
    [   1]  00000008     2 0040     00000000         0
    [   2]  00000010     2 0110     00000000         0
    [   3]  00000018     2 00b8     00000000         0
    [   4]  00000020     2 00b8     00000000         0
    [   5]  00000028     2 0058     00000000         0
    [   6]  00000030     2 0058     00000000         0
    [   7]  00000038     2 0058     00000000         0
    [   8]  00000040     2 0058     00000000         0
    [   9]  00000048     2 0058     00000000         0
    [  10]  00000050     2 0058     00000000         0
    [  11]  00000058     2 0058     00000000         0
    [  12]  00000060     2 0160     00000000         0
    [  13]  00000068     2 0068     00000000         0

==> .comment
MagicWord: CodeWarrior
Comment section version: 15
Compiler version: 4.0.0
CW Compiler generated
Pooled data: true
PPC EABI compliant
FP Support: Hardware
Processor: Gecko
Char Signedness: signed

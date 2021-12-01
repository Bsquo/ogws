#ifndef EGG_UTIL_MSGRES_H
#define EGG_UTIL_MSGRES_H
#include "types_egg.h"
#include "eggAssert.h"

namespace EGG
{
    struct MsgRes
    {
        struct MsgHeaderBlock
        {   u32 mMagicTop; // "MESG", at 0x0
            u32 mMagicBot; // "bmg1", at 0x4
            u32 mDataSize; // at 0x8
            u32 mNumBlocks; // at 0xC
            u8 mEncoding; // at 0x10
            u8 UNK_0x11[3];
            UNKWORD WORD_0x14;
            UNKWORD WORD_0x18;
            UNKWORD WORD_0x1C;
        };

        struct MsgInfoBlockEntry
        {
            u32 mDataBlkOfs; // at 0x0
            u32 mAttrib; // at 0x4
        };

        struct MsgInfoBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            u16 mNumEntries; // at 0x8
            u16 mItemSize; // at 0xA
            u16 SHORT_0xC;
            u8 UNK_0xE;
            u8 UNK_0xF;
            MsgInfoBlockEntry mMsgInfo[]; // at 0x10
        };

        struct MsgDataBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            wchar_t mStringPool[]; // at 0x8
        };

        struct MsgStrAttrBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            // TO-DO
        };

        struct MsgIdBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            u16 mNumEntries; // at 0x8
            u8 UNK_0xA;
            u8 mIDFormat; // at 0xB
            u32 WORD_0xC;
            u32 mMsgIds[]; // at 0x10
        };

        struct MsgFlowChartBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            // TO-DO
        };

        struct MsgFlowLabelBlock
        {
            u32 mMagic; // at 0x0
            u32 mDataSize; // at 0x4
            // TO-DO
        };

        enum EDataBlkKind
        {
            BLOCK_MSGINFO,   /* INF1 */
            BLOCK_MSGDATA,   /* DAT1 */
            BLOCK_STRATTR,   /* STR1 */
            BLOCK_MSGID,     /* MID1 */
            BLOCK_FLOWCHART, /* FLW1 */
            BLOCK_FLOWLABEL, /* FLI1 */
            BLOCK_MAX
        };

        MsgHeaderBlock *mMsgHeader;          // "MESGbmg1", at 0x0
        MsgInfoBlock *mMsgInfoDataBlk;       // "INF1", at 0x4
        MsgDataBlock *mMsgDataBlk;           // "DAT1", at 0x8
        MsgStrAttrBlock *mMsgStrDataBlk;     // "STR1", at 0xC
        MsgIdBlock *mMsgIDDataBlk;           // "MID1", at 0x10
        MsgFlowChartBlock *mMsgFlowChartBlk; // "FLW1", at 0x14
        MsgFlowLabelBlock *mMsgFlowLabelBlk; // "FLI1", at 0x18

        // Unofficial symbol
        u32 getBlkSize(const void *dataBlkHeader)
        {
            #line 260
            EGG_ASSERT(dataBlkHeader);
            // Any block cast will do (except MsgHeaderBlock),
            // as they all have mDataSize at 0x4.
            return ((MsgInfoBlock *)dataBlkHeader)->mDataSize;
        }

        // Unofficial symbol
        u32 getDataBlkKind(const void *data)
        {
            #line 271
            EGG_ASSERT(data);
            // Any block cast will do, as they all have mMagic at 0x0.
            return ((MsgInfoBlock *)data)->mMagic;
        }

        EDataBlkKind analyzeDataBlkKind(u32 kind);

        MsgRes(const void *);
        virtual ~MsgRes();
        static void analyzeTag(u16, const wchar_t*, u8*, u32*, void **);
        const wchar_t * getMsg(u32, u32);
        MsgInfoBlockEntry * getMsgEntry(u32, u32);
        u32 getMsgID(u16); // inlined
        void extractMsgHeader(const void *); // inlined
        void extractMsgInfoDataBlk(const void *); // inlined
        void extractMsgDataBlk(const void *); // inlined
        void extractStrAttrDataBlk(const void *); // inlined
        void extractMsgIDDataBlk(const void *); // inlined
        void extractFlowChartInfoDataBlk(const void *); // inlined
        void extractFlowLabelInfoDataBlk(const void *); // inlined

        // Escape sequence (Official name = "Tag")
        static const char cTagMark = 0x1A;

        struct MsgBlkMagic
        {
            u32 msgInfo;
            u32 msgData;
            u32 strAttr;
            u32 msgId;
            u32 flowChart;
            u32 flowLabel;
        };
        static const MsgBlkMagic cBlkMagic;

        static const u32 cIDShifts[6];
        struct MsgIDMask
        {
            u32 top;
            u32 bot;
        };
        static const MsgIDMask cIDMasks[5];
    };
}

#endif
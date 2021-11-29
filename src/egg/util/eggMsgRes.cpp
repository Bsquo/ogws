#pragma ipa file
#pragma use_lmw_stmw on
#include "eggMsgRes.h"
#include "eggAssert.h"

namespace EGG
{
    MsgRes::MsgRes(const void *data)
    {
        #line 53
        EGG_ASSERT(data);
        mMsgHeader = NULL;
        mMsgInfoDataBlk = NULL;
        mMsgDataBlk = NULL;
        mMsgStrDataBlk = NULL;
        mMsgIDDataBlk = NULL;
        mMsgFlowChartBlk = NULL;
        mMsgFlowLabelBlk = NULL;

        extractMsgHeader(data);

        // Skip over header
        void *current = (void *)((u32)data + sizeof(MsgHeaderBlock));
        // Extract all sections ("blocks")
        u32 numBlocks = mMsgHeader->mNumBlocks;
        for (int i = 0; i < numBlocks; i++)
        {
            // BMG file size > current block ptr
            EGG_ASSERT(( u32 )data + mMsgHeader->mDataSize > ( u32 )current);

            u32 kind = getDataBlkKind(current);
            void *block = current;
            switch(analyzeDataBlkKind(kind))
            {
                case BLOCK_MSGID:
                    extractMsgIDDataBlk(current);
                    block = mMsgIDDataBlk;
                    break;
                case BLOCK_MSGDATA:
                    extractMsgDataBlk(current);
                    block = mMsgIDDataBlk;
                    break;
                case BLOCK_MSGINFO:
                    extractMsgInfoDataBlk(current);
                    block = mMsgInfoDataBlk;
                    break;
                case BLOCK_STRATTR:
                    extractStrAttrDataBlk(current);
                    block = mMsgStrDataBlk;
                    break;
                case BLOCK_FLOWLABEL:
                    extractFlowLabelInfoDataBlk(current);
                    block = mMsgFlowLabelBlk;
                    break;
                case BLOCK_FLOWCHART:
                    extractFlowChartInfoDataBlk(current);
                    block = mMsgFlowChartBlk;
                    break;
                default:
                    #line 125
                    EGG_ASSERT_MSG(false, "Illegal data block.");
                    block = NULL;
                    break;
            }

            // Skip pointer to end of current block.
            u32 blkSize = getBlkSize(block);
            current = (void *)((u32)current + blkSize);
        }
    }

    MsgRes::~MsgRes()
    {

    }

    void MsgRes::analyzeTag(u16 code, const wchar_t *tag, u8 *tagLength,
        u32 *tagID, void **param)
    {
        #line 159
        EGG_ASSERT(tag);
        EGG_ASSERT(tagLength);
        EGG_ASSERT(tagID);
        EGG_ASSERT(param);
        EGG_ASSERT(cTagMark == code);

        *tagLength = *tag - 2;
        *tagID = *(u32 *)tag & 0x00FFFFFF;
        
        if (*tagLength > 4)
        {
            *param = (wchar_t *)tag + 2;
        }
        else
        {
            *param = NULL;
        }
    }

    MsgRes::EDataBlkKind MsgRes::analyzeDataBlkKind(u32 kind)
    {
        if      (kind == cMsgBlkMagic[BLOCK_MSGINFO])   return BLOCK_MSGINFO;
        else if (kind == cMsgBlkMagic[BLOCK_MSGDATA])   return BLOCK_MSGDATA;
        else if (kind == cMsgBlkMagic[BLOCK_STRATTR])   return BLOCK_STRATTR;
        else if (kind == cMsgBlkMagic[BLOCK_MSGID])     return BLOCK_MSGID;
        else if (kind == cMsgBlkMagic[BLOCK_FLOWCHART]) return BLOCK_FLOWCHART;
        else if (kind == cMsgBlkMagic[BLOCK_FLOWLABEL]) return BLOCK_FLOWLABEL;

        #line 366
        EGG_ASSERT_MSG(false, "Illegal data block.");
        return BLOCK_MAX;
    }

    const wchar_t * MsgRes::getMsg(u32 r4, u32 r5)
    {
        #line 189
        EGG_ASSERT(mMsgDataBlk);

        MsgInfoBlockEntry *pEntry = getMsgEntry(r4, r5);
        EGG_ASSERT_MSG(pEntry, "Not found message %d, %d.", r4, r5);

        return (wchar_t *)((u32)mMsgDataBlk->mStringPool + pEntry->mDataBlkOfs);
    }

    void MsgRes::extractMsgHeader(const void *data)
    {
        #line 223
        EGG_ASSERT(data);
        mMsgHeader = (MsgHeaderBlock *)data;
    }

    void MsgRes::extractMsgInfoDataBlk(const void *data)
    {
        #line 251
        EGG_ASSERT(data);
        mMsgInfoDataBlk = (MsgInfoBlock *)data;
    }

    void MsgRes::extractMsgDataBlk(const void *data)
    {
        #line 277
        EGG_ASSERT(data);
        mMsgDataBlk = (MsgDataBlock *)data;
    }   

    void MsgRes::extractStrAttrDataBlk(const void *data)
    {
        #line 298
        EGG_ASSERT(data);
        mMsgStrDataBlk = (MsgStrAttrBlock *)data;
    }

    void MsgRes::extractMsgIDDataBlk(const void *data)
    {
        #line 309
        EGG_ASSERT(data);
        mMsgIDDataBlk = (MsgIdBlock *)data;
    }

    void MsgRes::extractFlowChartInfoDataBlk(const void *data)
    {
        #line 334
        EGG_ASSERT(data);
        mMsgFlowChartBlk = (MsgFlowChartBlock *)data;
    }

    void MsgRes::extractFlowLabelInfoDataBlk(const void *data)
    {
        #line 345
        EGG_ASSERT(data);
        mMsgFlowLabelBlk = (MsgFlowLabelBlock *)data;
    }

    MsgRes::MsgInfoBlockEntry * MsgRes::getMsgEntry(u32 id1, u32 id2)
    {
        #line 380
        EGG_ASSERT(mMsgInfoDataBlk);
        EGG_ASSERT(mMsgIDDataBlk);
        
        // The full message ID has packed attributes,
        // so each format must be interpreted differently.
        u32 shift = 32 - cIDShifts[mMsgIDDataBlk->mIDFormat];
        const MsgIDMask *mask = &cIDMasks[mMsgIDDataBlk->mIDFormat];

        for (u16 i = 0; i < mMsgIDDataBlk->mNumEntries; i++)
        {
            u32 msgId = getMsgID(i);
            if (id1 == (msgId & mask->top) >> (shift) && id2 == (msgId & mask->bot))
            {
                #line 402
                EGG_ASSERT(mMsgInfoDataBlk->mNumEntries > i);

                return (MsgInfoBlockEntry *)((u32)mMsgInfoDataBlk->mMsgInfo + (mMsgInfoDataBlk->mItemSize * i));
            }
        }

        return NULL;
    }

    u32 MsgRes::getMsgID(u16 i)
    {
        #line 425
        EGG_ASSERT(mMsgIDDataBlk);
        return mMsgIDDataBlk->mMsgIds[i];
    }

    u32 MsgRes::cMsgBlkMagic[BLOCK_MAX] = {
        'INF1', 'DAT1', 'STR1', 'MID1', 'FLW1', 'FLI1'
    };

    const u32 MsgRes::cIDShifts[6] = {
        32, 24, 16, 8, 0, 0
    };

    const MsgRes::MsgIDMask MsgRes::cIDMasks[5] = {
        {0xffffffff, 0x00000000},
        {0xffffff00, 0x000000ff},
        {0xffff0000, 0x0000ffff},
        {0xff000000, 0x00ffffff},
        {0x00000000, 0xffffffff}
    };
}
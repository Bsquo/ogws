#ifndef EGG_CORE_DVDFILE_H
#define EGG_CORE_DVDFILE_H
#include "types_egg.h"
#include "eggFile.h"
#include "ut_list.h"
#include <RevoSDK/DVD/dvd.h>
#include <RevoSDK/OS/OSMutex.h>
#include <RevoSDK/OS/OSMessage.h>
#include <RevoSDK/OS/OSThread.h>

namespace EGG
{
    struct DvdFile : File
    {
        struct FileInfoPair
        {
            DVDFileInfo mFileInfo; // at 0x0
            DvdFile *pDvdFile; // at 0x3C
        };

        DvdFile();
        static void initialize();
        void initiate();
        static void doneProcess(s32, DVDFileInfo *);

        virtual ~DvdFile(); // at 0x8
        virtual bool open(const char *); // at 0xC
        virtual void close(); // at 0x10
        virtual s32 readData(void *, s32, s32); // at 0x14
        virtual s32 writeData(const void *, s32, s32); // at 0x18
        virtual UNKWORD getFileSize() const; // at 0x1C
        virtual bool open(int); // at 0x20
        virtual bool open(const char *, void *); // at 0x24

        bool mIsOpen; // at 0x4
        OSMutex mMutex_0x8;
        OSMutex mMutex_0x20;
        UNKWORD WORD_0x38;
        union
        {
            DVDCommandBlock mCmdBlock; // at 0x3C
            DVDFileInfo mFileInfo; // at 0x3C
        };
        void * PTR_0x78;
        OSMessageQueue mMesgQueue_0x7C;
        OSMessage mMesg_0x9C;
        OSMessageQueue mMesgQueue_0xA0;
        OSMessage mMesg_0xC0;
        OSThread *mThread; // at 0xC4
        nw4r::ut::Node mNode; // at 0xC8

        static nw4r::ut::List sDvdList;
        static bool sIsInitialized;
    };
}

#endif
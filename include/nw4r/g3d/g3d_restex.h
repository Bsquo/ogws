#ifndef NW4R_G3D_RESTEX_H
#define NW4R_G3D_RESTEX_H
#include "types_nw4r.h"
#include "g3d_rescommon.h"
#include <RevoSDK/GX/GXTexture.h>

namespace nw4r
{
	namespace g3d
	{
		struct ResTexData
		{
			char mMagic[4]; // "TEX0"; at 0x0
			u32 mLength; // at 0x4
			u32 mRevision; // at 0x8
			s16 SHORT_0xC;
			u16 SHORT_0xE;
			u32 INT_0x10;
			UNKWORD WORD_0x14;
			u32 mFlags; // at 0x18
			u16 SHORT_0x1C;
			u16 SHORT_0x1E;
			union // at 0x20
			{
				GXTexFmt mFormat;
				GXCITexFmt mCiFormat;
			};
			u32 WORD_0x24;
			f32 FLOAT_0x28;
			f32 FLOAT_0x2C;
		};
		
		struct ResPlttData
		{
			char mMagic[4]; // "PLT0"; at 0x0
			u32 mLength; // at 0x4
			u32 mRevision; // at 0x8
			char UNK_0xC[0x10 - 0xC];
			s32 mPlttDataOfs; // at 0x10
			char UNK_0x14[0x18 - 0x14];
			UNKWORD mFormat; // at 0x18
			u16 mNumEntries; // at 0x1C
		};
		
		struct ResTex
		{
			enum
			{
				REVISION = 1
			};
			
			ResCommon<ResTexData> mTex; // at 0x0
			
			inline ResTex(void * vptr) : mTex(vptr) {}
			
			inline bool CheckRevision() const
			{
				return mTex.ref().mRevision == REVISION;
			}

			bool GetTexObjParam(void **, u16 *, u16 *, GXTexFmt *, f32 *, f32 *, u8 *) const;
			bool GetTexObjCIParam(void **, u16 *, u16 *, GXCITexFmt *, f32 *, f32 *, u8 *) const;
			void Init();

			bool IsValid() const
			{
				return mTex.IsValid();
			}

			bool IsCIFmt() const
			{
				return (mTex.ref().mFormat & 1) == 0;
			}
		};
		
		struct ResPltt
		{
			enum
			{
				REVISION = 1
			};
			
			ResCommon<ResPlttData> mPltt; // at 0x0
			
			inline ResPltt(void * vptr) : mPltt(vptr) {}
			
			inline bool CheckRevision() const
			{
				return mPltt.ref().mRevision == REVISION;
			}

			UNKTYPE * GetPlttData()
			{
				return mPltt.ofs_to_ptr<UNKTYPE>(mPltt.ref().mPlttDataOfs);
			}

			UNKWORD GetFmt() const
			{
				return mPltt.ref().mFormat;
			}

			u16 GetNumEntries() const
			{
				return mPltt.ref().mNumEntries;
			}

			void DCStore(bool);
		};
	}
}

#endif
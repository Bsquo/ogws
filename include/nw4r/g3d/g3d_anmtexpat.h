#ifndef NW4R_G3D_ANMTEXPAT_H
#define NW4R_G3D_ANMTEXPAT_H
#include "g3d_anmobj.h"
#include "g3d_restex.h"
#include "g3d_resanmtexpat.h"

namespace nw4r
{
	namespace g3d
	{
		struct TexPatAnmResult
		{
			enum
			{
				ANM_COUNT = 8
			};
			
			u8 mTexFlags; // at 0x0
			u8 mPlttFlags; // at 0x1
			ResTex mTexs[ANM_COUNT]; // at 0x4
			ResPltt mPltts[ANM_COUNT]; // at 0x24
		};

        class AnmObjTexPat : public AnmObj
        {
        public:
            AnmObjTexPat(MEMAllocator *, u16 *, int);
            virtual bool IsDerivedFrom(TypeObj other) const // at 0x8
            {
                return (other == GetTypeObjStatic()) ? true
                    : AnmObj::IsDerivedFrom(other);
            }
            virtual ~AnmObjTexPat() {} // at 0x10
            virtual const TypeObj GetTypeObj() const // at 0x14
            {
                return TypeObj(TYPE_NAME);
            }
            virtual const char * GetTypeName() const // at 0x18
            {
                return GetTypeObj().GetTypeName();
            }
            virtual void Release(); // at 0x34
            virtual bool GetResult(TexPatAnmResult *, u32) = 0; // at 0x38
            virtual AnmObjTexPatRes * Attach(int, AnmObjTexPatRes *); // at 0x3C
            virtual AnmObjTexPatRes * Detach(int); // at 0x40
			virtual void DetachAll(); // at 0x44

            static const TypeObj GetTypeObjStatic()
            {
                return TypeObj(TYPE_NAME);
            }

            bool TestDefined(u32 idx) const;
            bool TestExistence(u32 idx) const;

        protected:
            int mNumBinds; // at 0x10
            u16 *mBinds; // at 0x14

            NW4R_G3D_TYPE_OBJ_DECL(AnmObjTexPat);
        };

        class AnmObjTexPatNode : public AnmObjTexPat
        {
        public:
            AnmObjTexPatNode(MEMAllocator *allocator, u16 *bindBuffer, int numBinds)
                : AnmObjTexPat(allocator, bindBuffer, numBinds)
            {
            }

            virtual bool IsDerivedFrom(TypeObj other) const // at 0x8
            {
                return (other == GetTypeObjStatic()) ? true
                    : AnmObjTexPat::IsDerivedFrom(other);
            }
            virtual void G3dProc(u32, u32, void *); // at 0xC
            virtual ~AnmObjTexPatNode(); // at 0x10
            virtual const TypeObj GetTypeObj() const // at 0x14
            {
                return TypeObj(TYPE_NAME);
            }
            virtual const char * GetTypeName() const // at 0x18
            {
                return GetTypeObj().GetTypeName();
            }
            virtual void SetFrame(f32); // at 0x1C
            virtual f32 GetFrame() const; // at 0x20
            virtual void UpdateFrame(); // at 0x24
            virtual void SetUpdateRate(f32); // at 0x28
            virtual f32 GetUpdateRate() const; // at 0x2C
            virtual bool Bind(ResMdl); // at 0x30
            virtual void Release(); // at 0x34
            virtual AnmObjTexPatRes * Attach(int, AnmObjTexPatRes *); // at 0x3C
            virtual AnmObjTexPatRes * Detach(int); // at 0x40
			virtual void DetachAll(); // at 0x44

            static const TypeObj GetTypeObjStatic()
            {
                return TypeObj(TYPE_NAME);
            }

            // Unofficial
            AnmObjTexPatRes * GetResource(int i) const { return mResources[i]; }
            void SetResource(int i, AnmObjTexPatRes *res) { mResources[i] = res; }

        protected:
			int mNumResources; // at 0x18
            AnmObjTexPatRes **mResources; // at 0x1C

            NW4R_G3D_TYPE_OBJ_DECL(AnmObjTexPatNode);
        };

        class AnmObjTexPatOverride : public AnmObjTexPatNode
        {
        public:
            AnmObjTexPatOverride(MEMAllocator *allocator, u16 *bindBuffer, int numBinds)
                : AnmObjTexPatNode(allocator, bindBuffer, numBinds)
            {
            }

            virtual bool IsDerivedFrom(TypeObj other) const // at 0x8
            {
                return (other == GetTypeObjStatic()) ? true
                    : AnmObjTexPatNode::IsDerivedFrom(other);
            }
            virtual ~AnmObjTexPatOverride() {} // at 0x10
            virtual const TypeObj GetTypeObj() const // at 0x14
            {
                return TypeObj(TYPE_NAME);
            }
            virtual const char * GetTypeName() const // at 0x18
            {
                return GetTypeObj().GetTypeName();
            }
            virtual bool GetResult(TexPatAnmResult *, u32); // at 0x38

            static const TypeObj GetTypeObjStatic()
            {
                return TypeObj(TYPE_NAME);
            }

            static AnmObjTexPatOverride * Construct(MEMAllocator *, u32 *, ResMdl, int);

        private:
            NW4R_G3D_TYPE_OBJ_DECL(AnmObjTexPatOverride);
        };

        class AnmObjTexPatRes : public AnmObjTexPat, public FrameCtrl
        {
        public:
            AnmObjTexPatRes(MEMAllocator *, ResAnmVis, u16 *, int);

            virtual bool IsDerivedFrom(TypeObj other) const // at 0x8
            {
                return (other == GetTypeObjStatic()) ? true
                    : AnmObjTexPat::IsDerivedFrom(other);
            }
            virtual void G3dProc(u32, u32, void *); // at 0xC
            virtual ~AnmObjTexPatRes() {} // at 0x10
            virtual const TypeObj GetTypeObj() const // at 0x14
            {
                return TypeObj(TYPE_NAME);
            }
            virtual const char * GetTypeName() const // at 0x18
            {
                return GetTypeObj().GetTypeName();
            }
            virtual void SetFrame(f32); // at 0x1C
            virtual f32 GetFrame() const; // at 0x20
            virtual void UpdateFrame(); // at 0x24
            virtual void SetUpdateRate(f32); // at 0x28
            virtual f32 GetUpdateRate() const; // at 0x2C
            virtual bool Bind(ResMdl); // at 0x30
            virtual bool GetResult(TexPatAnmResult *, u32); // at 0x38
            virtual AnmObjTexPatRes * Attach(int, AnmObjTexPatRes *); // at 0x3C

            static const TypeObj GetTypeObjStatic()
            {
                return TypeObj(TYPE_NAME);
            }

            static AnmObjTexPatRes * Construct(MEMAllocator *, u32 *, ResAnmTexPat, ResMdl);

        private:
            ResAnmTexPat mAnmTexPat; // at 0x2C

            NW4R_G3D_TYPE_OBJ_DECL(AnmObjTexPatRes);
		};
	}
}

#endif
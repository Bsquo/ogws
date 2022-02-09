#pragma ipa file
#pragma use_lmw_stmw on
#pragma fp_contract on

#include "eggController.h"
#include "eggAssert.h"
#include "eggHeap.h"
#include "eggExpHeap.h"
#include "eggAllocator.h"
#include "eggSystem.h"
#include <WPAD/WPAD.h>
#include <KPAD/KPAD.h>
#include <WUD/WUD.h>
#include <VI/vi.h>

namespace EGG
{
    using namespace nw4r;

    static NullController sNullGCCont;
    CoreControllerMgr *CoreControllerMgr::sInstance;
    CoreControllerMgr::CoreControllerFactory CoreControllerMgr::sCoreControllerFactory;
    CoreControllerMgr::ConnectCallback CoreControllerMgr::sConnectCallback;
    int CoreControllerMgr::sWPADWorkSize = 0x32000;
    namespace
    {
        static Allocator *sAllocator;
    }

    u32 CoreStatus::getFSStickButton()
    {
        u32 result = 0;

        #line 53
        EGG_ASSERT_MSG(isFreestyle(), "This Status is not for Free Style");

        f32 stickX = getFSStickX();
        if (!(-0.25f < stickX) || !(stickX < 0.25f))
        {
            if (stickX <= -0.5f)
            {
                result = 0;
                result |= 0x40000;
            }
            else if (stickX >= 0.5f)
            {
                result = 0;
                result |= 0x80000;
            }
        }

        f32 stickY = getFSStickY();
        if (!(-0.25f < stickY) || !(stickY < 0.25f))
        {
            if (stickY <= -0.5f)
            {
                result &= ~0x10000;
                result |= 0x20000;
            }
            else if (stickY >= 0.5f)
            {
                result &= ~0x20000;
                result |= 0x10000;
            }
        }

        return result;
    }

    inline CoreController::CoreController() : mRumbleMgr(NULL)
    {
        mButtonHold = 0;
        mButtonTrigger = 0;
        mButtonRelease = 0;

        sceneReset();
    }

    // ! HACK !
    // CoreController::ct shouldn't be weak,
    // but this is the only way I can inline it without inlining other small funcs
    #pragma push
    #pragma dont_inline on
    void eggController_WEAK_INSTANCE()
    {
        (void)(CoreController::CoreController());
    }
    #pragma pop

    void CoreController::stopMotor()
    {
        WPADControlMotor(mChannel, 0);
    }

    void CoreController::createRumbleMgr(u8 overlap_num)
    {
        #line 261
        EGG_ASSERT(mRumbleMgr == NULL);
        mRumbleMgr = new ControllerRumbleMgr();

        #line 263
        EGG_ASSERT(overlap_num > 0);
        mRumbleMgr->createUnit(overlap_num, this);
    }

    void CoreController::startPatternRumble(const char *pattern, int r5, bool r6)
    {
        if (mRumbleMgr != NULL) mRumbleMgr->startPattern(pattern, r5, r6);
    }

    void CoreController::startPowerFrameRumble(f32 f1, int r4, bool r5)
    {
        if (mRumbleMgr != NULL) mRumbleMgr->startPowerFrame(f1, r4, r5);
    }

    void CoreController::stopRumbleMgr()
    {
        if (mRumbleMgr != NULL) mRumbleMgr->stop();
    }

    CoreStatus * CoreController::getCoreStatus(int index)
    {
        #line 312
        EGG_ASSERT(index >= 0 && index < mKPADReadLength);
        return (&STATUS_0x14 + index);
    }

   void CoreController::calc_posture_matrix(Matrix34f& mtx, bool needStable)
    {        
        if (needStable)
        {
            if (!isStable(0x7)) return;
        }

        Vector3f accel = -getAccel();
        Vector3f accel_dir = accel;
        accel_dir.normalise();

        Vector3f sp8C(0.0f, 0.0f, 1.0f);
        Vector3f sp80(1.0f, 0.0f, 0.0f);

        Vector3f sp74(M34_0x8A8(0, 0), M34_0x8A8(1, 0), M34_0x8A8(2, 0));
        Vector3f sp68(M34_0x8A8(0, 1), M34_0x8A8(1, 1), M34_0x8A8(2, 1));
        Vector3f sp5C(M34_0x8A8(0, 2), M34_0x8A8(1, 2), M34_0x8A8(2, 2));

        Vector3f sp50(0.0f, 0.0f, -1.0f);
        Vector3f sp44(-1.0f, 0.0f, 0.0f);

        if (third_column_coeff(1.0f, 0.0f)
            < third_column_coeff(-1.0f, 0.0f))
        {
            sp8C.mCoords.x = 0.0f;
            sp8C.mCoords.y = 0.0f;
            sp8C.mCoords.z = -1.0f;
        }

        if (sp80.dot(sp74) < sp44.dot(sp74)) sp80 = sp44;

        f32 dot0 = accel_dir.dot(sp80);
        dot0 = (dot0 > 0.0f) ? dot0 : -dot0;

        f32 dot1 = accel_dir.dot(sp8C);
        dot1 = (dot1 > 0.0f) ? dot1 : -dot1;

        if (dot1 < dot0)
        {
            sp80 = accel_dir.cross(sp8C);
            sp80.normalise();

            sp8C = sp80.cross(accel_dir);
            sp8C.normalise();
        }
        else
        {
            sp8C = sp80.cross(accel_dir);
            sp8C.normalise();

            sp80 = accel_dir.cross(sp8C);
            sp80.normalise();
        }

        mtx(0, 0) = sp80.mCoords.x;
        mtx(1, 0) = sp80.mCoords.y;
        mtx(2, 0) = sp80.mCoords.z;

        mtx(0, 1) = accel_dir.mCoords.x;
        mtx(1, 1) = accel_dir.mCoords.y;
        mtx(2, 1) = accel_dir.mCoords.z;

        mtx(0, 2) = sp8C.mCoords.x;
        mtx(1, 2) = sp8C.mCoords.y;
        mtx(2, 2) = sp8C.mCoords.z;
    }

    void CoreController::beginFrame(PADStatus *status)
    {
        mKPADReadLength = KPADRead(mChannel, &STATUS_0x14, 32);

        if (mKPADReadLength > 0)
        {
            CoreStatus *coreStatus = &STATUS_0x14;
            u32 oldInput = mButtonHold;

            if (coreStatus->isFreestyle())
            {
                mButtonHold = coreStatus->getFSStickButton();
            }
            else
            {
                mButtonHold = 0;
            }

            mButtonTrigger = mButtonHold & ~oldInput;
            mButtonRelease = oldInput & ~mButtonHold;

            #line 539
            EGG_ASSERT((coreStatus->hold & cCORE_FSSTICK_BUTTONS) == 0);
            EGG_ASSERT((coreStatus->trig & cCORE_FSSTICK_BUTTONS) == 0);
            EGG_ASSERT((coreStatus->release & cCORE_FSSTICK_BUTTONS) == 0);

            coreStatus->hold |= (mButtonHold & cCORE_FSSTICK_BUTTONS);
            coreStatus->trig |= (mButtonTrigger & cCORE_FSSTICK_BUTTONS);
            coreStatus->release |= (mButtonRelease & cCORE_FSSTICK_BUTTONS);
        }

        M34_0x8A8 = mPostureMtx;
        mFlags = 0;

        Vector3f accel = getAccel();
        for (int i = 0; i < 3; i++)
        {
            if (accel(i) - VEC3_0x858(i) < FLOAT_0x8EC)
            {
                if (WORD_0x8DC <= ++WORDS_0x8E0[i])
                {
                    WORDS_0x8E0[i] = WORD_0x8DC;
                    mFlags |= (1 << i);
                    FLOATS_0x8F0[i] = accel(i);
                }
            }
            else
            {
                mFlags &= (1 << i);
                WORDS_0x8E0[i] = 0;
            }
        }

        calc_posture_matrix(mPostureMtx, true);

        if (BYTE_0x868 != 0)
        {
            if (WORD_0x864 & (1 << BYTE_0x871))
            {
                WPADControlMotor(mChannel, 1);
            }
            else
            {
                WPADControlMotor(mChannel, 0);
            }
        }

        if (BYTE_0x871 == 0)
        {
            BYTE_0x871 = BYTE_0x870 - 1;
        }
        else
        {
            BYTE_0x871 = BYTE_0x871 - 1;
        }

        if (--WORD_0x86C == 0)
        {
            WPADControlMotor(mChannel, 0);
            BYTE_0x868 = 0;
        }

        if (mRumbleMgr != NULL) mRumbleMgr->calc();
    }

    void CoreController::endFrame()
    {
        VEC3_0x858 = getAccel();
    }

    void ControllerRumbleMgr::createUnit(u8 overlap_num, CoreController *worker)
    {
        for (u8 i = 0; i < overlap_num; i++)
        {
            nw4r::ut::List_Append(&LIST_0x10, new ControllerRumbleUnit());
        }

        mController = worker;
    }

    void ControllerRumbleMgr::stop()
    {
        mController->stopMotor();

        while (LIST_0x4.size != 0)
        {
            ControllerRumbleUnit *unit = (ControllerRumbleUnit *)ut::List_GetFirst(&LIST_0x4);
            ut::List_Remove(&LIST_0x4, unit);
            ut::List_Append(&LIST_0x10, unit);
        }
    }

    void ControllerRumbleMgr::startPattern(const char *pattern, int r5, bool r6)
    {
        ControllerRumbleUnit *unit = getUnitFromList(r6);
        if (unit != NULL) unit->startPattern(pattern, r5);
    }

    void ControllerRumbleMgr::startPowerFrame(f32 f1, int r4, bool r5)
    {
        ControllerRumbleUnit *unit = getUnitFromList(r5);
        if (unit != NULL) unit->startPowerFrame(f1, r4);   
    }

    ControllerRumbleUnit * ControllerRumbleMgr::getUnitFromList(bool b)
    {
        ControllerRumbleUnit *unit = (ControllerRumbleUnit *)ut::List_GetFirst(&LIST_0x10);
        if (unit != NULL)
        {
            ut::List_Remove(&LIST_0x10, unit);
            ut::List_Append(&LIST_0x4, unit);
        }
        else
        {
            if (b && (unit = (ControllerRumbleUnit *)ut::List_GetFirst(&LIST_0x4)))
            {
                ut::List_Remove(&LIST_0x4, unit);
                ut::List_Append(&LIST_0x4, unit);
            }
        }

        return unit;
    }

    CoreControllerMgr::T__Disposer::~T__Disposer()
    {
        CoreControllerMgr::deleteInstance();
    }

    void CoreControllerMgr::deleteInstance()
    {
        sInstance = NULL;
    }

    CoreController * CoreControllerMgr::getNthController(int i)
    {
        return mControllers(i);
    }

    namespace
    {
        void * alloc(u32 size)
        {
            return sAllocator->alloc(size);
        }

        void free(void *mem)
        {
            sAllocator->free(mem);
        }
    }

    void CoreControllerMgr::connectCallback(s32 r3, s32 r4)
    {
        CoreControllerConnectArg arg;
        arg.LONG_0x0 = r3;
        arg.LONG_0x4 = r4;

        if (sConnectCallback != NULL) (*sConnectCallback)(&arg);
    }

    CoreControllerMgr::CoreControllerMgr()
    {
        s32 sp0C[4] = {0, 1, 2, 3};

        ExpHeap *heap = ExpHeap::create(sWPADWorkSize, BaseSystem::getRootHeapMem2(), 0);
        sAllocator = new Allocator(heap, 32);

        WUDRegisterAllocator(alloc, free);

        KPADInit();

        beginFrame();
        endFrame();

        VIWaitForRetrace();

        for (int i = 0; i < 4; i++)
        {
            WPADSetConnectCallback(sp0C[i], connectCallback);
        }

        mControllers.allocate(4, 0);

        for (int i = 0; i < 4; i++)
        {
            if (sCoreControllerFactory != NULL)
            {
                mControllers(i) = (*sCoreControllerFactory)();
            }
            else
            {
                CoreController *cnt = new CoreController();
                mControllers(i) = cnt;
            }
        }

        mDevTypes.allocate(4, 0);

        for (int i = 0; i < 4; i++)
        {
            mControllers(i)->setChannel(sp0C[i]);
            mDevTypes(i) = cDEV_0xFD;
        }

        PTR_0x20 = NULL;
    }

    void CoreControllerMgr::beginFrame()
    {
        for (int i = 0; i < mControllers.getSize(); i++)
        {
            mControllers(i)->beginFrame(NULL);
        }
    }

    void CoreControllerMgr::endFrame()
    {
        for (int i = 0; i < mControllers.getSize(); i++)
        {
            mControllers(i)->endFrame();
            
            s32 sp08;
            s32 result = WPADProbe(i, &sp08);

            s32 devtype;
            if (result == 0)
            {
                devtype = sp08;
            }
            else if (result == -1)
            {
                devtype = cDEV_0xFD;
            }
            else
            {
                continue;
            }

            if (PTR_0x20 != NULL)
            {
                if (devtype != mDevTypes(i))
                {
                    s32 sp0C[4];
                    sp0C[1] = devtype;
                    sp0C[2] = mDevTypes(i);
                    sp0C[3] = i;

                    PTR_0x20->VF08(sp0C);
                }
            }
            
            mDevTypes(i) = (eCoreDevType)devtype;
        }
    }

    void ControllerRumbleUnit::startPattern(const char *pattern, int r5)
    {
        PTR_0x4 = pattern;
        PTR_0x8 = pattern;

        clrFlags(0x30);

        if (r5 < 0)
        {
            setFlags(0x10);
        }
        else if (r5 > 0)
        {
            setFlags(0x30);
        }

        setFlags(0x1);
        clrFlags(0x2);
        setFlags(0x8);

        WORD_0xC = r5;
    }

    void ControllerRumbleUnit::startPowerFrame(f32 f1, int r4)
    {
        FLOAT_0x10 = f1;
        WORD_0xC = r4;
        FLOAT_0x14 = f1;

        setFlags(0x2);
        clrFlags(0x1);
        setFlags(0x8);

        if (r4 < 0)
        {
            setFlags(0x4);
        }
    }

    f32 ControllerRumbleUnit::calc()
    {
        f32 ret = 0.0f;

        if (tstFlags(0x8))
        {
            if (tstFlags(0x1))
            {
                char c = *++PTR_0x8;
                if (c == '\0')
                {
                    if (tstFlags(0x4))
                    {
                        PTR_0x8 = PTR_0x4;
                    }
                    else
                    {
                        clrFlags(0x8);
                    }
                }
                else
                {
                    switch(c)
                    {
                        case '*':
                            ret = 1.0f;
                        case '-':
                        default:
                            break;
                    }
                }

                if (tstFlags(0x20) && --WORD_0xC <= 0)
                {
                    clrFlags(0x8);
                }

                return ret;
            }

            FLOAT_0x14 += FLOAT_0x10;
            if (FLOAT_0x14 >= 1.0f)
            {
                ret = 1.0f;
                FLOAT_0x14 = 0.0f;
            }

            if (!tstFlags(0x4) && --WORD_0xC <= 0)
            {
                clrFlags(0x8);
            }

            return ret;
        }

        return -1.0f;
    }

    void ControllerRumbleMgr::calc()
    {
        if (LIST_0x4.size != 0)
        {
            ControllerRumbleUnit *unit = (ControllerRumbleUnit *)ut::List_GetFirst(&LIST_0x4);
            f32 total = 0.0f;

            while (unit != NULL)
            {
                f32 rumble = unit->calc();
                ControllerRumbleUnit* next = (ControllerRumbleUnit *)ut::List_GetNext(&LIST_0x4, unit);

                if (rumble < 0.0f)
                {
                    ut::List_Remove(&LIST_0x4, unit);
                    ut::List_Append(&LIST_0x10, unit);
                }
                else
                {
                    total += rumble;
                }

                unit = next;
            }

            if (total >= 1.0f)
            {
                WPADControlMotor(mController->getChannel(), 1);
            }
            else
            {
                WPADControlMotor(mController->getChannel(), 0);
            }
        }
    }
}
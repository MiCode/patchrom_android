.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final CDMA_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_non_roaming_list_"

.field private static final CDMA_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_roaming_list_"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field protected static final DEFAULT_REPORT_INTERVAL_MS:I = 0xc8

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field private static final EVENT_CHECK_FOR_NETWORK_AUTOMATIC:I = 0x26

.field protected static final EVENT_CONFIG_LCE:I = 0x25

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_ICC_CHANGED:I = 0x1e

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field protected static final EVENT_INITIATE_SILENT_REDIAL:I = 0x20

.field protected static final EVENT_LAST:I = 0x26

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x21

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final EVENT_SS:I = 0x24

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x22

.field protected static final EVENT_USSD:I = 0x7

.field private static final GSM_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_non_roaming_list_"

.field private static final GSM_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_roaming_list_"

.field protected static final LCE_PULL_MODE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBase"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_SHORT_KEY:Ljava/lang/String; = "network_selection_short_key"

.field public static final VM_COUNT:Ljava/lang/String; = "vm_count_key"

.field public static final VM_ID:Ljava/lang/String; = "vm_id_key"


# instance fields
.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field public mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field protected final mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

.field protected final mHandoverRegistrants:Landroid/os/RegistrantList;

.field public final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mImsIntentReceiverRegistered:Z

.field protected mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mImsServiceReady:Z

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsTheCurrentActivePhone:Z

.field protected mIsVideoCapable:Z

.field mIsVoiceCapable:Z

.field protected mLceStatus:I

.field protected mLooper:Landroid/os/Looper;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field private final mName:Ljava/lang/String;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mPhoneId:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/RadioCapability;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

.field protected mReportInterval:I

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected final mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field private mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field protected mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field private mVmCount:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    .prologue
    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    new-instance v5, Lcom/android/internal/telephony/PhoneBase$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneBase$1;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mReportInterval:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    iput p6, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".action_detached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".action_attached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "dns_server_check_disabled_key"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    const-string v5, "ro.telephony.call_ring.multiple"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    const-string v5, "PhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDoesRilSendMultipleCallRing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ro.telephony.call_ring.delay"

    const/16 v6, 0xbb8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    const-string v5, "PhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallRingDelay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneBase;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .local v0, "carrierLocale":Ljava/util/Locale;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .local v1, "country":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_country_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "country":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    new-instance v5, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v5, p3}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x22

    const/4 v7, 0x0

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc8

    const/4 v7, 0x1

    const/16 v8, 0x25

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    goto :goto_0

    .restart local v1    # "country":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, "wM":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/PhoneBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    return p1
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const-string v5, "ro.carrier"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "unknown"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "carrierLocales":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x3

    goto :goto_1
.end method

.method private getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .local v2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_selection_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "numeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_selection_name_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_selection_short_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "shrt":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static getVideoState(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v1, 0x0

    .local v1, "videoState":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v1

    :cond_0
    return v1
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    if-nez v1, :cond_1

    const-string v1, "PhoneBase"

    const-string v2, "unexpected result from user object."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    .local v0, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleSrvccStateChanged([I)V
    .locals 7
    .param p1, "ret"    # [I

    .prologue
    const-string v5, "PhoneBase"

    const-string v6, "handleSrvccStateChanged"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    .local v3, "srvccState":Lcom/android/internal/telephony/Call$SrvccState;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget v4, p1, v5

    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    .end local v4    # "state":I
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "state":I
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    new-instance v2, Landroid/telephony/VoLteServiceState;

    invoke-direct {v2, v4}, Landroid/telephony/VoLteServiceState;-><init>(I)V

    .local v2, "lteState":Landroid/telephony/VoLteServiceState;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    goto :goto_0

    .end local v2    # "lteState":Landroid/telephony/VoLteServiceState;
    :cond_1
    const-string v5, "PhoneBase"

    const-string v6, "HANDOVER_STARTED: mImsPhone null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    goto :goto_1

    :cond_2
    const-string v5, "PhoneBase"

    const-string v6, "HANDOVER_COMPLETED: mImsPhone null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneBase;->getVideoState(Lcom/android/internal/telephony/Call;)I

    move-result v0

    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    return v1
.end method

.method private static logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, CDMAPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() in PhoneBase should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "called, GSMPhone inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 9
    .param p1, "fromRil"    # Landroid/os/Message;

    .prologue
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .local v6, "response":Landroid/os/Message;
    const/4 v2, 0x1

    .local v2, "doAutomatic":Z
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    :try_start_0
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v3, v0

    .local v3, "modes":[I
    const/4 v7, 0x0

    aget v7, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    const/4 v2, 0x0

    .end local v3    # "modes":[I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    new-instance v5, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .local v5, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object v6, v5, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    const-string v7, ""

    iput-object v7, v5, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    const-string v7, ""

    iput-object v7, v5, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    const-string v7, ""

    iput-object v7, v5, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    const/16 v7, 0x11

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    :goto_1
    return-void

    :cond_1
    const-string v7, "PhoneBase"

    const-string v8, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v4, 0x7fffffff

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .local v10, "mode":I
    if-nez v10, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v12, "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .local v6, "c":Landroid/telephony/CellInfo;
    instance-of v1, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_1

    move-object v8, v6

    check-cast v8, Landroid/telephony/CellInfoCdma;

    .local v8, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    .local v7, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    .local v0, "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v11, Landroid/telephony/CellInfoCdma;

    invoke-direct {v11, v8}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    .local v11, "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v11, v0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v7    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v8    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v11    # "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    :cond_1
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v6    # "c":Landroid/telephony/CellInfo;
    :cond_2
    move-object p1, v12

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_0

    const-string v0, "PhoneBase"

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V
    .locals 6
    .param p1, "nsm"    # Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_name_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_short_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PhoneBase"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update network selection preference due to invalid subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 4
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_1

    const-string v0, "PhoneBase"

    const-string v2, "acquireOwnershipOfImsPhone: non-null mImsPhone. Shouldn\'t happen - but disposing"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->stopLceService(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyTester;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    :cond_2
    monitor-exit v2

    return-void

    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneBase: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDnsCheckDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDcTracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallRingContinueToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCallRingDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsTheCurrentActivePhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSmsStorageMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSmsUsageMonitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNotifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSimulatedRadioControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUnitTestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDnsCheckDisabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getUnitTestMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getIccSerialNumber()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getIccRecordsLoaded()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getMessageWaitingIndicator()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCallForwardingIndicator()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingIndicator()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isInEmergencyCall()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isInEcm()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPhoneName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPhoneType()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getVoiceMessageCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getActiveApnTypes()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDataConnectivityPossible()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " needsOtaServiceProvisioning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->needsOtaServiceProvisioning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const-string v0, "enableEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    const-string v0, "exitEmergencyCallbackMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .local v0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    const-string v0, "getCdmaEriIconIndex"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    const-string v0, "getCdmaEriIconMode"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "getCdmaEriText"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const-string v0, "GSM nw, no ERI"

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "getCdmaMin"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "getCdmaPrlVersion"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v0, "currentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const-string v0, "getEnhancedVoicePrivacy"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .prologue
    return-object p0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_0

    const-string v2, "PhoneBase"

    const-string v3, "getIccFileHandler: uiccApplication == null, return null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccFileHandler: fh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2

    .prologue
    const-string v0, "PhoneBase"

    const-string v1, "getIsimRecords() is only supported on LTE devices"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLceStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    return v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneBase;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getModemActivityInfo(Landroid/os/Message;)V

    return-void
.end method

.method public getModemUuId()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "getMsisdn"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    goto :goto_0
.end method

.method public getRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_0

    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method protected getStoredVoiceMessageCount()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, "countVoiceMessages":I
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "vm_id_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "subscriberId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentSubscriberId":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "vm_count_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "PhoneBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice Mail Count from preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v4, "PhoneBase"

    const-string v5, "Voicemail count retrieval returning 0 as count for matching subscriberId not found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubId()I
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v7, :cond_1

    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] while being destroyed. Ignoring."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "unexpected event not handled"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :sswitch_0
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .local v5, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_3

    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event EVENT_CALL_RING_CONTINUE Received stat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_0

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->onUpdateIccAvailability()V

    goto/16 :goto_0

    :sswitch_3
    const-string v7, "PhoneBase"

    const-string v8, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "dialString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "silent redial failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "dialString":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->handleSrvccStateChanged([I)V

    goto/16 :goto_0

    :cond_4
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Srvcc exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_5

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v1, v7

    check-cast v1, [B

    .local v1, "data":[B
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_UNSOL_OEM_HOOK_RAW data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v8

    invoke-interface {v7, v8, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOemHookRawEventForSubscriber(I[B)V

    goto/16 :goto_0

    .end local v1    # "data":[B
    :cond_5
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OEM hook raw exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/RadioCapability;

    .local v4, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    const-string v7, "PhoneBase"

    const-string v8, "get phone radio capability fail,no need to change mRadioCapability"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_GET_RADIO_CAPABILITY :phone rc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneBase;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    goto :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_7

    const-string v7, "PhoneBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config LCE service failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .local v6, "statusInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mReportInterval:I

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "statusInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_2
        0x1f -> :sswitch_4
        0x20 -> :sswitch_3
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x25 -> :sswitch_7
        0x26 -> :sswitch_8
    .end sparse-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->hasMatchedTetherApnSetting()Z

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    const-string v0, "isCspPlmnEnabled"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    .local v1, "isImsRegistered":Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    move-result v1

    :cond_0
    :goto_0
    const-string v3, "PhoneBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsRegistered ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    move-result v1

    goto :goto_0
.end method

.method public isImsUseEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .local v0, "imsUseEnabled":Z
    :goto_0
    return v0

    .end local v0    # "imsUseEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const-string v0, "gsm_non_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMccMncMarkedAsRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const-string v0, "gsm_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    const-string v0, "isMinInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    return v0
.end method

.method public isSidMarkedAsNonRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    .prologue
    const-string v0, "cdma_non_roaming_list_"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSidMarkedAsRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    .prologue
    const-string v0, "cdma_roaming_list_"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoCallPresent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "isVideoCallActive":Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoCallActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVolteEnabled()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    .local v1, "isVolteEnabled":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v1

    :cond_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsRegistered ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isWifiCallingEnabled()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    .local v1, "isWifiCallingEnabled":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v1

    :cond_0
    const-string v2, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiCallingEnabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 3
    .param p1, "to"    # Landroid/os/RegistrantList;
    .param p2, "from"    # Landroid/os/RegistrantList;

    .prologue
    invoke-virtual {p2}, Landroid/os/RegistrantList;->removeCleared()V

    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive CDMAPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v4

    .local v4, "types":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .local v0, "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    invoke-interface {v5, p0, p1, v0, v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 3
    .param p1, "isVideoCallCapable"    # Z

    .prologue
    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method public notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V

    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvReadItem(ILandroid/os/Message;)V

    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->sendSubscriptionSettings(Z)V

    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "registerForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "registerForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "registerForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "registerForSimRecordsLoaded"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "registerForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyForVideoCapabilityChanged(Z)V

    return-void
.end method

.method public relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 4

    .prologue
    const/4 v0, 0x0

    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeReferences()V

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    :cond_0
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v0

    .local v0, "networkSelection":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const-string v0, "sendBurstDtmf"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 4
    .param p1, "restoreNetworkSelection"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    .local v0, "type":I
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .param p1, "rateInMillis"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;)V

    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 0

    .prologue
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setImsRegistrationState(Z)V

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const-string v1, "PhoneBase"

    const-string v2, "setNetworkSelectionModeAutomatic, querying current mode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const-string v0, "setOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioAccessFamily()I

    move-result v3

    .local v3, "modemRaf":I
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    .local v4, "rafFromType":I
    if-eq v3, v5, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    const-string v5, "PhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkType: Abort, unknown RAF: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v5, 0x0

    invoke-static {p2, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    :goto_0
    return-void

    :cond_2
    and-int v1, v4, v3

    .local v1, "filteredRaf":I
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v2

    .local v2, "filteredType":I
    const-string v5, "PhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkType: networkType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modemRaf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rafFromType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filteredType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected setPreferredNetworkTypeIfSimLoaded()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "gsm_roaming_list_"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gsm_non_roaming_list_"

    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cdma_roaming_list_"

    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cdma_non_roaming_list_"

    invoke-direct {p0, p4, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .local v1, "tracker":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const-string v0, "PhoneBase"

    const-string v1, "unexpected setUiTTYMode method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    return-void
.end method

.method public setVoiceMessageCount(I)V
    .locals 0
    .param p1, "countWaiting"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const-string v0, "PhoneBase"

    const-string v1, "Error! This function should never be executed, inactive Phone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    return-void
.end method

.method public startLceAfterRadioIsAvailable()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public startMonitoringImsService()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V

    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unregisterForCallWaiting"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unregisterForCdmaOtaStatusChange"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unregisterForEcmTimerReset"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForEmergencyCallToggle(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unregisterForSimRecordsLoaded"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unregisterForSubscriptionInfoReady"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-string v0, "unsetOnEcbModeExitResponse"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    return-void
.end method

.method protected updateImsPhone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "PhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsPhone mImsServiceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    goto :goto_0
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    return-void
.end method

.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Locale;

    const-string v1, "zh"

    const-string v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "zh"

    const-string v2, "MO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hdmi Control Io Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    const-string v0, "ro.hdmi.device_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Z)I
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "x2"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    return-object v0
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    const/4 v0, 0x1

    new-array v5, v0, [I

    .local v5, "finished":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v10

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    goto :goto_0

    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private canGoToStandby()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPollStrategy(I)I
    .locals 5
    .param p1, "pickStrategy"    # I

    .prologue
    and-int/lit8 v1, p1, 0x3

    .local v1, "strategy":I
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid poll strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/high16 v2, 0x30000

    and-int v0, p1, v2

    .local v0, "iterationStrategy":I
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid iteration strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    or-int v2, v1, v0

    return v2
.end method

.method private clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    goto :goto_0
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 7
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v5

    move v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_0

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    return-void
.end method

.method private disableHdmiControlService()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled cec command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private enableHdmiControlService()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.HDMI_CEC"

    const-string v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "item":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "HdmiControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t parseInt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object v0
.end method

.method private initPortInfo()V
    .locals 19
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v9, 0x0

    .local v9, "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v9

    :cond_0
    if-nez v9, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .local v17, "portInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    new-instance v16, Landroid/util/SparseIntArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseIntArray;-><init>()V

    .local v16, "portIdMap":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .local v15, "portDeviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    move-object v8, v9

    .local v8, "arr$":[Landroid/hardware/hdmi/HdmiPortInfo;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v11, v8, v10

    .local v11, "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    new-instance v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v15, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_2
    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    new-instance v1, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v1, v15}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v13

    .local v13, "mhlPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v14, Landroid/util/ArraySet;

    array-length v1, v13

    invoke-direct {v14, v1}, Landroid/util/ArraySet;-><init>(I)V

    .local v14, "mhlSupportedPorts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object v8, v13

    array-length v12, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_4

    aget-object v11, v8, v10

    .restart local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_4
    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    goto/16 :goto_0

    :cond_5
    new-instance v18, Ljava/util/ArrayList;

    array-length v1, v9

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    move-object v8, v9

    array-length v12, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_7

    aget-object v11, v8, v10

    .restart local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v4

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v11    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private initializeCec(I)V
    .locals 3
    .param p1, "initiatedBy"    # I

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    return-void
.end method

.method private initializeLocalDevices(I)V
    .locals 5
    .param p1, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    .local v1, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v1, :cond_0

    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v3    # "type":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report hotplug event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .param p2, "enabled"    # Z

    .prologue
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .local v0, "address":I
    invoke-virtual {v1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    goto :goto_0

    .end local v0    # "address":I
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .locals 5
    .param p1, "initiatedBy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    :cond_1
    const/4 v0, -0x1

    .local v0, "reason":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    :cond_2
    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x5

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->languageToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    :cond_0
    return-void
.end method

.method private onStandby(I)V
    .locals 3
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_0
.end method

.method private onStandbyCompleted(I)V
    .locals 6
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const-string v2, "HdmiControlService"

    const-string v3, "onStandbyCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_1

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_0
.end method

.method private onWakeUp()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .local v0, "startReason":I
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .end local v0    # "startReason":I
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    const-string v1, "HdmiControlService"

    const-string v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0
.end method

.method private playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object v0
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    const-string v1, "HdmiControlService"

    const-string v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "hdmi_control_enabled"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string v7, "hdmi_control_auto_wakeup_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "hdmi_control_auto_device_off_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "mhl_input_switching_enabled"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "mhl_power_charge_enabled"

    aput-object v7, v5, v6

    .local v5, "settings":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :cond_1
    monitor-exit v3

    return-void

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :cond_1
    monitor-exit v3

    return-void

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Listener already died."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Listener already died"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static toInt(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method private updateSafeMhlInput()V
    .locals 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "devices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method announceSystemAudioModeChange(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method changeInputForMhl(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "contentOn"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    .local v2, "lastInput":I
    :goto_1
    if-eq p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_0

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "lastInput":I
    :cond_2
    move v2, v3

    goto :goto_1

    .restart local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .restart local v2    # "lastInput":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object v1, v3

    goto :goto_2
.end method

.method displayOsd(I)V
    .locals 4
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HDMI_CEC"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method displayOsd(II)V
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HDMI_CEC"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method getAllLocalDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method getCecVersion()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v0

    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "info":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getIoLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputForMhl()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return v0
.end method

.method getPhysicalAddress()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2
    .param p1, "portId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method getPowerStatus()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method getVendorId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result v0

    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .local v0, "errorCode":I
    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    goto :goto_0
.end method

.method handleMhlBusModeChanged(II)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "busmode"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", busmode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlBusOvercurrent(IZ)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlDeviceStatusChanged(III)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "adopterId"    # I
    .param p3, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mhl device exists for device status event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adopterId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlHotplugEvent(IZ)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    if-eqz p2, :cond_1

    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .local v1, "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    .local v2, "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old device of port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    .end local v1    # "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v2    # "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_0

    :cond_2
    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No device to remove:[portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method invokeClearTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onClearTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 7
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->access$4900(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HdmiControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to report device event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->access$5100(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "offest"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->access$5600(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify MHL vendor command"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method invokeOneTouchRecordResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onOneTouchRecordResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method invokeRecordRequestListener(I)[B
    .locals 4
    .param p1, "recorderAddress"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to start record."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method invokeTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    # getter for: Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->access$5200(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiControlService"

    const-string v3, "Failed to call onTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5500(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .locals 6
    .param p1, "deviceType"    # I
    .param p2, "srcAddress"    # I
    .param p3, "destAddress"    # I
    .param p4, "params"    # [B
    .param p5, "hasVendorId"    # Z

    .prologue
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .local v2, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5400(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_1

    :try_start_1
    # getter for: Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->access$5500(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HdmiControlService"

    const-string v5, "Failed to notify vendor command reception"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method isConnected(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isConnectedToArcPort(I)Z
    .locals 2
    .param p1, "physicalAddress"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .local v0, "portId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isControlEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isMhlInputChangeEnabled()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPowerOnOrTransient()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPowerStandby()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPowerStandbyOrTransient()Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isProhibitMode()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isTvDevice()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTvDeviceEnabled()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValidPortId(I)Z
    .locals 1
    .param p1, "portId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    return-void
.end method

.method onHotplug(IZ)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v2, :cond_0

    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :cond_1
    const/4 v5, 0x4

    invoke-direct {p0, v3, v5}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_1

    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    const-string v1, "hdmi_control_enabled"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    const-string v1, "mhl_input_switching_enabled"

    invoke-virtual {p0, v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support MHL-control."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const-string v1, "hdmi_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    :goto_0
    return-void

    :cond_3
    const-string v1, "HdmiControlService"

    const-string v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method pathToPortId(I)I
    .locals 3
    .param p1, "path"    # I

    .prologue
    const v1, 0xf000

    and-int v0, p1, v1

    .local v0, "portAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    return-void
.end method

.method portIdToPath(I)I
    .locals 4
    .param p1, "portId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    .local v0, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    if-nez v0, :cond_0

    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the port info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xffff

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    goto :goto_0
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 2
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    goto :goto_0
.end method

.method setActivePortId(I)V
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setAudioReturnChannel(IZ)V

    return-void
.end method

.method setAudioStatus(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .local v1, "muted":Z
    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_2
    const/16 v2, 0x101

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method setCecOption(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    return-void
.end method

.method setControlEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method setLastInputForMhl(I)V
    .locals 0
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x65

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setProhibitMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method standby()V
    .locals 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    goto :goto_0
.end method

.method wakeUp()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.class public final Landroid/hardware/hdmi/HdmiControlManager;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_OSD_MESSAGE:Ljava/lang/String; = "android.hardware.hdmi.action.OSD_MESSAGE"

.field public static final AVR_VOLUME_MUTED:I = 0x65

.field public static final CLEAR_TIMER_STATUS_CEC_DISABLE:I = 0xa2

.field public static final CLEAR_TIMER_STATUS_CHECK_RECORDER_CONNECTION:I = 0xa0

.field public static final CLEAR_TIMER_STATUS_FAIL_TO_CLEAR_SELECTED_SOURCE:I = 0xa1

.field public static final CLEAR_TIMER_STATUS_TIMER_CLEARED:I = 0x80

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_INFO_AVAILABLE:I = 0x2

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_MATCHING:I = 0x1

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_RECORDING:I = 0x0

.field public static final CONTROL_STATE_CHANGED_REASON_SETTING:I = 0x1

.field public static final CONTROL_STATE_CHANGED_REASON_STANDBY:I = 0x3

.field public static final CONTROL_STATE_CHANGED_REASON_START:I = 0x0

.field public static final CONTROL_STATE_CHANGED_REASON_WAKEUP:I = 0x2

.field public static final DEVICE_EVENT_ADD_DEVICE:I = 0x1

.field public static final DEVICE_EVENT_REMOVE_DEVICE:I = 0x2

.field public static final DEVICE_EVENT_UPDATE_DEVICE:I = 0x3

.field public static final EXTRA_MESSAGE_EXTRA_PARAM1:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_ID"

.field public static final ONE_TOUCH_RECORD_ALREADY_RECORDING:I = 0x12

.field public static final ONE_TOUCH_RECORD_CEC_DISABLED:I = 0x33

.field public static final ONE_TOUCH_RECORD_CHECK_RECORDER_CONNECTION:I = 0x31

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_COPY:I = 0xd

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_FUTHER_COPIES:I = 0xe

.field public static final ONE_TOUCH_RECORD_FAIL_TO_RECORD_DISPLAYED_SCREEN:I = 0x32

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PHYSICAL_ADDRESS:I = 0xa

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x9

.field public static final ONE_TOUCH_RECORD_MEDIA_PROBLEM:I = 0x15

.field public static final ONE_TOUCH_RECORD_MEDIA_PROTECTED:I = 0x13

.field public static final ONE_TOUCH_RECORD_NOT_ENOUGH_SPACE:I = 0x16

.field public static final ONE_TOUCH_RECORD_NO_MEDIA:I = 0x10

.field public static final ONE_TOUCH_RECORD_NO_OR_INSUFFICIENT_CA_ENTITLEMENTS:I = 0xc

.field public static final ONE_TOUCH_RECORD_NO_SOURCE_SIGNAL:I = 0x14

.field public static final ONE_TOUCH_RECORD_OTHER_REASON:I = 0x1f

.field public static final ONE_TOUCH_RECORD_PARENT_LOCK_ON:I = 0x17

.field public static final ONE_TOUCH_RECORD_PLAYING:I = 0x11

.field public static final ONE_TOUCH_RECORD_PREVIOUS_RECORDING_IN_PROGRESS:I = 0x30

.field public static final ONE_TOUCH_RECORD_RECORDING_ALREADY_TERMINATED:I = 0x1b

.field public static final ONE_TOUCH_RECORD_RECORDING_ANALOGUE_SERVICE:I = 0x3

.field public static final ONE_TOUCH_RECORD_RECORDING_CURRENTLY_SELECTED_SOURCE:I = 0x1

.field public static final ONE_TOUCH_RECORD_RECORDING_DIGITAL_SERVICE:I = 0x2

.field public static final ONE_TOUCH_RECORD_RECORDING_EXTERNAL_INPUT:I = 0x4

.field public static final ONE_TOUCH_RECORD_RECORDING_TERMINATED_NORMALLY:I = 0x1a

.field public static final ONE_TOUCH_RECORD_UNABLE_ANALOGUE_SERVICE:I = 0x6

.field public static final ONE_TOUCH_RECORD_UNABLE_DIGITAL_SERVICE:I = 0x5

.field public static final ONE_TOUCH_RECORD_UNABLE_SELECTED_SERVICE:I = 0x7

.field public static final ONE_TOUCH_RECORD_UNSUPPORTED_CA:I = 0xb

.field public static final OSD_MESSAGE_ARC_CONNECTED_INVALID_PORT:I = 0x1

.field public static final OSD_MESSAGE_AVR_VOLUME_CHANGED:I = 0x2

.field public static final POWER_STATUS_ON:I = 0x0

.field public static final POWER_STATUS_STANDBY:I = 0x1

.field public static final POWER_STATUS_TRANSIENT_TO_ON:I = 0x2

.field public static final POWER_STATUS_TRANSIENT_TO_STANDBY:I = 0x3

.field public static final POWER_STATUS_UNKNOWN:I = -0x1

.field public static final RESULT_ALREADY_IN_PROGRESS:I = 0x4

.field public static final RESULT_COMMUNICATION_FAILED:I = 0x7

.field public static final RESULT_EXCEPTION:I = 0x5

.field public static final RESULT_INCORRECT_MODE:I = 0x6

.field public static final RESULT_SOURCE_NOT_AVAILABLE:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TARGET_NOT_AVAILABLE:I = 0x3

.field public static final RESULT_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlManager"

.field public static final TIMER_RECORDING_RESULT_EXTRA_CEC_DISABLED:I = 0x3

.field public static final TIMER_RECORDING_RESULT_EXTRA_CHECK_RECORDER_CONNECTION:I = 0x1

.field public static final TIMER_RECORDING_RESULT_EXTRA_FAIL_TO_RECORD_SELECTED_SOURCE:I = 0x2

.field public static final TIMER_RECORDING_RESULT_EXTRA_NO_ERROR:I = 0x0

.field public static final TIMER_RECORDING_TYPE_ANALOGUE:I = 0x2

.field public static final TIMER_RECORDING_TYPE_DIGITAL:I = 0x1

.field public static final TIMER_RECORDING_TYPE_EXTERNAL:I = 0x3

.field public static final TIMER_STATUS_MEDIA_INFO_NOT_PRESENT:I = 0x2

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_NOT_PROTECTED:I = 0x0

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_PROTECTED:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CA_NOT_SUPPORTED:I = 0x6

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CLOCK_FAILURE:I = 0xa

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DATE_OUT_OF_RANGE:I = 0x2

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DUPLICATED:I = 0xe

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PHYSICAL_NUMBER:I = 0x5

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x4

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_SEQUENCE:I = 0x3

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_CA_ENTITLEMENTS:I = 0x7

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_FREE_TIME:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_PARENTAL_LOCK_ON:I = 0x9

.field public static final TIMER_STATUS_NOT_PROGRAMMED_UNSUPPORTED_RESOLUTION:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_ENOUGH_SPACE:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_MIGHT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NOT_ENOUGH_SPACE:I = 0x9

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NO_MEDIA_INFO:I = 0xa


# instance fields
.field private final mHasPlaybackDevice:Z

.field private final mHasTvDevice:Z

.field private final mHotplugEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;",
            "Landroid/hardware/hdmi/IHdmiHotplugEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    const/4 v0, 0x0

    .local v0, "types":[I
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1}, Landroid/hardware/hdmi/IHdmiControlService;->getSupportedTypes()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .locals 1
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    return-object v0
.end method

.method private static hasDeviceType([II)Z
    .locals 5
    .param p0, "types"    # [I
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .local v3, "t":I
    if-ne v3, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v2, :cond_0

    const-string v2, "HdmiControlManager"

    const-string v3, "HdmiControlService is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HdmiControlManager"

    const-string v3, "listener is already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v1

    .local v1, "wrappedListener":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlManager"

    const-string v3, "failed to add hotplug event listener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClient(I)Landroid/hardware/hdmi/HdmiClient;
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    return-object v0
.end method

.method public getTvClient()Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;

    .prologue
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    if-nez v2, :cond_0

    const-string v2, "HdmiControlManager"

    const-string v3, "HdmiControlService is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .local v1, "wrappedListener":Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    if-nez v1, :cond_1

    const-string v2, "HdmiControlManager"

    const-string v3, "tried to remove not-registered listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, v1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiControlManager"

    const-string v3, "failed to remove hotplug event listener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

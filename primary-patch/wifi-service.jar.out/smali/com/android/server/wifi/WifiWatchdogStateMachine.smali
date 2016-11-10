.class public Lcom/android/server/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$4;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final DBG:Z = false

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x493e0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v2, 0x1b7740

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x5

    invoke-direct {v1, v6, v2, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v2, 0x6

    const/16 v3, 0xa

    const v4, 0xea60

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v2, 0x9

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-array v0, v6, [Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v2, 0x1b7740

    const/16 v3, -0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x46

    invoke-direct {v1, v9, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v2, -0x37

    invoke-direct {v1, v5, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    sput-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v3, 0x1

    const-string v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_0
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$2504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800()[D
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$4802([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    sput-object p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$4900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .local v0, "signalLevel":I
    return v0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "ret":Z
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    .local v2, "wwsm":Lcom/android/server/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->start()V

    return-object v2
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 4
    .param p1, "isGood"    # Z

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4602(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    :cond_2
    const-string v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v2, 0x21007

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

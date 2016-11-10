.class public final Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field mInIdleMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field mScanPending:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private scanRequestCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    new-instance v1, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    new-instance v1, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    new-instance v1, Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiServiceImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1200(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v1

    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :pswitch_2
    :try_start_3
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkCallerCanAccessScanResults(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->isAppOppAllowed(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->isAppOppAllowed(ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v0, 0x1

    .local v0, "enforceLocationPermission":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "WifiService"

    const-string v3, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID not expected for Passpoint: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' FQDN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "no provider friendly name"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "no enterprise config"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "no CA certificate"

    goto :goto_0

    .end local v0    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPeersMacAddress()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PEERS_MAC_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    const-string v0, "allowed kmgmt"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "cardinality != 2"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "not WPA_EAP"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "not PSK or 8021X"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAppOppAllowed(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private isLocationEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOwner(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    const/4 v1, 0x0

    .local v1, "ownerUser":I
    if-ne v6, v1, :cond_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v7

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v7, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static logAndReturnFalse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "WifiService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForPackageOrUserRemoval()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1500(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v1

    .local v1, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .local v0, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    iget v4, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v0

    .end local v0    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "hadLock":Z
    .restart local v2    # "ident":J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .local v2, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    if-nez p0, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string v2, " %02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static verifyCert(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v4

    .local v4, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    aput-object p0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v3

    .local v3, "path":Ljava/security/cert/CertPath;
    const-string v5, "AndroidCAStore"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v2, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .local v2, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v2, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {v4, v3, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catch_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p4, 0x0

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    :cond_2
    if-nez p4, :cond_3

    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->verifyCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    const-string v4, "addOrUpdateNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :goto_1
    return v3

    .restart local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :catch_0
    move-exception v0

    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CA Cert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " untrusted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to verify certificate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto :goto_0

    :cond_3
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_4
    const-string v4, "WifiService"

    const-string v5, "bad network configuration"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const-string v1, "application/x-wifi-config"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildConfig(Ljava/lang/String;[BLandroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse wi-fi configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wi-fi config type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public checkAndStartWifi()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .local v0, "wifiEnabled":Z
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    return-void

    :cond_1
    const-string v1, "disabled"

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wi-Fi is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stay-awake conditions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "stay_on_while_plugged_in"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMulticastEnabled "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMulticastDisabled "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mInIdleMode "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mScanPending "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v15, "Latest scan results:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v14

    .local v14, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "nowMs":J
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .local v11, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    .local v4, "ageMilli":J
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-lez v15, :cond_1

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x3e8

    rem-long v4, v16, v18

    :cond_1
    const-string v8, " "

    .local v8, "candidate":Ljava/lang/String;
    iget v15, v11, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    if-lez v15, :cond_2

    const-string v8, "+"

    :cond_2
    const-string v16, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    const/16 v15, 0x8

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v15, 0x0

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v15

    const/4 v15, 0x1

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x2

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x5

    aput-object v8, v17, v15

    const/16 v18, 0x6

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v15, :cond_3

    const-string v15, ""

    :goto_2
    aput-object v15, v17, v18

    const/4 v15, 0x7

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v15

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_1

    :cond_3
    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "r":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Locks acquired: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full high perf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " scan"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Locks released: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full high perf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " scan"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, "Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v15, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$600(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    const-string v15, "Multicast Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .local v10, "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .end local v10    # "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    return-void
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAutoJoinWhenAssociated(Z)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public factoryReset()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_network_reset"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_tethering"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_wifi"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    goto :goto_0
.end method

.method public getAggressiveHandover()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAggressiveHandover()I

    move-result v0

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v0

    return v0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->gateway:I

    :cond_1
    const/4 v2, 0x0

    .local v2, "dnsFound":I
    iget-object v6, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    if-nez v2, :cond_5

    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    :cond_3
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .local v5, "serverAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    :cond_4
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    return-object v4

    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_5
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHalBasedAutojoinOffload()I

    move-result v0

    return v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPeersMacAddress()Z

    move-result v0

    .local v0, "canReadPeerMacAddresses":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v4

    .local v4, "isActiveNetworkScorer":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    move-result v1

    .local v1, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isLocationEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v7

    :cond_0
    if-nez v0, :cond_1

    if-nez v4, :cond_1

    :try_start_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->checkCallerCanAccessScanResults(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0xa

    invoke-virtual {v7, v8, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleIdleModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "doScan":Z
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    :cond_1
    return-void

    .end local v1    # "idle":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 0

    .prologue
    return-void
.end method

.method public reassociate()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    return-void

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "Remove is not authorized for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 24

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    const/4 v2, 0x0

    .local v2, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v19

    .local v19, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .local v16, "rxIdleCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .local v14, "rxCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .local v20, "txCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v22, v4, v6

    .local v22, "voltage":D
    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v3, v4

    int-to-long v10, v3

    .local v10, "rxIdleTime":J
    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-long v4, v3

    mul-long v4, v4, v20

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    int-to-long v6, v3

    mul-long/2addr v6, v14

    add-long/2addr v4, v6

    mul-long v6, v10, v16

    add-long/2addr v4, v6

    long-to-double v4, v4

    mul-double v4, v4, v22

    double-to-long v12, v4

    .local v12, "energyUsed":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    if-ltz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_1

    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .local v18, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxIdleCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " txCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " voltage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " on_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " tx_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rx_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxIdleTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " energy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " reportActivityInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    .end local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v19

    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-long v6, v6

    move-object/from16 v0, v19

    iget v8, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    int-to-long v8, v8

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    .end local v10    # "rxIdleTime":J
    .end local v12    # "energyUsed":J
    .end local v14    # "rxCurrent":J
    .end local v16    # "rxIdleCurrent":J
    .end local v20    # "txCurrent":J
    .end local v22    # "voltage":D
    .restart local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_2
    move-object v3, v2

    .end local v19    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :goto_0
    return-object v3

    :cond_3
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHalBasedAutojoinOffload(I)V

    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_1
    const-string v0, "WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600a

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WifiService"

    const-string v3, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v5

    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v3, 0x26008

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "ident":J
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationHardwarePermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getChannelList()Ljava/util/List;

    move-result-object v1

    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez v1, :cond_0

    const-string v4, "WifiService"

    const-string v5, "startLocationRestrictedScan cant get channels"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/net/wifi/ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/ScanSettings;-><init>()V

    .local v3, "settings":Landroid/net/wifi/ScanSettings;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    iget-boolean v4, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Landroid/os/WorkSource;

    .end local p1    # "workSource":Landroid/os/WorkSource;
    const/4 v4, -0x6

    invoke-direct {p1, v4}, Landroid/os/WorkSource;-><init>(I)V

    .restart local p1    # "workSource":Landroid/os/WorkSource;
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "callingIdentity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    monitor-exit p0

    .end local v0    # "callingIdentity":J
    :goto_0
    return-void

    .restart local v0    # "callingIdentity":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .end local v0    # "callingIdentity":J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    new-instance v2, Landroid/net/wifi/ScanSettings;

    invoke-direct {v2, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v2, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v2}, Landroid/net/wifi/ScanSettings;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WifiService"

    const-string v4, "invalid scan setting"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .end local v2    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    goto :goto_0

    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local v2    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_1
    move-object p1, v2

    .end local v2    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startWifi()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    return-void
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .local v3, "pid":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1300(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    move-result v2

    .local v2, "index":I
    if-gez v2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    .restart local v2    # "index":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1400(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .local v5, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$ActionListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_CONFIGURE_WIFI_CHANGE:I = 0x2700d

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_RESET_HOTLIST:I = 0x27007

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SET_HOTLIST:I = 0x27006

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_START_TRACKING_CHANGE:I = 0x2700b

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_STOP_TRACKING_CHANGE:I = 0x2700c

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->init()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    sput-object p0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v4, Landroid/net/wifi/WifiScanner;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v3, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiScanner;->sThreadRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_1

    const/4 v2, 0x0

    .local v2, "messenger":Landroid/os/Messenger;
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :try_start_2
    sput-object v3, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    monitor-exit v4

    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_1
    return-void

    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiScanner"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/net/wifi/WifiScanner$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiScanner;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v3, Landroid/net/wifi/WifiScanner;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v3, "WifiScanner"

    const-string v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiScanner;->sListenerKey:I

    .local v0, "key":I
    if-eqz v0, :cond_1

    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .local v0, "key":I
    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/net/wifi/WifiScanner;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiScanner;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2

    goto :goto_0

    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 1
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .local v0, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    iput p1, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    iput p2, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    iput p3, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    iput p4, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    iput p5, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    iput-object p6, v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiScanner;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    return-void
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700d

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 3
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Channels"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScanResults()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v2, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27004

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .local v0, "reply":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x27011

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27002

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27015

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 5
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    new-instance v0, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .local v0, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object p1, v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    sget-object v1, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27006

    const/4 v3, 0x0

    invoke-static {p3}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700b

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27003

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27016

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27007

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiScanner;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2700c

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

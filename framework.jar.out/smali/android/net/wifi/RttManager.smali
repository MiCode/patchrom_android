.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ServiceHandler;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$WifiInformationElement;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$Capabilities;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = true

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static final sCapabilitiesLock:Ljava/lang/Object;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private mService:Landroid/net/wifi/IRttManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/RttManager;->sListenerKey:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager;->sCapabilitiesLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager;->sThreadRefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IRttManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-direct {p0}, Landroid/net/wifi/RttManager;->init()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    sput-object p0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

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
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    sget-object v4, Landroid/net/wifi/RttManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget v3, Landroid/net/wifi/RttManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/RttManager;->sThreadRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_1

    const/4 v2, 0x0

    .local v2, "messenger":Landroid/os/Messenger;
    :try_start_1
    const-string v3, "RttManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get the messenger from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-interface {v3}, Landroid/net/wifi/IRttManager;->getMessenger()Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :try_start_2
    sput-object v3, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    monitor-exit v4

    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_1
    return-void

    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "RttManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/net/wifi/RttManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/RttManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v3, Landroid/net/wifi/RttManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

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
    const-string v3, "RttManager"

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
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/RttManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/RttManager;->sListenerKey:I

    .local v0, "key":I
    if-eqz v0, :cond_1

    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    invoke-static {p0}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .local v0, "key":I
    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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
    sget-object v2, Landroid/net/wifi/RttManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/RttManager;->sListenerMap:Landroid/util/SparseArray;

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

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .locals 5
    .param p1, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "RttManager"

    const-string v1, "Can not get RTT capabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RTT chip is not working"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    if-eq v2, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v2, v3, :cond_2

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal Request Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v2, v2, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-nez v2, :cond_3

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": One side RTT is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v2, v2, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-nez v2, :cond_4

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": two side RTT is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v1, "RttManager"

    const-string v2, "No BSSID in params"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    if-eqz v2, :cond_7

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal number of burst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    if-lez v2, :cond_8

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_9

    :cond_8
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal sample number per burst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-ltz v2, :cond_a

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-le v2, v4, :cond_b

    :cond_a
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal measurement frame retry number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-ltz v2, :cond_c

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-le v2, v4, :cond_d

    :cond_c
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal FTMR frame retry number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-boolean v2, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v2, v2, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-nez v2, :cond_e

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": LCI is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-boolean v2, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v2, v2, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-nez v2, :cond_f

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": LCR is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    if-lt v2, v1, :cond_10

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_11

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_11

    :cond_10
    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Illegal burst timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    iget-object v3, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v3, v3, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/2addr v2, v3

    if-nez v2, :cond_12

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Do not support this preamble: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    iget-object v3, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v3, v3, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/2addr v2, v3

    if-nez v2, :cond_13

    const-string v1, "RttManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Do not support this bandwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 4

    .prologue
    sget-object v2, Landroid/net/wifi/RttManager;->sCapabilitiesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RttManager"

    const-string v3, "Can not get RTT Capabilities"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 10
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    const/4 v2, 0x0

    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/wifi/RttManager$RttParams;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .local v5, "rttParam":Landroid/net/wifi/RttManager$RttParams;
    invoke-direct {p0, v5, v2}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "RTT Request Parameter Illegal"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "rttParam":Landroid/net/wifi/RttManager$RttParams;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    new-instance v4, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v4, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .local v4, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    const-string v6, "RttManager"

    const-string v7, "Send RTT request to RTT Service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v7, 0x27200

    const/4 v8, 0x0

    invoke-static {p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    sget-object v0, Landroid/net/wifi/RttManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x27201

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

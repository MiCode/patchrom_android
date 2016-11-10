.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100b

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private volatile mLastBwRefreshTime:J

.field private mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollLceScheduled:Z

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final netId:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    .prologue
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    iput-boolean v4, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v1

    iput v1, p0, Landroid/net/NetworkAgent;->netId:I

    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v2, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    const v0, 0x81005

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public explicitlySelected(Z)V
    .locals 2
    .param p1, "acceptUnvalidated"    # Z

    .prologue
    const v0, 0x81008

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_1

    const-string v5, "Received new connection while already connected!"

    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v10, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const v5, 0x11002

    invoke-virtual {v0, p1, v5, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    iget-object v8, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iput-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .local v4, "m":Landroid/os/Message;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v1    # "i$":Ljava/util/Iterator;
    :sswitch_1
    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    :sswitch_2
    const-string v5, "NetworkAgent channel lost"

    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    iget-object v8, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :sswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled Message "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "currentTimeMs":J
    iget-wide v10, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    add-long/2addr v10, v12

    cmp-long v9, v2, v10

    if-ltz v9, :cond_3

    iput-boolean v8, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    iget-object v8, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    goto/16 :goto_0

    :cond_3
    iget-boolean v5, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    if-nez v5, :cond_0

    iget-wide v8, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    add-long/2addr v8, v12

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x1

    add-long v6, v8, v10

    .local v6, "waitTime":J
    const v5, 0x8100a

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/NetworkAgent;->sendEmptyMessageDelayed(IJ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    goto/16 :goto_0

    .end local v2    # "currentTimeMs":J
    .end local v6    # "waitTime":J
    :sswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->networkStatus(I)V

    goto/16 :goto_0

    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    goto/16 :goto_0

    :cond_4
    move v5, v8

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81000 -> :sswitch_3
        0x81007 -> :sswitch_5
        0x81009 -> :sswitch_6
        0x8100a -> :sswitch_4
        0x8100b -> :sswitch_7
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected networkStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    return-void
.end method

.method protected pollLceData()V
    .locals 0

    .prologue
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 0

    .prologue
    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    const v0, 0x81006

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const v0, 0x81003

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const v0, 0x81002

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const v0, 0x81001

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Score must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x81004

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected abstract unwanted()V
.end method

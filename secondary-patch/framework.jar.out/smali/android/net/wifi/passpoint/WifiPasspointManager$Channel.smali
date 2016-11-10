.class public Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAnqpRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAnqpRequestLock:Ljava/lang/Object;

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;-><init>(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->getListener(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->peekListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestStart(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private anqpRequestFinish(Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    const-string v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anqpRequestFinish sr.bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, "sr1":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .end local v1    # "sr1":Landroid/net/wifi/ScanResult;
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

.method private anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    .prologue
    const-string v2, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anqpRequestFinish pi.bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find hit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAnqpRequest.len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "sr":Landroid/net/wifi/ScanResult;
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

.method private anqpRequestStart(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    .prologue
    const-string v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anqpRequestStart sr.bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getListener(IZ)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .param p2, "forceRemove"    # Z

    .prologue
    const/4 v2, 0x0

    const-string v1, "PasspointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getListener() key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "count":I
    const-string v1, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v0, :cond_1

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .end local v0    # "count":I
    :cond_1
    const-string v1, "PasspointManager"

    const-string v2, "remove key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private peekListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    const-string v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peekListener() key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private putListener(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .prologue
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_2
    :try_start_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    .local v0, "key":I
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.class final Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkSocketObserver"


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/IpReachabilityMonitor;


# direct methods
.method private constructor <init>(Landroid/net/IpReachabilityMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/IpReachabilityMonitor;
    .param p2, "x1"    # Landroid/net/IpReachabilityMonitor$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    .prologue
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    return-void
.end method

.method private clearNetlinkSocket()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    :cond_0
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 10
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    .prologue
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v3

    .local v3, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-eqz v3, :cond_0

    iget v6, v3, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    iget-object v7, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I
    invoke-static {v7}, Landroid/net/IpReachabilityMonitor;->access$500(Landroid/net/IpReachabilityMonitor;)I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "destination":Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # invokes: Landroid/net/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z
    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->access$600(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v6

    iget-short v2, v6, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .local v2, "msgType":S
    iget-short v4, v3, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .local v4, "nudState":S
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NeighborEvent{elapsedMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v7

    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "eventMsg":Ljava/lang/String;
    const-string v6, "NetlinkSocketObserver"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->access$200(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->access$700(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x1d

    if-ne v2, v6, :cond_3

    const/4 v5, 0x0

    .local v5, "value":S
    :goto_1
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->access$700(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "value":S
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    const-string v6, "NetlinkSocketObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ALERT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # invokes: Landroid/net/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V
    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->access$800(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    .prologue
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v0

    .local v0, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unparsable netlink msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .restart local v1    # "position":I
    :cond_2
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    iget v2, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .local v2, "srcPortId":I
    if-eqz v2, :cond_3

    const-string v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non-kernel source portId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v2, -0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_4

    const-string v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netlink error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    instance-of v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-nez v3, :cond_5

    const-string v3, "NetlinkSocketObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non-rtnetlink neighbor msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-direct {p0, v0, p2, p3}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    goto/16 :goto_0
.end method

.method private recvKernelReply()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v1, v2, :cond_0

    throw v0

    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupNetlinkSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    new-instance v1, Landroid/net/netlink/NetlinkSocket;

    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v1, v2}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    iput-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    new-instance v0, Landroid/system/NetlinkSocketAddress;

    const/4 v1, 0x0

    sget v2, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    invoke-direct {v0, v1, v2}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .local v0, "listenAddr":Landroid/system/NetlinkSocketAddress;
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/net/IpReachabilityMonitor;->access$200(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v6, 0x1

    # setter for: Landroid/net/IpReachabilityMonitor;->mRunning:Z
    invoke-static {v4, v6}, Landroid/net/IpReachabilityMonitor;->access$302(Landroid/net/IpReachabilityMonitor;Z)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # invokes: Landroid/net/IpReachabilityMonitor;->stillRunning()Z
    invoke-static {v4}, Landroid/net/IpReachabilityMonitor;->access$400(Landroid/net/IpReachabilityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_2
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "whenMs":J
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v2, v3}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "whenMs":J
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "NetlinkSocketObserver"

    const-string v5, "Failed to suitably initialize a netlink socket"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/net/IpReachabilityMonitor;->access$200(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v6, 0x0

    # setter for: Landroid/net/IpReachabilityMonitor;->mRunning:Z
    invoke-static {v4, v6}, Landroid/net/IpReachabilityMonitor;->access$302(Landroid/net/IpReachabilityMonitor;Z)Z

    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/system/ErrnoException;
    const-string v4, "NetlinkSocketObserver"

    const-string v5, "ErrnoException: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    # getter for: Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/net/IpReachabilityMonitor;->access$200(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_5
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    const/4 v6, 0x0

    # setter for: Landroid/net/IpReachabilityMonitor;->mRunning:Z
    invoke-static {v4, v6}, Landroid/net/IpReachabilityMonitor;->access$302(Landroid/net/IpReachabilityMonitor;Z)Z

    monitor-exit v5

    return-void

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :catch_2
    move-exception v1

    goto :goto_1
.end method

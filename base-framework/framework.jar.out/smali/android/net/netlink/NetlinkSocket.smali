.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field private static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# instance fields
.field private mAddr:Landroid/system/NetlinkSocketAddress;

.field private final mDescriptor:Ljava/io/FileDescriptor;

.field private mLastRecvTimeoutMs:J

.field private mLastSendTimeoutMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "nlProto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p1}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v4, 0x10000

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method private checkTimeout(J)V
    .locals 3
    .param p1, "timeoutMs"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .param p1, "localAddr"    # Landroid/system/NetlinkSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public connectTo(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .param p1, "peerAddr"    # Landroid/system/NetlinkSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public connectToKernel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/net/netlink/NetlinkSocket;->connectTo(Landroid/system/NetlinkSocketAddress;)V

    return-void
.end method

.method public getLocalAddress()Landroid/system/NetlinkSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Landroid/system/NetlinkSocketAddress;

    return-object v0
.end method

.method public recvMessage()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2000

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recvMessage(IJ)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "bufsize"    # I
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    iget-object v3, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v3

    :try_start_0
    iget-wide v4, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iput-wide p2, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    .local v1, "length":I
    if-ne v1, p1, :cond_1

    const-string v2, "NetlinkSocket"

    const-string v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "length":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recvMessage(J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage([BII)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    move-result v0

    return v0
.end method

.method public sendMessage([BIIJ)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iput-wide p4, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

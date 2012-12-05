.class public Landroid/net/arp/ArpPeer;
.super Ljava/lang/Object;
.source "ArpPeer.java"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ArpPeer"


# instance fields
.field private final L2_BROADCAST:[B

.field private mInterfaceName:Ljava/lang/String;

.field private final mMyAddr:Ljava/net/InetAddress;

.field private final mMyMac:[B

.field private final mPeer:Ljava/net/InetAddress;

.field private final mSocket:Llibcore/net/RawSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 5
    .parameter "interfaceName"
    .parameter "myAddr"
    .parameter "mac"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [B

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    iput-object p1, p0, Landroid/net/arp/ArpPeer;->mInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, p2, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    instance-of v1, p4, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IPv6 unsupported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput-object p4, p0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    new-array v1, v4, [B

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    iget-object v1, p0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v1, Llibcore/net/RawSocket;

    iget-object v2, p0, Landroid/net/arp/ArpPeer;->mInterfaceName:Ljava/lang/String;

    const/16 v3, 0x806

    invoke-direct {v1, v2, v3}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doArp(I)[B
    .locals 14
    .parameter "timeoutMillis"

    .prologue
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, buf:Ljava/nio/ByteBuffer;
    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .local v7, desiredIp:[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v12, v2, v4

    .local v12, timeout:J
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x800

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    new-array v0, v0, [B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    iget-object v2, p0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Llibcore/net/RawSocket;->write([B[BII)I

    const/16 v0, 0x5dc

    new-array v1, v0, [B

    .local v1, recvBuf:[B
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-gez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v12, v2

    .local v8, duration:J
    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, -0x1

    long-to-int v5, v8

    invoke-virtual/range {v0 .. v5}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v10

    .local v10, readLen:I
    const/16 v0, 0x1c

    if-lt v10, v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget-byte v0, v1, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0xe

    aget-byte v0, v1, v0

    const/4 v2, 0x0

    aget-byte v2, v7, v2

    if-ne v0, v2, :cond_0

    const/16 v0, 0xf

    aget-byte v0, v1, v0

    const/4 v2, 0x1

    aget-byte v2, v7, v2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    aget-byte v0, v1, v0

    const/4 v2, 0x2

    aget-byte v2, v7, v2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x11

    aget-byte v0, v1, v0

    const/4 v2, 0x3

    aget-byte v2, v7, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    new-array v11, v0, [B

    .local v11, result:[B
    const/16 v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v0, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v8           #duration:J
    .end local v10           #readLen:I
    .end local v11           #result:[B
    :goto_0
    return-object v11

    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

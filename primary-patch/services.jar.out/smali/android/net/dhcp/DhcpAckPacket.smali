.class Landroid/net/dhcp/DhcpAckPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpAckPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .prologue
    sget-object v6, Landroid/net/dhcp/DhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    iput-boolean p3, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    iput-object p4, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    return-void
.end method

.method private static final getInt(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "v"    # Ljava/lang/Integer;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    if-eqz v0, :cond_0

    sget-object v2, Landroid/net/dhcp/DhcpAckPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .local v2, "destIp":Ljava/net/Inet4Address;
    :goto_0
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    if-eqz v0, :cond_1

    sget-object v3, Landroid/net/dhcp/DhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .local v3, "srcIp":Ljava/net/Inet4Address;
    :goto_1
    const/4 v7, 0x2

    iget-boolean v8, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpAckPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v6

    .end local v2    # "destIp":Ljava/net/Inet4Address;
    .end local v3    # "srcIp":Ljava/net/Inet4Address;
    :cond_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    goto :goto_0

    .restart local v2    # "destIp":Ljava/net/Inet4Address;
    :cond_1
    iget-object v3, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    goto :goto_1
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v0, 0x36

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/16 v0, 0x33

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    invoke-static {p1}, Landroid/net/dhcp/DhcpAckPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    const-string v1, " DNS servers: "

    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .local v0, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "dnsServer":Ljava/net/Inet4Address;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ACK: your new IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", netmask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lease time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

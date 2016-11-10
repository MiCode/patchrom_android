.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpRequestPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZ)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "clientMac"    # [B
    .param p5, "broadcast"    # Z

    .prologue
    sget-object v4, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    return-void
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
    sget-object v2, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v3, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v7, 0x1

    iget-boolean v8, p0, Landroid/net/dhcp/DhcpRequestPacket;->mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpRequestPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v0, 0x35

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v0, 0x3d

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpRequestPacket;->getClientId()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x32

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    :cond_0
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x36

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpRequestPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x37

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    invoke-static {p1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " REQUEST, desired IP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from host \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', param list length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    array-length v1, v1

    goto :goto_0
.end method

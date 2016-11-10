.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateway:Ljava/net/Inet4Address;

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .prologue
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v6, 0xff

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x4

    .local v2, "optionLen":I
    if-le v2, v6, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP option too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .prologue
    const/16 v3, 0xff

    if-eqz p2, :cond_1

    array-length v0, p2

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHCP option too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    const/4 v3, 0x0

    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    .prologue
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p9, "gateway"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    const/4 v3, 0x0

    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    .prologue
    new-instance v1, Landroid/net/dhcp/DhcpRequestPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "result":Ljava/nio/ByteBuffer;
    return-object v7
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 14
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    move/from16 v11, p2

    .local v11, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .local v4, "bufPosition":I
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    .local v10, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v12, p4, p3

    div-int/lit8 v12, v12, 0x2

    new-array v9, v12, [S

    .local v9, "shortArray":[S
    invoke-virtual {v10, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    move-object v2, v9

    .local v2, "arr$":[S
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-short v8, v2, v5

    .local v8, "s":S
    invoke-static {v8}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v8    # "s":S
    :cond_0
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x2

    add-int p3, p3, v12

    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    move/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    int-to-short v3, v12

    .local v3, "b":S
    if-gez v3, :cond_1

    add-int/lit16 v12, v3, 0x100

    int-to-short v3, v12

    :cond_1
    mul-int/lit16 v12, v3, 0x100

    add-int/2addr v11, v12

    .end local v3    # "b":S
    :cond_2
    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    const v13, 0xffff

    and-int/2addr v13, v11

    add-int v11, v12, v13

    shr-int/lit8 v12, v11, 0x10

    const v13, 0xffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    const v13, 0xffff

    and-int v11, v12, v13

    xor-int/lit8 v7, v11, -0x1

    .local v7, "negated":I
    int-to-short v12, v7

    invoke-static {v12}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v12

    return v12
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 70
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I

    .prologue
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v31, 0x0

    .local v31, "gateway":Ljava/net/Inet4Address;
    const/16 v62, 0x0

    .local v62, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    .local v56, "netMask":Ljava/net/Inet4Address;
    const/16 v54, 0x0

    .local v54, "message":Ljava/lang/String;
    const/16 v68, 0x0

    .local v68, "vendorId":Ljava/lang/String;
    const/16 v69, 0x0

    .local v69, "vendorInfo":Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, "expectedParams":[B
    const/16 v33, 0x0

    .local v33, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v39, 0x0

    .local v39, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v61, 0x0

    .local v61, "requestedIp":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    .local v55, "mtu":Ljava/lang/Short;
    const/16 v53, 0x0

    .local v53, "maxMessageSize":Ljava/lang/Short;
    const/16 v52, 0x0

    .local v52, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x116

    if-ge v10, v11, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v49, v0

    .local v49, "l2dst":[B
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v50, v0

    .local v50, "l2src":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v51

    .local v51, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    move/from16 v0, v51

    if-eq v0, v10, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .end local v49    # "l2dst":[B
    .end local v50    # "l2src":[B
    .end local v51    # "l2type":S
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p1

    if-gt v0, v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x108

    if-ge v10, v11, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v46

    .local v46, "ipTypeAndLength":B
    move/from16 v0, v46

    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v47, v10, 0x4

    .local v47, "ipVersion":I
    const/4 v10, 0x4

    move/from16 v0, v47

    if-eq v0, v10, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v38

    .local v38, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v45

    .local v45, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v42

    .local v42, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v40

    .local v40, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v41

    .local v41, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v44

    .local v44, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v43

    .local v43, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v37

    .local v37, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v39

    const/16 v10, 0x11

    move/from16 v0, v43

    if-eq v0, v10, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    and-int/lit8 v10, v46, 0xf

    add-int/lit8 v60, v10, -0x5

    .local v60, "optionWords":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    move/from16 v0, v35

    move/from16 v1, v60

    if-ge v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v67

    .local v67, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v65

    .local v65, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v66

    .local v66, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v64

    .local v64, "udpChkSum":S
    const/16 v10, 0x43

    move/from16 v0, v67

    if-eq v0, v10, :cond_6

    const/16 v10, 0x44

    move/from16 v0, v67

    if-eq v0, v10, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v35    # "i":I
    .end local v37    # "ipChksm":S
    .end local v38    # "ipDiffServicesField":B
    .end local v40    # "ipFlags":B
    .end local v41    # "ipFragOffset":B
    .end local v42    # "ipIdentification":S
    .end local v43    # "ipProto":B
    .end local v44    # "ipTTL":B
    .end local v45    # "ipTotalLength":S
    .end local v46    # "ipTypeAndLength":B
    .end local v47    # "ipVersion":I
    .end local v60    # "optionWords":I
    .end local v64    # "udpChkSum":S
    .end local v65    # "udpDstPort":S
    .end local v66    # "udpLen":S
    .end local v67    # "udpSrcPort":S
    :cond_6
    const/4 v10, 0x2

    move/from16 v0, p1

    if-gt v0, v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0xec

    if-ge v10, v11, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v63

    .local v63, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v34

    .local v34, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    .local v20, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v32

    .local v32, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v22

    .local v22, "bootpFlags":S
    const v10, 0x8000

    and-int v10, v10, v22

    if-eqz v10, :cond_a

    const/4 v5, 0x1

    .local v5, "broadcast":Z
    :goto_2
    const/4 v10, 0x4

    new-array v0, v10, [B

    move-object/from16 v48, v0

    .local v48, "ipv4addr":[B
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;

    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v48 .. v48}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    check-cast v16, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .local v16, "relayIp":Ljava/net/Inet4Address;
    const/16 v10, 0x10

    move/from16 v0, v20

    if-le v0, v10, :cond_9

    sget-object v10, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v0, v10

    move/from16 v20, v0

    :cond_9
    move/from16 v0, v20

    new-array v9, v0, [B

    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    rsub-int/lit8 v11, v20, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    add-int/lit16 v10, v10, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    move/from16 v0, v23

    if-eq v0, v10, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v23    # "dhcpMagicCookie":I
    .end local v48    # "ipv4addr":[B
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5    # "broadcast":Z
    .restart local v48    # "ipv4addr":[B
    :catch_0
    move-exception v28

    .local v28, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v28    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    .restart local v23    # "dhcpMagicCookie":I
    :cond_b
    const/16 v57, 0x1

    .local v57, "notFinishedOptions":Z
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v10, v11, :cond_f

    if-eqz v57, :cond_f

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v59

    .local v59, "optionType":B
    const/4 v10, -0x1

    move/from16 v0, v59

    if-ne v0, v10, :cond_d

    const/16 v57, 0x0

    goto :goto_3

    :cond_d
    if-eqz v59, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v58, v0

    .local v58, "optionLen":I
    const/16 v29, 0x0

    .local v29, "expectedLen":I
    sparse-switch v59, :sswitch_data_0

    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_4
    move/from16 v0, v35

    move/from16 v1, v58

    if-ge v0, v1, :cond_e

    add-int/lit8 v29, v29, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .end local v35    # "i":I
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v56

    const/16 v29, 0x4

    :cond_e
    :goto_5
    move/from16 v0, v29

    move/from16 v1, v58

    if-eq v0, v1, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_1
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v31

    const/16 v29, 0x4

    goto :goto_5

    :sswitch_2
    const/16 v29, 0x0

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v58

    if-ge v0, v1, :cond_e

    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v29, v29, 0x4

    goto :goto_6

    :sswitch_3
    move/from16 v29, v58

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v33

    goto :goto_5

    :sswitch_4
    const/16 v29, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v55

    goto :goto_5

    :sswitch_5
    move/from16 v29, v58

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v21

    const/16 v29, 0x4

    goto :goto_5

    :sswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v61

    const/16 v29, 0x4

    goto :goto_5

    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const/16 v29, 0x4

    goto :goto_5

    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v24

    const/16 v29, 0x1

    goto :goto_5

    :sswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v62

    const/16 v29, 0x4

    goto :goto_5

    :sswitch_b
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v29, v58

    goto :goto_5

    :sswitch_c
    move/from16 v29, v58

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_5

    :sswitch_d
    const/16 v29, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v53

    goto/16 :goto_5

    :sswitch_e
    const/16 v29, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_5

    :sswitch_f
    const/16 v29, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_5

    :sswitch_10
    move/from16 v29, v58

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v68

    goto/16 :goto_5

    :sswitch_11
    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .local v36, "id":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v29, v58

    goto/16 :goto_5

    .end local v36    # "id":[B
    :sswitch_12
    move/from16 v29, v58

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v69

    goto/16 :goto_5

    .end local v29    # "expectedLen":I
    .end local v58    # "optionLen":I
    .end local v59    # "optionType":B
    :catch_1
    move-exception v27

    .local v27, "e":Ljava/nio/BufferUnderflowException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    :cond_f
    packed-switch v24, :pswitch_data_0

    :pswitch_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unimplemented type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_7
    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object/from16 v0, v26

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    move-object/from16 v0, v33

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v0, v52

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, v54

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    move-object/from16 v0, v61

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object/from16 v0, v30

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    move-object/from16 v0, v62

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    move-object/from16 v0, v56

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    move-object/from16 v0, v53

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    move-object/from16 v0, v68

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    move-object/from16 v0, v69

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v9

    move v15, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_5
        0x1a -> :sswitch_4
        0x1c -> :sswitch_6
        0x2b -> :sswitch_12
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x35 -> :sswitch_9
        0x36 -> :sswitch_a
        0x37 -> :sswitch_b
        0x38 -> :sswitch_c
        0x39 -> :sswitch_d
        0x3a -> :sswitch_e
        0x3b -> :sswitch_f
        0x3c -> :sswitch_10
        0x3d -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .locals 3
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I

    .prologue
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object v1

    return-object v1
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    .prologue
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    .prologue
    const-string v2, ""

    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "hexString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .prologue
    new-array v0, p1, [B

    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v1, v0

    .local v1, "length":I
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, v0, v1

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .end local v2    # "result":Ljava/net/Inet4Address;
    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "result":Ljava/net/Inet4Address;
    :goto_0
    return-object v2

    .end local v2    # "result":Ljava/net/Inet4Address;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .restart local v2    # "result":Ljava/net/Inet4Address;
    goto :goto_0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v0, 0x39

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    const/16 v0, 0x3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-dhcp-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/16 v0, 0xc

    const-string v1, "net.hostname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 15
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    .prologue
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v7

    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    sget-object v13, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/16 v13, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v13, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v13, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v13, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v13, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v13, v13

    int-to-byte v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v13, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v13, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_4

    const/16 v13, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    iget-object v14, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v14, v14

    rsub-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x40

    add-int/lit16 v13, v13, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v13, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v9

    int-to-short v10, v13

    .local v10, "udpLen":S
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    .local v12, "udpSeed":I
    add-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v13, v4, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v13, v4, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v13, v4, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x11

    add-int/2addr v12, v10

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v9, v13}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v5

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v13, v5, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_3
    return-void

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 6

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v5}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v5}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "prefixLength":I
    :goto_1
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    goto :goto_0

    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v4

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v2

    .restart local v2    # "prefixLength":I
    goto :goto_1

    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v4

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method

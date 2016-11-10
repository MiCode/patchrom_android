.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0
    .param p1, "nlmsghdr"    # Landroid/net/netlink/StructNlMsgHdr;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .local v2, "startPosition":I
    :goto_0
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    .local v0, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object v3

    .end local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    .end local v2    # "startPosition":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .restart local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    .restart local v2    # "startPosition":I
    :cond_2
    iget v4, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v4}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    .local v1, "payloadLength":I
    add-int/lit8 v1, v1, -0x10

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v1, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    iget-short v4, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    sparse-switch v4, :sswitch_data_0

    iget-short v4, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v5, 0xf

    if-gt v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    goto :goto_1

    :sswitch_0
    invoke-static {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object v3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    goto :goto_1

    :sswitch_2
    invoke-static {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

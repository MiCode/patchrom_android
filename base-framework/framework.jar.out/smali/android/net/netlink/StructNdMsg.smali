.class public Landroid/net/netlink/StructNdMsg;
.super Ljava/lang/Object;
.source "StructNdMsg.java"


# static fields
.field public static NTF_MASTER:B = 0x0t

.field public static NTF_PROXY:B = 0x0t

.field public static NTF_ROUTER:B = 0x0t

.field public static NTF_SELF:B = 0x0t

.field public static NTF_USE:B = 0x0t

.field public static final NUD_DELAY:S = 0x8s

.field public static final NUD_FAILED:S = 0x20s

.field public static final NUD_INCOMPLETE:S = 0x1s

.field public static final NUD_NOARP:S = 0x40s

.field public static final NUD_NONE:S = 0x0s

.field public static final NUD_PERMANENT:S = 0x80s

.field public static final NUD_PROBE:S = 0x10s

.field public static final NUD_REACHABLE:S = 0x2s

.field public static final NUD_STALE:S = 0x4s

.field public static final STRUCT_SIZE:I = 0xc


# instance fields
.field public ndm_family:B

.field public ndm_flags:B

.field public ndm_ifindex:I

.field public ndm_state:S

.field public ndm_type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    const/4 v0, 0x2

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    const/4 v0, 0x4

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    const/16 v0, 0x8

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    const/16 v0, -0x80

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNudStateConnected(S)Z
    .locals 1
    .param p0, "nudState"    # S

    .prologue
    and-int/lit16 v0, p0, 0xc2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .local v2, "struct":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .local v0, "pad1":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .local v1, "pad2":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    goto :goto_0
.end method

.method public static stringForNudFlags(B)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # B

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "NTF_USE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "NTF_SELF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "NTF_MASTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "NTF_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "NTF_ROUTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForNudState(S)Ljava/lang/String;
    .locals 2
    .param p0, "nudState"    # S

    .prologue
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown NUD state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NUD_NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "NUD_INCOMPLETE"

    goto :goto_0

    :sswitch_2
    const-string v0, "NUD_REACHABLE"

    goto :goto_0

    :sswitch_3
    const-string v0, "NUD_STALE"

    goto :goto_0

    :sswitch_4
    const-string v0, "NUD_DELAY"

    goto :goto_0

    :sswitch_5
    const-string v0, "NUD_PROBE"

    goto :goto_0

    :sswitch_6
    const-string v0, "NUD_FAILED"

    goto :goto_0

    :sswitch_7
    const-string v0, "NUD_NOARP"

    goto :goto_0

    :sswitch_8
    const-string v0, "NUD_PERMANENT"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public nudConnected()Z
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    return v0
.end method

.method public nudValid()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/netlink/StructNdMsg;->nudConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    and-int/lit8 v0, v0, 0x1c

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, 0x0

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "stateStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudFlags(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "flagsStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructNdMsg{ family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ifindex{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flags{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

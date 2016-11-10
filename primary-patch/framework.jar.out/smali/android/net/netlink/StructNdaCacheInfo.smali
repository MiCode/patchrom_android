.class public Landroid/net/netlink/StructNdaCacheInfo;
.super Ljava/lang/Object;
.source "StructNdaCacheInfo.java"


# static fields
.field private static final CLOCK_TICKS_PER_SECOND:J

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public ndm_confirmed:I

.field public ndm_refcnt:I

.field public ndm_updated:I

.field public ndm_used:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-static {p0}, Landroid/net/netlink/StructNdaCacheInfo;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/netlink/StructNdaCacheInfo;

    invoke-direct {v0}, Landroid/net/netlink/StructNdaCacheInfo;-><init>()V

    .local v0, "struct":Landroid/net/netlink/StructNdaCacheInfo;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    goto :goto_0
.end method

.method private static ticksToMilliSeconds(I)J
    .locals 6
    .param p0, "intClockTicks"    # I

    .prologue
    int-to-long v2, p0

    const-wide/16 v4, -0x1

    and-long v0, v2, v4

    .local v0, "longClockTicks":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v4, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    div-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public lastConfirmed()J
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastUpdated()J
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastUsed()J
    .locals 2

    .prologue
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NdaCacheInfo{ ndm_used{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUsed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ndm_confirmed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastConfirmed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ndm_updated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUpdated()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ndm_refcnt{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

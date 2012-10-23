.class public Landroid/net/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    move-object v0, p0

    move v4, v3

    move-wide v7, v5

    move-wide v9, v5

    move-wide v11, v5

    move-wide v13, v5

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 15
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 0
    .parameter "iface"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    iput-wide p5, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide p7, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide p9, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide p11, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide p13, p0, Landroid/net/NetworkStats$Entry;->operations:J

    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .parameter "another"

    .prologue
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WanMetrics"
.end annotation


# static fields
.field public static final STATUS_DOWN:I = 0x2

.field public static final STATUS_RESERVED:I = 0x0

.field public static final STATUS_TEST:I = 0x3

.field public static final STATUS_UP:I = 0x1


# instance fields
.field public downlinkLoad:I

.field public downlinkSpeed:J

.field public lmd:I

.field public uplinkLoad:I

.field public uplinkSpeed:J

.field public wanInfo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtCapacity()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinkStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSymmetricLink()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

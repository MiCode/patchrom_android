.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public sensorPowerMah:D

.field public totalPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 1
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public computeMobilemspp()V
    .locals 6

    .prologue
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long v0, v2, v4

    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    goto :goto_0
.end method

.method public sumPower()D
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    return-wide v0
.end method

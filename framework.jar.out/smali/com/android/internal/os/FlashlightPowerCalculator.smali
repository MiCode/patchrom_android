.class public Lcom/android/internal/os/FlashlightPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "FlashlightPowerCalculator.java"


# instance fields
.field private final mFlashlightPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "camera.flashlight"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 11
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v2, :cond_0

    move/from16 v0, p7

    invoke-virtual {v2, p3, p4, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .local v4, "totalTime":J
    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v6, v4

    iget-wide v8, p0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    mul-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v8

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .end local v4    # "totalTime":J
    :goto_0
    return-void

    :cond_0
    const-wide/16 v6, 0x0

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    const-wide/16 v6, 0x0

    iput-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    goto :goto_0
.end method

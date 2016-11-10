.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const-string v0, "wifi.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    const-string v0, "wifi.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    const-string v0, "wifi.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 14
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const/4 v8, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v2

    .local v2, "idleTime":J
    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v6

    .local v6, "txTime":J
    const/4 v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity(II)J

    move-result-wide v4

    .local v4, "rxTime":J
    add-long v8, v2, v4

    add-long/2addr v8, v6

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v8, v2

    iget-wide v10, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v8, v10

    long-to-double v10, v6

    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    long-to-double v10, v4

    iget-wide v12, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    iget-wide v10, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v8, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    const/4 v8, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    const/4 v8, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 16
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const/4 v10, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v2

    .local v2, "idleTimeMs":J
    const/4 v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v6

    .local v6, "rxTimeMs":J
    const/4 v10, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v8

    .local v8, "txTimeMs":J
    add-long v10, v2, v6

    add-long/2addr v10, v8

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    const/4 v10, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v10, v1}, Landroid/os/BatteryStats;->getWifiControllerActivity(II)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double v4, v10, v12

    .local v4, "powerDrainMah":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-nez v10, :cond_0

    long-to-double v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr v10, v12

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    long-to-double v12, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double v4, v10, v12

    :cond_0
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    sub-double v12, v4, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    return-void
.end method

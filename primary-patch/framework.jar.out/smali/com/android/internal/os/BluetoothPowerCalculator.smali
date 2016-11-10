.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const/4 v12, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v2

    .local v2, "idleTimeMs":J
    const/4 v12, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v10

    .local v10, "txTimeMs":J
    const/4 v12, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v6

    .local v6, "rxTimeMs":J
    add-long v12, v2, v10

    add-long v8, v12, v6

    .local v8, "totalTimeMs":J
    const/4 v12, 0x3

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v12, v1}, Landroid/os/BatteryStats;->getBluetoothControllerActivity(II)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double v4, v12, v14

    .local v4, "powerMah":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-nez v12, :cond_0

    long-to-double v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v12, v14

    long-to-double v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    long-to-double v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double v4, v12, v14

    :cond_0
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    return-void
.end method

.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WakelockPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerWakelock:D

.field private mTotalAppWakelockTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    const-string v0, "cpu.awake"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 17
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "wakeLockTimeUs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    .local v9, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .local v10, "wakelockStatsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Wakelock;

    .local v8, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_0

    move-wide/from16 v0, p3

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long/2addr v6, v12

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_1
    const-wide/16 v12, 0x3e8

    div-long v12, v6, v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr v12, v14

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 15
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .local v6, "wakeTimeMillis":J
    iget-wide v8, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    long-to-double v8, v6

    iget-wide v10, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr v8, v10

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double v4, v8, v10

    .local v4, "power":D
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v8, v6

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v8, v4

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .end local v4    # "power":D
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    return-void
.end method

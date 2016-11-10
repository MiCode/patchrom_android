.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mPowerCpuNormal:[D

.field private final mSpeedStepTimes:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v1

    .local v1, "speedSteps":I
    new-array v2, v1, [D

    iput-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    const-string v3, "cpu.active"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 28
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "speedSteps":I
    const-wide/16 v22, 0x0

    .local v22, "totalTimeAtSpeeds":J
    const/16 v20, 0x0

    .local v20, "step":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(II)J

    move-result-wide v24

    aput-wide v24, v21, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, v20

    add-long v22, v22, v24

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v24, 0x1

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v24

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v26

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    const-wide/16 v6, 0x0

    .local v6, "cpuPowerMaMs":D
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v18, v24, v26

    .local v18, "ratio":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mPowerCpuNormal:[D

    move-object/from16 v21, v0

    aget-wide v26, v21, v20

    mul-double v8, v24, v26

    .local v8, "cpuSpeedStepPower":D
    add-double/2addr v6, v8

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .end local v8    # "cpuSpeedStepPower":D
    .end local v18    # "ratio":D
    :cond_1
    const-wide/16 v10, 0x0

    .local v10, "highestDrain":D
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v14

    .local v14, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .local v15, "processStatsCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v15, :cond_5

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Uid$Proc;

    .local v16, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "processName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v24

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    add-long v4, v24, v26

    .local v4, "costValue":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v24, "*"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_2
    long-to-double v10, v4

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    long-to-double v0, v4

    move-wide/from16 v24, v0

    cmpg-double v21, v10, v24

    if-gez v21, :cond_3

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    long-to-double v10, v4

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_3

    .end local v4    # "costValue":J
    .end local v13    # "processName":Ljava/lang/String;
    .end local v16    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v26, v0

    cmp-long v21, v24, v26

    if-lez v21, :cond_6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_6
    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v24, v6, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    return-void
.end method

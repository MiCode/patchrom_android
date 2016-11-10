.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SensorPowerCalculator.java"


# instance fields
.field private final mGpsPowerOn:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    const-string v0, "gps.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 21
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v10

    .local v10, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "NSE":I
    const/4 v6, 0x0

    .local v6, "ise":I
    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Sensor;

    .local v8, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .local v9, "sensorHandle":I
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .local v14, "timer":Landroid/os/BatteryStats$Timer;
    move-wide/from16 v0, p3

    move/from16 v2, p7

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v12, v16, v18

    .local v12, "sensorTime":J
    packed-switch v9, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "sensorsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .local v7, "s":Landroid/hardware/Sensor;
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v15

    if-ne v15, v9, :cond_1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-wide/from16 v16, v0

    long-to-float v15, v12

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getPower()F

    move-result v18

    mul-float v15, v15, v18

    const v18, 0x4a5bba00    # 3600000.0f

    div-float v15, v15, v18

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .end local v5    # "i":I
    .end local v7    # "s":Landroid/hardware/Sensor;
    .end local v11    # "sensorsCount":I
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPowerOn:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    goto :goto_2

    .restart local v5    # "i":I
    .restart local v7    # "s":Landroid/hardware/Sensor;
    .restart local v11    # "sensorsCount":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    .end local v7    # "s":Landroid/hardware/Sensor;
    .end local v8    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v9    # "sensorHandle":I
    .end local v11    # "sensorsCount":I
    .end local v12    # "sensorTime":J
    .end local v14    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

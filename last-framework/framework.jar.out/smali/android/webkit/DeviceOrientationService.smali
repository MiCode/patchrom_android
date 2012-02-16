.class final Landroid/webkit/DeviceOrientationService;
.super Ljava/lang/Object;
.source "DeviceOrientationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELTA_DEGRESS:D = 1.0


# instance fields
.field private mAlpha:Ljava/lang/Double;

.field private mBeta:Ljava/lang/Double;

.field private mContext:Landroid/content/Context;

.field private mGamma:Ljava/lang/Double;

.field private mGravityVector:[F

.field private mHandler:Landroid/os/Handler;

.field private mHaveSentErrorEvent:Z

.field private mIsRunning:Z

.field private mMagneticFieldVector:[F

.field private mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Landroid/webkit/DeviceOrientationService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V
    .locals 1
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 50
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    .line 52
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DeviceOrientationService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/DeviceOrientationService;)Landroid/webkit/DeviceMotionAndOrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method private getOrientationUsingGetRotationMatrix()V
    .locals 15

    .prologue
    const-wide v13, 0x4076800000000000L

    .line 106
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 113
    .local v7, deviceRotationMatrix:[F
    const/4 v0, 0x0

    iget-object v9, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v10, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    invoke-static {v7, v0, v9, v10}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 125
    .local v8, rotationAngles:[F
    invoke-static {v7, v8}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 126
    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    const-wide v11, 0x4056800000000000L

    sub-double v1, v9, v11

    .line 127
    .local v1, alpha:D
    :goto_1
    const-wide/16 v9, 0x0

    cmpg-double v0, v1, v9

    if-gez v0, :cond_2

    add-double/2addr v1, v13

    goto :goto_1

    .line 128
    :cond_2
    const/4 v0, 0x1

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .line 129
    .local v3, beta:D
    :goto_2
    const-wide v9, -0x3f99800000000000L

    cmpg-double v0, v3, v9

    if-gez v0, :cond_3

    add-double/2addr v3, v13

    goto :goto_2

    .line 130
    :cond_3
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 131
    .local v5, gamma:D
    :goto_3
    const-wide v9, -0x3fa9800000000000L

    cmpg-double v0, v5, v9

    if-gez v0, :cond_4

    add-double/2addr v5, v13

    goto :goto_3

    :cond_4
    move-object v0, p0

    .line 133
    invoke-direct/range {v0 .. v6}, Landroid/webkit/DeviceOrientationService;->maybeSendChange(DDD)V

    goto :goto_0
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
    .line 137
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 141
    :cond_1
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private maybeSendChange(DDD)V
    .locals 4
    .parameter "alpha"
    .parameter "beta"
    .parameter "gamma"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 169
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, p5, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 174
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    .line 175
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    .line 176
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    .line 177
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v1, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    iget-object v2, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    iget-object v3, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/DeviceMotionAndOrientationManager;->onOrientationChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    .line 181
    :cond_2
    return-void
.end method

.method private registerForAccelerometerSensor()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 150
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v4, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForMagneticFieldSensor()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 160
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v4, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForSensors()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    .line 99
    :cond_0
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForAccelerometerSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForMagneticFieldSensor()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :cond_1
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    .line 101
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->sendErrorEvent()V

    .line 103
    :cond_2
    return-void
.end method

.method private sendErrorEvent()V
    .locals 2

    .prologue
    .line 78
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    if-eqz v0, :cond_1

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    .line 83
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/DeviceOrientationService$1;

    invoke-direct {v1, p0}, Landroid/webkit/DeviceOrientationService$1;-><init>(Landroid/webkit/DeviceOrientationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterFromSensors()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 221
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-eq v0, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_0
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-nez v0, :cond_3

    .line 218
    :cond_2
    :goto_0
    return-void

    .line 196
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    if-nez v0, :cond_4

    .line 199
    new-array v0, v5, [F

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    .line 201
    :cond_4
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 202
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 203
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 204
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getOrientationUsingGetRotationMatrix()V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    if-nez v0, :cond_5

    .line 208
    new-array v0, v5, [F

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    .line 210
    :cond_5
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 211
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 212
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 213
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getOrientationUsingGetRotationMatrix()V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForSensors()V

    .line 75
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    .line 57
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForSensors()V

    .line 58
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    .line 62
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    .line 63
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    .line 69
    :cond_0
    return-void
.end method

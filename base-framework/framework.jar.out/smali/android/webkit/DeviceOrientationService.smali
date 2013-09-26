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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p2, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DeviceOrientationService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/DeviceOrientationService;)Landroid/webkit/DeviceMotionAndOrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    return-object v0
.end method

.method private getOrientationUsingGetRotationMatrix()V
    .locals 13

    .prologue
    const-wide v11, 0x4076800000000000L

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    new-array v7, v0, [F

    .local v7, deviceRotationMatrix:[F
    const/4 v0, 0x0

    iget-object v9, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v10, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    invoke-static {v7, v0, v9, v10}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v8, v0, [F

    .local v8, rotationAngles:[F
    invoke-static {v7, v8}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    .local v1, alpha:D
    :goto_1
    const-wide/16 v9, 0x0

    cmpg-double v0, v1, v9

    if-gez v0, :cond_2

    add-double/2addr v1, v11

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    .local v3, beta:D
    :goto_2
    const-wide v9, -0x3f99800000000000L

    cmpg-double v0, v3, v9

    if-gez v0, :cond_3

    add-double/2addr v3, v11

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .local v5, gamma:D
    :goto_3
    const-wide v9, -0x3fa9800000000000L

    cmpg-double v0, v5, v9

    if-gez v0, :cond_4

    add-double/2addr v5, v11

    goto :goto_3

    :cond_4
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/DeviceOrientationService;->maybeSendChange(DDD)V

    goto :goto_0
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 2

    .prologue
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

    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mSensorManager:Landroid/hardware/SensorManager;

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

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v1, p0, Landroid/webkit/DeviceOrientationService;->mAlpha:Ljava/lang/Double;

    iget-object v2, p0, Landroid/webkit/DeviceOrientationService;->mBeta:Ljava/lang/Double;

    iget-object v3, p0, Landroid/webkit/DeviceOrientationService;->mGamma:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/DeviceMotionAndOrientationManager;->onOrientationChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    :cond_2
    return-void
.end method

.method private registerForAccelerometerSensor()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

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

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

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
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    :cond_0
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForAccelerometerSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForMagneticFieldSensor()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->sendErrorEvent()V

    :cond_2
    return-void
.end method

.method private sendErrorEvent()V
    .locals 2

    .prologue
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

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mHaveSentErrorEvent:Z

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/DeviceOrientationService$1;

    invoke-direct {v1, p0}, Landroid/webkit/DeviceOrientationService$1;-><init>(Landroid/webkit/DeviceOrientationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterFromSensors()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
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

    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-eq v0, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

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

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroid/webkit/DeviceOrientationService;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    if-nez v0, :cond_4

    new-array v0, v5, [F

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    :cond_4
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getOrientationUsingGetRotationMatrix()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    if-nez v0, :cond_5

    new-array v0, v5, [F

    iput-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    :cond_5
    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/webkit/DeviceOrientationService;->mMagneticFieldVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->getOrientationUsingGetRotationMatrix()V

    goto :goto_0

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
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForSensors()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->registerForSensors()V

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/DeviceOrientationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/DeviceOrientationService;->unregisterFromSensors()V

    :cond_0
    return-void
.end method

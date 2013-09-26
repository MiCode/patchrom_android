.class Landroid/hardware/SystemSensorManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field public mFirstEvent:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field public mSensorAccuracies:Landroid/util/SparseIntArray;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SystemSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    return-void

    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)V
    .locals 3
    .parameter "sensor"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 2
    .parameter "sensor"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 7
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    invoke-virtual {v3}, Landroid/hardware/SensorManager$SensorEventPool;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .local v2, v:[F
    aget v3, p2, v5

    aput v3, v2, v5

    aget v3, p2, v6

    aput v3, v2, v6

    aget v3, p2, v4

    aput v3, v2, v4

    aget-wide v3, p3, v5

    iput-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

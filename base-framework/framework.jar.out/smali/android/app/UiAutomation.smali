.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnecting:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2
    .parameter "looper"
    .parameter "connection"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-void
.end method

.method static synthetic access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/UiAutomation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic access$202(Landroid/app/UiAutomation;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/app/UiAutomation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 11

    .prologue
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    iget-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v7, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v8, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v7, v8}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v5

    .local v5, startTimeMillis:J
    :goto_1
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    monitor-exit v8

    goto :goto_0

    .end local v5           #startTimeMillis:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    :catch_0
    move-exception v2

    .local v2, re:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error while connecting UiAutomation"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v2           #re:Landroid/os/RemoteException;
    .restart local v5       #startTimeMillis:J
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v5

    .local v0, elapsedTimeMillis:J
    const-wide/16 v9, 0x1388

    sub-long v3, v9, v0

    .local v3, remainingTimeMillis:J
    const-wide/16 v9, 0x0

    cmp-long v7, v3, v9

    if-gtz v7, :cond_2

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "Error while connecting UiAutomation"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v0           #elapsedTimeMillis:J
    .end local v3           #remainingTimeMillis:J
    :catchall_2
    move-exception v7

    const/4 v9, 0x0

    :try_start_7
    iput-boolean v9, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v0       #elapsedTimeMillis:J
    .restart local v3       #remainingTimeMillis:J
    :cond_2
    :try_start_8
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public disconnect()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot call disconnect() while connecting!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error while disconnecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 15
    .parameter "command"
    .parameter "filter"
    .parameter "timeoutMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .local v5, executionStartTimeMillis:J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .local v9, startTimeMillis:J
    :cond_0
    :goto_0
    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .local v4, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v13

    cmp-long v11, v13, v5

    if-ltz v11, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v4

    .end local v4           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v5           #executionStartTimeMillis:J
    .end local v9           #startTimeMillis:J
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .restart local v4       #event:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v5       #executionStartTimeMillis:J
    .restart local v9       #startTimeMillis:J
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .end local v4           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v9           #startTimeMillis:J
    :catchall_1
    move-exception v11

    const/4 v13, 0x0

    :try_start_5
    iput-boolean v13, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    iget-object v13, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    iget-object v13, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    throw v11

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11

    .restart local v9       #startTimeMillis:J
    :cond_2
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v2, v13, v9

    .local v2, elapsedTimeMillis:J
    sub-long v7, p3, v2

    .local v7, remainingTimeMillis:J
    const-wide/16 v13, 0x0

    cmp-long v11, v7, v13

    if-gtz v11, :cond_3

    new-instance v11, Ljava/util/concurrent/TimeoutException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected event not received within: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :try_start_7
    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public getConnectionId()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .local v0, connectionId:I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .end local v0           #connectionId:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    .prologue
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .local v1, re:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #re:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3
    .parameter "event"
    .parameter "sync"

    .prologue
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final performGlobalAction(I)Z
    .locals 5
    .parameter "action"

    .prologue
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :goto_0
    return v2

    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .local v1, re:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #re:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRotation(I)Z
    .locals 3
    .parameter "rotation"

    .prologue
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_0
    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, re:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .local v1, re:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .local v1, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .local v3, displaySize:Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    .local v4, displayWidth:I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .local v2, displayHeight:I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .local v6, rotation:I
    packed-switch v6, :pswitch_data_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid rotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v1           #display:Landroid/view/Display;
    .end local v2           #displayHeight:I
    .end local v3           #displaySize:Landroid/graphics/Point;
    .end local v4           #displayWidth:I
    .end local v6           #rotation:I
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #displayHeight:I
    .restart local v3       #displaySize:Landroid/graphics/Point;
    .restart local v4       #displayWidth:I
    .restart local v6       #rotation:I
    :pswitch_0
    int-to-float v9, v4

    .local v9, screenshotWidth:F
    int-to-float v8, v2

    .local v8, screenshotHeight:F
    :goto_0
    const/4 v7, 0x0

    .local v7, screenShot:Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    float-to-int v12, v9

    float-to-int v13, v8

    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v11, 0x0

    :goto_1
    return-object v11

    .end local v7           #screenShot:Landroid/graphics/Bitmap;
    .end local v8           #screenshotHeight:F
    .end local v9           #screenshotWidth:F
    :pswitch_1
    int-to-float v9, v2

    .restart local v9       #screenshotWidth:F
    int-to-float v8, v4

    .restart local v8       #screenshotHeight:F
    goto :goto_0

    .end local v8           #screenshotHeight:F
    .end local v9           #screenshotWidth:F
    :pswitch_2
    int-to-float v9, v4

    .restart local v9       #screenshotWidth:F
    int-to-float v8, v2

    .restart local v8       #screenshotHeight:F
    goto :goto_0

    .end local v8           #screenshotHeight:F
    .end local v9           #screenshotWidth:F
    :pswitch_3
    int-to-float v9, v2

    .restart local v9       #screenshotWidth:F
    int-to-float v8, v4

    .restart local v8       #screenshotHeight:F
    goto :goto_0

    .restart local v7       #screenShot:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .local v5, re:Landroid/os/RemoteException;
    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Error while taking screnshot!"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v11, 0x0

    goto :goto_1

    .end local v5           #re:Landroid/os/RemoteException;
    :cond_0
    if-eqz v6, :cond_1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, unrotatedScreenShot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v11, v9

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    neg-float v12, v8

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v7, v10

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v10           #unrotatedScreenShot:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object v11, v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .locals 21
    .parameter "idleTimeoutMillis"
    .parameter "globalTimeoutMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .local v13, startTimeMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-gtz v15, :cond_0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, currentTimeMillis:J
    sub-long v5, v3, v13

    .local v5, elapsedGlobalTimeMillis:J
    sub-long v9, p3, v5

    .local v9, remainingGlobalTimeMillis:J
    const-wide/16 v17, 0x0

    cmp-long v15, v9, v17

    if-gtz v15, :cond_1

    new-instance v15, Ljava/util/concurrent/TimeoutException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No idle state with idle timeout: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " within global timeout: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v3           #currentTimeMillis:J
    .end local v5           #elapsedGlobalTimeMillis:J
    .end local v9           #remainingGlobalTimeMillis:J
    .end local v13           #startTimeMillis:J
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .restart local v3       #currentTimeMillis:J
    .restart local v5       #elapsedGlobalTimeMillis:J
    .restart local v9       #remainingGlobalTimeMillis:J
    .restart local v13       #startTimeMillis:J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v17, v0

    sub-long v7, v3, v17

    .local v7, elapsedIdleTimeMillis:J
    sub-long v11, p1, v7

    .local v11, remainingIdleTimeMillis:J
    const-wide/16 v17, 0x0

    cmp-long v15, v11, v17

    if-gtz v15, :cond_2

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v15, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v15

    goto :goto_0
.end method

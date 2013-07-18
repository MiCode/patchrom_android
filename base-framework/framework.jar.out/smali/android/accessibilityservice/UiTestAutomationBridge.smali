.class public Landroid/accessibilityservice/UiTestAutomationBridge;
.super Ljava/lang/Object;
.source "UiTestAutomationBridge.java"


# static fields
.field public static final ACTIVE_WINDOW_ID:I = -0x1

.field private static final FIND_ACCESSIBILITY_NODE_INFO_PREFETCH_FLAGS:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final ROOT_NODE_ID:J = 0x0L

.field private static final TIMEOUT_REGISTER_SERVICE:I = 0x1388

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private volatile mConnectionId:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

.field private mListener:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

.field private final mLock:Ljava/lang/Object;

.field private volatile mUnprocessedEventAvailable:Z

.field private volatile mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/accessibilityservice/UiTestAutomationBridge;->LOG_TAG:Ljava/lang/String;

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    sput-wide v0, Landroid/accessibilityservice/UiTestAutomationBridge;->ROOT_NODE_ID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    return-void
.end method

.method static synthetic access$000(Landroid/accessibilityservice/UiTestAutomationBridge;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/accessibilityservice/UiTestAutomationBridge;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    return-object p1
.end method

.method static synthetic access$200(Landroid/accessibilityservice/UiTestAutomationBridge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic access$300(Landroid/accessibilityservice/UiTestAutomationBridge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    return v0
.end method

.method static synthetic access$302(Landroid/accessibilityservice/UiTestAutomationBridge;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    return p1
.end method

.method static synthetic access$402(Landroid/accessibilityservice/UiTestAutomationBridge;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    return p1
.end method

.method private ensureValidConnection(I)V
    .locals 2
    .parameter "connectionId"

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomationService not connected. Did you call #register()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 14

    .prologue
    invoke-virtual {p0}, Landroid/accessibilityservice/UiTestAutomationBridge;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Already connected."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "UiTestAutomationBridge"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/HandlerThread;->setDaemon(Z)V

    iget-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    iget-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .local v3, looper:Landroid/os/Looper;
    new-instance v10, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    const/4 v11, 0x0

    new-instance v12, Landroid/accessibilityservice/UiTestAutomationBridge$1;

    invoke-direct {v12, p0}, Landroid/accessibilityservice/UiTestAutomationBridge$1;-><init>(Landroid/accessibilityservice/UiTestAutomationBridge;)V

    invoke-direct {v10, v11, v3, v12}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    iput-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mListener:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    const-string v10, "accessibility"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v4

    .local v4, manager:Landroid/view/accessibility/IAccessibilityManager;
    new-instance v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .local v2, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v10, -0x1

    iput v10, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v10, 0x10

    iput v10, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iget v10, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    :try_start_0
    iget-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mListener:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-interface {v4, v10, v2}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v11, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, startTimeMillis:J
    :goto_0
    invoke-virtual {p0}, Landroid/accessibilityservice/UiTestAutomationBridge;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .end local v8           #startTimeMillis:J
    :catch_0
    move-exception v5

    .local v5, re:Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Cound not register UiAutomationService."

    invoke-direct {v10, v11, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .end local v5           #re:Landroid/os/RemoteException;
    .restart local v8       #startTimeMillis:J
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v0, v12, v8

    .local v0, elapsedTimeMillis:J
    const-wide/16 v12, 0x1388

    sub-long v6, v12, v0

    .local v6, remainingTimeMillis:J
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-gtz v10, :cond_2

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v12, "Cound not register UiAutomationService."

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v0           #elapsedTimeMillis:J
    .end local v6           #remainingTimeMillis:J
    .end local v8           #startTimeMillis:J
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v0       #elapsedTimeMillis:J
    .restart local v6       #remainingTimeMillis:J
    .restart local v8       #startTimeMillis:J
    :cond_2
    :try_start_3
    iget-object v10, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v10, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/accessibilityservice/UiTestAutomationBridge;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already disconnected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .local v0, manager:Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mListener:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, re:Landroid/os/RemoteException;
    sget-object v2, Landroid/accessibilityservice/UiTestAutomationBridge;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while unregistering UiTestAutomationService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Lcom/android/internal/util/Predicate;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 10
    .parameter "command"
    .parameter
    .parameter "timeoutMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/accessibility/AccessibilityEvent;>;"
    iget-object v7, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, startTimeMillis:J
    :goto_0
    iget-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p2, v6}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    monitor-exit v7

    return-object v6

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .local v0, elapsedTimeMillis:J
    sub-long v2, p3, v0

    .local v2, remainingTimeMillis:J
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gtz v6, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mWaitingForEventDelivery:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mUnprocessedEventAvailable:Z

    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expacted event not received within: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #elapsedTimeMillis:J
    .end local v2           #remainingTimeMillis:J
    .end local v4           #startTimeMillis:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #elapsedTimeMillis:J
    .restart local v2       #remainingTimeMillis:J
    .restart local v4       #startTimeMillis:J
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"

    .prologue
    iget v6, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    .local v6, connectionId:I
    invoke-direct {p0, v6}, Landroid/accessibilityservice/UiTestAutomationBridge;->ensureValidConnection(I)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    const/4 v5, 0x7

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityIdInActiveWindow(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter "accessibilityNodeId"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/accessibilityservice/UiTestAutomationBridge;->findAccessibilityNodeInfoByAccessibilityId(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfoByViewId(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "viewId"

    .prologue
    iget v1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    .local v1, connectionId:I
    invoke-direct {p0, v1}, Landroid/accessibilityservice/UiTestAutomationBridge;->ensureValidConnection(I)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByViewId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfoByViewIdInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .parameter "viewId"

    .prologue
    const/4 v0, -0x1

    sget-wide v1, Landroid/accessibilityservice/UiTestAutomationBridge;->ROOT_NODE_ID:J

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->findAccessibilityNodeInfoByViewId(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget v1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    .local v1, connectionId:I
    invoke-direct {p0, v1}, Landroid/accessibilityservice/UiTestAutomationBridge;->ensureValidConnection(I)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByTextInActiveWindow(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    sget-wide v1, Landroid/accessibilityservice/UiTestAutomationBridge;->ROOT_NODE_ID:J

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/accessibilityservice/UiTestAutomationBridge;->findAccessibilityNodeInfosByText(IJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    return-object v0
.end method

.method public getRootAccessibilityNodeInfoInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .prologue
    iget v1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    .local v1, connectionId:I
    invoke-direct {p0, v1}, Landroid/accessibilityservice/UiTestAutomationBridge;->ensureValidConnection(I)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v2, -0x1

    sget-wide v3, Landroid/accessibilityservice/UiTestAutomationBridge;->ROOT_NODE_ID:J

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;)Z
    .locals 7
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    iget v1, p0, Landroid/accessibilityservice/UiTestAutomationBridge;->mConnectionId:I

    .local v1, connectionId:I
    invoke-direct {p0, v1}, Landroid/accessibilityservice/UiTestAutomationBridge;->ensureValidConnection(I)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionInActiveWindow(JILandroid/os/Bundle;)Z
    .locals 6
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/accessibilityservice/UiTestAutomationBridge;->performAccessibilityAction(IJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public waitForIdle(JJ)V
    .locals 18
    .parameter "idleTimeout"
    .parameter "globalTimeout"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .local v12, startTimeMillis:J
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v6

    .local v6, lastEventTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, currentTimeMillis:J
    sub-long v10, v2, v6

    .local v10, sinceLastEventTimeMillis:J
    cmp-long v14, v10, p1

    if-lez v14, :cond_1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    .end local v2           #currentTimeMillis:J
    .end local v6           #lastEventTime:J
    .end local v10           #sinceLastEventTimeMillis:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    goto :goto_0

    .restart local v2       #currentTimeMillis:J
    .restart local v6       #lastEventTime:J
    .restart local v10       #sinceLastEventTimeMillis:J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLastEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v6

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v4, v16, v12

    .local v4, elapsedTimeMillis:J
    sub-long v8, p3, v4

    .local v8, remainingTimeMillis:J
    const-wide/16 v16, 0x0

    cmp-long v14, v8, v16

    if-gtz v14, :cond_3

    monitor-exit v15

    goto :goto_2

    .end local v2           #currentTimeMillis:J
    .end local v4           #elapsedTimeMillis:J
    .end local v8           #remainingTimeMillis:J
    .end local v10           #sinceLastEventTimeMillis:J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .restart local v2       #currentTimeMillis:J
    .restart local v4       #elapsedTimeMillis:J
    .restart local v8       #remainingTimeMillis:J
    .restart local v10       #sinceLastEventTimeMillis:J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/accessibilityservice/UiTestAutomationBridge;->mLock:Ljava/lang/Object;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v14

    goto :goto_1
.end method

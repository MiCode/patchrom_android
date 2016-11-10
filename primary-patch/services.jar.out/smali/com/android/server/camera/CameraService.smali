.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final MSG_SWITCH_USER:I = 0x1

.field public static final NO_EVENT:I = 0x0

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field public static final USER_SWITCHED:I = 0x1


# instance fields
.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/camera/CameraService$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/camera/CameraService$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    iput-object p1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "CameraService_proxy"

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    iget v0, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    return-void
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 5
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .local v1, "i":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "i":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v0
.end method

.method private notifyMediaserver(ILjava/util/Set;)Z
    .locals 7
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    const-string v4, "media.camera"

    invoke-virtual {p0, v4}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const-string v4, "CameraService_proxy"

    const-string v5, "Could not notify mediaserver, camera service not available."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    .local v1, "cameraServiceRaw":Landroid/hardware/ICameraService;
    :try_start_0
    invoke-static {p2}, Lcom/android/server/camera/CameraService;->toArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifySwitchWithRetries(I)V
    .locals 6
    .param p1, "retries"    # I

    .prologue
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserver(ILjava/util/Set;)Z

    :cond_1
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .local v4, "len":I
    new-array v5, v4, [I

    .local v5, "ret":[I
    const/4 v2, 0x0

    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraService error, invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UserManagerService must start before CameraService!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field public static final TORCH_STATUS_AVAILABLE_OFF:I = 0x1

.field public static final TORCH_STATUS_AVAILABLE_ON:I = 0x2

.field public static final TORCH_STATUS_NOT_AVAILABLE:I

.field private static final gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# instance fields
.field private final CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final DEBUG:Z

.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraService:Landroid/hardware/ICameraService;

.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchClientBinder:Landroid/os/Binder;

.field private final mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    return-void
.end method

.method private connectCameraServiceLocked()V
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "CameraManagerGlobal"

    const-string v5, "Connecting to camera service"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "media.camera"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .local v2, "cameraServiceRaw":Landroid/hardware/ICameraService;
    invoke-static {v2}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ICameraService;

    .local v0, "cameraService":Landroid/hardware/ICameraService;
    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;->throwOnError(I)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to register a camera service listener"

    invoke-virtual {v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "cameraServiceRaw":Landroid/hardware/ICameraService;
    :catch_2
    move-exception v3

    .local v3, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    const-string v4, "Failed to set up vendor tags"

    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private handleRecoverableSetupErrors(Landroid/hardware/camera2/utils/CameraRuntimeException;Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Landroid/hardware/camera2/utils/CameraRuntimeException;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v1

    .local v1, "problem":I
    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_0
    invoke-static {v1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "errorMsg":Ljava/lang/String;
    const-string v2, "CameraManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CameraManagerGlobal"

    const-string v6, "Ignoring invalid device %s status 0x%x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_3
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private onTorchStatusChangedLocked(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CameraManagerGlobal"

    const-string v6, "Ignoring invalid device %s torch status 0x%x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_0

    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .local v0, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    packed-switch p4, :pswitch_data_0

    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleCameraServiceReconnectionLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0
.end method

.method private updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private validTorchStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cameraId":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    monitor-exit v3

    goto :goto_0

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCameraService()Landroid/hardware/ICameraService;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_0

    const-string v0, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStatusChanged(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .local v0, "oldHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "oldHandler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez p1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "cameraId was null"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v5, 0x2

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v3, v5, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v3}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v2

    .local v2, "problem":I
    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "the camera device doesn\'t have a flash unit."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v2    # "problem":I
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v5, 0x2

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v3, v5, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

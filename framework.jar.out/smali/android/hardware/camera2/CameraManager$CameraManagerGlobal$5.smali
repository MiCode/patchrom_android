.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    # getter for: Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->access$000(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    # invokes: Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->access$100(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

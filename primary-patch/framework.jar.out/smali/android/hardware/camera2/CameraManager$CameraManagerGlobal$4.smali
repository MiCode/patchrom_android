.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    return-void
.end method

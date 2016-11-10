.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;
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

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$id:Ljava/lang/String;

    iput p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$id:Ljava/lang/String;

    iget v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$status:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/android/server/camera/CameraService$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pingForUserUpdate()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/camera/CameraService$2;->this$0:Lcom/android/server/camera/CameraService;

    const/16 v1, 0x1e

    # invokes: Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V
    invoke-static {v0, v1}, Lcom/android/server/camera/CameraService;->access$400(Lcom/android/server/camera/CameraService;I)V

    return-void
.end method

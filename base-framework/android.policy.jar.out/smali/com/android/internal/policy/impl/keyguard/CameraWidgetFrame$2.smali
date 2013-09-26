.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, worker:Landroid/os/Handler;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$302(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;J)J

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching camera at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$700(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$600(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0           #worker:Landroid/os/Handler;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_1
.end method

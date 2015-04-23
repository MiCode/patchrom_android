.class Lcom/android/server/camera/CameraService$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->access$000(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->access$100(Lcom/android/server/camera/CameraService;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_0
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    iget-object v3, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mLastUser:I
    invoke-static {v3}, Lcom/android/server/camera/CameraService;->access$200(Lcom/android/server/camera/CameraService;)I

    move-result v3

    # invokes: Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    invoke-static {v1, v3}, Lcom/android/server/camera/CameraService;->access$300(Lcom/android/server/camera/CameraService;I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_1
        -0x16fbb1bb -> :sswitch_3
        -0xc02da2e -> :sswitch_2
        0x3eac4465 -> :sswitch_4
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

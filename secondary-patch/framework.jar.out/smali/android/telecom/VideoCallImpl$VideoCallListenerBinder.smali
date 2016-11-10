.class final Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallListenerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method private constructor <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/VideoCallImpl;
    .param p2, "x1"    # Landroid/telecom/VideoCallImpl$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;)V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

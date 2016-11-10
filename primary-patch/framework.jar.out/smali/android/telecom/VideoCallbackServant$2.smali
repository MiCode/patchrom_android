.class Landroid/telecom/VideoCallbackServant$2;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

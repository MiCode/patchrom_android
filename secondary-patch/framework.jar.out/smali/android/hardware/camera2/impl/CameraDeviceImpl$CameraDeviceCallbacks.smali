.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# static fields
.field public static final ERROR_CAMERA_BUFFER:I = 0x5

.field public static final ERROR_CAMERA_DEVICE:I = 0x1

.field public static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field public static final ERROR_CAMERA_REQUEST:I = 0x3

.field public static final ERROR_CAMERA_RESULT:I = 0x4

.field public static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method private onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 17
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v7

    .local v7, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v11

    .local v11, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v8

    .local v8, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .local v10, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual {v10, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Lost output buffer reported for frame %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    const/4 v6, 0x1

    .local v6, "mayHaveBuffers":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v12

    invoke-interface {v12}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v5, 0x1

    .local v5, "reason":I
    :goto_2
    new-instance v3, Landroid/hardware/camera2/CaptureFailure;

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V

    .local v3, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v4, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .local v2, "failureDispatch":Ljava/lang/Runnable;
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v14

    invoke-virtual {v12, v8, v9, v13, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # invokes: Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V
    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    goto :goto_0

    .end local v2    # "failureDispatch":Ljava/lang/Runnable;
    .end local v3    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v5    # "reason":I
    .end local v6    # "mayHaveBuffers":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .restart local v6    # "mayHaveBuffers":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 12
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .prologue
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v8

    .local v8, "requestId":I
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .local v6, "frameNumber":J
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    if-nez v2, :cond_1

    monitor-exit v9

    goto :goto_0

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # invokes: Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v9

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error from camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v3, 0x1

    # setter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z
    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$702(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;I)V

    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDeviceIdle()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$900(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, 0x1

    # setter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z
    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$802(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I

    .prologue
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .local v0, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v4

    if-nez v1, :cond_0

    :goto_0
    return-void

    .end local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onPrepared invoked for unknown output Surface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 18
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v15

    .local v15, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v4

    .local v4, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v17

    :goto_0
    return-void

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # invokes: Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    .local v11, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I
    invoke-static {v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v10

    if-ge v3, v10, :cond_1

    const/4 v7, 0x1

    .local v7, "isPartialResult":Z
    :goto_1
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    .local v8, "isReprocess":Z
    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    monitor-exit v17

    goto :goto_0

    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v7    # "isPartialResult":Z
    .end local v8    # "isReprocess":Z
    .end local v11    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .restart local v11    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "isPartialResult":Z
    .restart local v8    # "isReprocess":Z
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # invokes: Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    monitor-exit v17

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    .local v16, "resultDispatch":Ljava/lang/Runnable;
    if-eqz v7, :cond_5

    new-instance v9, Landroid/hardware/camera2/CaptureResult;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v11, v1}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .local v9, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;

    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v11, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .restart local v16    # "resultDispatch":Ljava/lang/Runnable;
    move-object v6, v9

    .end local v9    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v6, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # invokes: Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    :cond_4
    monitor-exit v17

    goto/16 :goto_0

    .end local v6    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v13

    .local v13, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    new-instance v9, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    move-result v14

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V

    .local v9, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;

    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v11, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v16    # "resultDispatch":Ljava/lang/Runnable;
    move-object v6, v9

    .restart local v6    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    goto :goto_2
.end method

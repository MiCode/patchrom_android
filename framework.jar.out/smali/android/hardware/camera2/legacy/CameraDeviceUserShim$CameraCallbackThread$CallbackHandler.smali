.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide v14, 0xffffffffL

    :try_start_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown callback message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received remote exception during camera callback "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .local v3, "errorCode":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .local v6, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v10

    invoke-interface {v10, v3, v6}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .end local v3    # "errorCode":I
    .end local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v10

    invoke-interface {v10}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    int-to-long v10, v10

    and-long v8, v10, v14

    .local v8, "timestamp":J
    const/16 v10, 0x20

    shl-long v10, v8, v10

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    int-to-long v12, v12

    and-long/2addr v12, v14

    or-long v8, v10, v12

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .restart local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v10

    invoke-interface {v10, v6, v8, v9}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    goto :goto_0

    .end local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v8    # "timestamp":J
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .local v5, "resultArray":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v4, v5, v10

    check-cast v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .local v4, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v10, 0x1

    aget-object v6, v5, v10

    check-cast v6, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .restart local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v10

    invoke-interface {v10, v4, v6}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    goto :goto_0

    .end local v4    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v5    # "resultArray":[Ljava/lang/Object;
    .end local v6    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_4
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .local v7, "streamId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->mCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v10

    invoke-interface {v10, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

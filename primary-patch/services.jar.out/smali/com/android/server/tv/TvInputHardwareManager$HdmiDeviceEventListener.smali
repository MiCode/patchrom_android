.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;
.super Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiDeviceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method

.method private findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "id"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 8
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v0, 0x0

    .local v0, "messageType":I
    const/4 v2, 0x0

    .local v2, "obj":Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2500(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v6, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v6

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputHardwareManager;->access$2200(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "obj":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    move-object v2, p1

    .local v2, "obj":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_1

    .local v2, "obj":Ljava/lang/Object;
    :cond_1
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The list already contains "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .local v3, "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The list doesn\'t contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x5

    move-object v2, p1

    .local v2, "obj":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto/16 :goto_1

    .end local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .restart local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The list doesn\'t contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    move-object v2, p1

    .local v2, "obj":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto/16 :goto_1

    .end local v2    # "obj":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "originalDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$8802(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8900(Lcom/android/server/audio/AudioService;)V

    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

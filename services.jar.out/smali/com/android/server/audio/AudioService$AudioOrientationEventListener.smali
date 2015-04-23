.class Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$900(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDeviceRotation:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1000(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mDeviceRotation:I
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$1002(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$1100(Lcom/android/server/audio/AudioService;)V

    :cond_0
    return-void
.end method

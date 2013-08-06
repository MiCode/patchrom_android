.class Lcom/mediatek/audioprofile/AudioProfileService$3;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVibrateSettingChanged(II)V
    .locals 3
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVibrateSettingChanged: current vibrateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastVibrateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$700(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$700(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z
    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$802(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    const-string v0, "AudioProfileService"

    const-string v1, "onVibrateSettingChanged: current vibrate type is same as last one, delay set vibrate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$702(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    return-void
.end method

.class Landroid/media/Ringtone$PlayTimerTask;
.super Ljava/util/TimerTask;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v1, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mStreamType:I
    invoke-static {v2}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .local v0, cur_volume:I
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayTimerTask cur_volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    iget v1, v1, Landroid/media/Ringtone;->max_volume:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone$PlayTimerTask;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mStreamType:I
    invoke-static {v2}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

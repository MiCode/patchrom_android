.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "streamType":I
    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "streamValue":I
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)Z

    move-result v7

    if-eqz v7, :cond_2

    # invokes: Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$1100(I)Z

    move-result v2

    .local v2, "streamMatch":Z
    :goto_0
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    if-eq v4, v8, :cond_1

    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    iget-object v8, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v8}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v4, :cond_4

    :cond_0
    move v1, v5

    .local v1, "muted":Z
    :goto_1
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1400(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)I

    move-result v6

    invoke-virtual {v5, v4, v6, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .end local v1    # "muted":Z
    .end local v2    # "streamMatch":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_1
    :goto_2
    return-void

    .restart local v3    # "streamType":I
    .restart local v4    # "streamValue":I
    :cond_2
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v7}, Landroid/preference/SeekBarVolumizer;->access$1200(Landroid/preference/SeekBarVolumizer;)I

    move-result v7

    if-ne v3, v7, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0

    .restart local v2    # "streamMatch":Z
    :cond_4
    move v1, v6

    goto :goto_1

    .end local v2    # "streamMatch":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_5
    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1000(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->access$1300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    # setter for: Landroid/preference/SeekBarVolumizer;->mRingerMode:I
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->access$1502(Landroid/preference/SeekBarVolumizer;I)I

    :cond_6
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$1600(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2

    :cond_7
    const-string v5, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->access$1800(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v6

    # setter for: Landroid/preference/SeekBarVolumizer;->mZenMode:I
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->access$1702(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->updateSlider()V
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->access$800(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$900(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

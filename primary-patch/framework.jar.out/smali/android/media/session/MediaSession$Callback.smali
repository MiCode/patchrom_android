.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession$Callback;
    .param p1, "x1"    # Landroid/media/session/MediaSession;

    .prologue
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    iget-object v11, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-eqz v11, :cond_0

    const-string v11, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .local v3, "ke":Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    # getter for: Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v11}, Landroid/media/session/MediaSession;->access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v4

    .local v4, "state":Landroid/media/session/PlaybackState;
    if-nez v4, :cond_1

    move-wide v6, v8

    .local v6, "validActions":J
    :goto_0
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .end local v3    # "ke":Landroid/view/KeyEvent;
    .end local v4    # "state":Landroid/media/session/PlaybackState;
    .end local v6    # "validActions":J
    :cond_0
    move v5, v10

    :goto_1
    return v5

    .restart local v3    # "ke":Landroid/view/KeyEvent;
    .restart local v4    # "state":Landroid/media/session/PlaybackState;
    :cond_1
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    goto :goto_0

    .restart local v6    # "validActions":J
    :sswitch_0
    const-wide/16 v12, 0x4

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto :goto_1

    :sswitch_1
    const-wide/16 v12, 0x2

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_1

    :sswitch_2
    const-wide/16 v12, 0x20

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    :sswitch_3
    const-wide/16 v12, 0x10

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    goto :goto_1

    :sswitch_4
    const-wide/16 v12, 0x1

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    goto :goto_1

    :sswitch_5
    const-wide/16 v12, 0x40

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    goto :goto_1

    :sswitch_6
    const-wide/16 v12, 0x8

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    goto :goto_1

    :sswitch_7
    if-nez v4, :cond_2

    move v2, v10

    .local v2, "isPlaying":Z
    :goto_2
    const-wide/16 v12, 0x204

    and-long/2addr v12, v6

    cmp-long v11, v12, v8

    if-eqz v11, :cond_4

    move v1, v5

    .local v1, "canPlay":Z
    :goto_3
    const-wide/16 v12, 0x202

    and-long/2addr v12, v6

    cmp-long v8, v12, v8

    if-eqz v8, :cond_5

    move v0, v5

    .local v0, "canPause":Z
    :goto_4
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_1

    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    :cond_2
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v10

    goto :goto_2

    .restart local v2    # "isPlaying":Z
    :cond_4
    move v1, v10

    goto :goto_3

    .restart local v1    # "canPlay":Z
    :cond_5
    move v0, v10

    goto :goto_4

    .restart local v0    # "canPause":Z
    :cond_6
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    return-void
.end method

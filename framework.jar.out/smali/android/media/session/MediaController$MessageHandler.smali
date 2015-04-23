.class final Landroid/media/session/MediaController$MessageHandler;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaController$Callback;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cb"    # Landroid/media/session/MediaController$Callback;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    iput-object p2, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    return-void
.end method

.method static synthetic access$102(Landroid/media/session/MediaController$MessageHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaController$MessageHandler;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaController$MessageHandler;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaMetadata;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

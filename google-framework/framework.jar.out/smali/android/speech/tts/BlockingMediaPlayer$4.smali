.class Landroid/speech/tts/BlockingMediaPlayer$4;
.super Ljava/lang/Object;
.source "BlockingMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/BlockingMediaPlayer;->startPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/BlockingMediaPlayer;


# direct methods
.method constructor <init>(Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 121
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    const/4 v1, 0x1

    #setter for: Landroid/speech/tts/BlockingMediaPlayer;->mFinished:Z
    invoke-static {v0, v1}, Landroid/speech/tts/BlockingMediaPlayer;->access$302(Landroid/speech/tts/BlockingMediaPlayer;Z)Z

    .line 122
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    #getter for: Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/speech/tts/BlockingMediaPlayer;->access$200(Landroid/speech/tts/BlockingMediaPlayer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 123
    return-void
.end method

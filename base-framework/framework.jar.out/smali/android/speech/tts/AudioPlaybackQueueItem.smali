.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mStreamType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "dispatcher"
    .parameter "callerIdentity"
    .parameter "context"
    .parameter "uri"
    .parameter "streamType"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    iput p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return p1
.end method

.method private finish()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .local v0, dispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "TTS.AudioQueueItem"

    const-string v3, "MediaPlayer failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    goto :goto_0
.end method

.method stop(Z)V
    .locals 1
    .parameter "isError"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

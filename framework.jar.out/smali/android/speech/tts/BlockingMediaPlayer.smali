.class Landroid/speech/tts/BlockingMediaPlayer;
.super Ljava/lang/Object;
.source "BlockingMediaPlayer.java"


# static fields
.field private static final MEDIA_PLAYER_THREAD_NAME:Ljava/lang/String; = "TTS-MediaPlayer"

.field private static final TAG:Ljava/lang/String; = "BlockMediaPlayer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mStreamType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "streamType"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mUri:Landroid/net/Uri;

    .line 55
    iput p3, p0, Landroid/speech/tts/BlockingMediaPlayer;->mStreamType:I

    .line 56
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/speech/tts/BlockingMediaPlayer;->startPlaying()V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/speech/tts/BlockingMediaPlayer;->finish()V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/tts/BlockingMediaPlayer;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/BlockingMediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mFinished:Z

    return p1
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startPlaying()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 104
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "BlockMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to play "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/speech/tts/BlockingMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 131
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/speech/tts/BlockingMediaPlayer$3;

    invoke-direct {v2, p0}, Landroid/speech/tts/BlockingMediaPlayer$3;-><init>(Landroid/speech/tts/BlockingMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 118
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/speech/tts/BlockingMediaPlayer$4;

    invoke-direct {v2, p0}, Landroid/speech/tts/BlockingMediaPlayer$4;-><init>(Landroid/speech/tts/BlockingMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 125
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 126
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "BlockMediaPlayer"

    const-string v2, "MediaPlayer failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    iget-object v1, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method


# virtual methods
.method public startAndWait()Z
    .locals 3

    .prologue
    .line 68
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TTS-MediaPlayer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    .local v0, handler:Landroid/os/Handler;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mFinished:Z

    .line 72
    new-instance v2, Landroid/speech/tts/BlockingMediaPlayer$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/BlockingMediaPlayer$1;-><init>(Landroid/speech/tts/BlockingMediaPlayer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    iget-object v2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 79
    new-instance v2, Landroid/speech/tts/BlockingMediaPlayer$2;

    invoke-direct {v2, p0}, Landroid/speech/tts/BlockingMediaPlayer$2;-><init>(Landroid/speech/tts/BlockingMediaPlayer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-boolean v2, p0, Landroid/speech/tts/BlockingMediaPlayer;->mFinished:Z

    return v2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 96
    return-void
.end method

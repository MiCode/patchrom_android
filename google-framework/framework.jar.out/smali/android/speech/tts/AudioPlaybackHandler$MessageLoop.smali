.class final Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/AudioPlaybackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/AudioPlaybackHandler;


# direct methods
.method private constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 201
    :goto_0
    const/4 v1, 0x0

    .line 203
    .local v1, entry:Landroid/speech/tts/AudioPlaybackHandler$ListEntry;
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    #getter for: Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v3}, Landroid/speech/tts/AudioPlaybackHandler;->access$300(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    iget v3, v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mWhat:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 210
    :goto_1
    return-void

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, ie:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 218
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    iget-object v4, v1, Landroid/speech/tts/AudioPlaybackHandler$ListEntry;->mMessage:Landroid/speech/tts/MessageParams;

    #calls: Landroid/speech/tts/AudioPlaybackHandler;->setCurrentParams(Landroid/speech/tts/MessageParams;)V
    invoke-static {v3, v4}, Landroid/speech/tts/AudioPlaybackHandler;->access$400(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/MessageParams;)V

    .line 219
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    #calls: Landroid/speech/tts/AudioPlaybackHandler;->handleMessage(Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V
    invoke-static {v3, v1}, Landroid/speech/tts/AudioPlaybackHandler;->access$500(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$ListEntry;)V

    .line 220
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    const/4 v4, 0x0

    #calls: Landroid/speech/tts/AudioPlaybackHandler;->setCurrentParams(Landroid/speech/tts/MessageParams;)V
    invoke-static {v3, v4}, Landroid/speech/tts/AudioPlaybackHandler;->access$400(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/MessageParams;)V

    goto :goto_0
.end method

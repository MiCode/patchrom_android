.class Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSpeechItem"
.end annotation


# instance fields
.field private final mPlayer:Landroid/speech/tts/BlockingMediaPlayer;

.field private mToken:Landroid/speech/tts/AudioMessageParams;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "callingApp"
    .parameter "params"
    .parameter "uri"

    .prologue
    .line 685
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 686
    invoke-direct {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 687
    new-instance v0, Landroid/speech/tts/BlockingMediaPlayer;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getStreamType()I

    move-result v1

    invoke-direct {v0, p1, p4, v1}, Landroid/speech/tts/BlockingMediaPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mPlayer:Landroid/speech/tts/BlockingMediaPlayer;

    .line 688
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()I
    .locals 3

    .prologue
    .line 697
    new-instance v0, Landroid/speech/tts/AudioMessageParams;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mPlayer:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-direct {v0, p0, v1, v2}, Landroid/speech/tts/AudioMessageParams;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/BlockingMediaPlayer;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mToken:Landroid/speech/tts/AudioMessageParams;

    .line 698
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;->mToken:Landroid/speech/tts/AudioMessageParams;

    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueAudio(Landroid/speech/tts/AudioMessageParams;)V

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method protected stopImpl()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

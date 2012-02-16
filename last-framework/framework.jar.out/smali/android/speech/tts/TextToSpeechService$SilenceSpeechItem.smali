.class Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilenceSpeechItem"
.end annotation


# instance fields
.field private final mDuration:J

.field private mToken:Landroid/speech/tts/SilenceMessageParams;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0
    .parameter
    .parameter "callingApp"
    .parameter "params"
    .parameter "duration"

    .prologue
    .line 712
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 713
    invoke-direct {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 714
    iput-wide p4, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    .line 715
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()I
    .locals 4

    .prologue
    .line 724
    new-instance v0, Landroid/speech/tts/SilenceMessageParams;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mDuration:J

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/speech/tts/SilenceMessageParams;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mToken:Landroid/speech/tts/SilenceMessageParams;

    .line 725
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;->mToken:Landroid/speech/tts/SilenceMessageParams;

    invoke-virtual {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->enqueueSilence(Landroid/speech/tts/SilenceMessageParams;)V

    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method protected stopImpl()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

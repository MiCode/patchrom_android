.class Landroid/speech/tts/SilenceMessageParams;
.super Landroid/speech/tts/MessageParams;
.source "SilenceMessageParams.java"


# instance fields
.field private final mCondVar:Landroid/os/ConditionVariable;

.field private final mSilenceDurationMs:J


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;J)V
    .locals 1
    .parameter "dispatcher"
    .parameter "callingApp"
    .parameter "silenceDurationMs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/MessageParams;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SilenceMessageParams;->mCondVar:Landroid/os/ConditionVariable;

    .line 28
    iput-wide p3, p0, Landroid/speech/tts/SilenceMessageParams;->mSilenceDurationMs:J

    .line 29
    return-void
.end method


# virtual methods
.method getConditionVariable()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/speech/tts/SilenceMessageParams;->mCondVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method getSilenceDurationMs()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Landroid/speech/tts/SilenceMessageParams;->mSilenceDurationMs:J

    return-wide v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    return v0
.end method

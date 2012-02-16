.class abstract Landroid/speech/tts/MessageParams;
.super Ljava/lang/Object;
.source "MessageParams.java"


# static fields
.field static final TYPE_AUDIO:I = 0x2

.field static final TYPE_SILENCE:I = 0x3

.field static final TYPE_SYNTHESIS:I = 0x1


# instance fields
.field private final mCallingApp:Ljava/lang/String;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "callingApp"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/speech/tts/MessageParams;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 30
    iput-object p2, p0, Landroid/speech/tts/MessageParams;->mCallingApp:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method getCallingApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/speech/tts/MessageParams;->mCallingApp:Ljava/lang/String;

    return-object v0
.end method

.method getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/speech/tts/MessageParams;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    return-object v0
.end method

.method abstract getType()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageParams["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

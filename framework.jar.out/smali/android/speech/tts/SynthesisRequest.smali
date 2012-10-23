.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/String;

.field private mVariant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "text"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-void
.end method

.method setPitch(I)V
    .locals 0
    .parameter "pitch"

    .prologue
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return-void
.end method

.method setSpeechRate(I)V
    .locals 0
    .parameter "speechRate"

    .prologue
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return-void
.end method

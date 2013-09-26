.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    return-void
.end method

.method private varargs checkNonNull([Ljava/lang/Object;)Z
    .locals 5
    .parameter "args"

    .prologue
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .end local v3           #o:Ljava/lang/Object;
    :goto_1
    return v4

    .restart local v3       #o:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #o:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .local v0, features:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, featuresArray:[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;)I
    .locals 7
    .parameter "caller"
    .parameter "audioUri"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Landroid/net/Uri;)V

    .local v0, item:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_0
.end method

.method public playSilence(Landroid/os/IBinder;JILandroid/os/Bundle;)I
    .locals 8
    .parameter "caller"
    .parameter "duration"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p5

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;J)V

    .local v0, item:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_0
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 2
    .parameter "caller"
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    goto :goto_0
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 7
    .parameter "caller"
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .local v0, item:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_0
.end method

.method public stop(Landroid/os/IBinder;)I
    .locals 2
    .parameter "caller"

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthesizeToFile(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9
    .parameter "caller"
    .parameter "text"
    .parameter "filename"
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v8

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, file:Ljava/io/File;
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/io/File;)V

    .local v0, item:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_0
.end method

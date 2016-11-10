.class public abstract Landroid/speech/tts/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeechService$CallbackMap;,
        Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;,
        Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;,
        Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$SpeechItemV1;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioOutputParams;,
        Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;,
        Landroid/speech/tts/TextToSpeechService$SynthHandler;,
        Landroid/speech/tts/TextToSpeechService$SynthThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SYNTH_THREAD_NAME:Ljava/lang/String; = "SynthThread"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechService"


# instance fields
.field private mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

.field private mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

.field private mEngineHelper:Landroid/speech/tts/TtsEngines;

.field private mPackageName:Ljava/lang/String;

.field private mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field private final mVoicesInfoLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mVoicesInfoLock:Ljava/lang/Object;

    new-instance v0, Landroid/speech/tts/TextToSpeechService$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$1;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    return-void
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/speech/tts/TextToSpeechService;)I
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    return-object v0
.end method

.method private getDefaultSpeechRate()I
    .locals 2

    .prologue
    const-string v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x2

    .local v0, "expectedStatus":I
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getSecureSettingInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSettingsLocale()[Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthThread;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    .local v1, "synthThread":Landroid/speech/tts/TextToSpeechService$SynthThread;
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->start()V

    new-instance v2, Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    new-instance v2, Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {v2}, Landroid/speech/tts/AudioPlaybackHandler;-><init>()V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->start()V

    new-instance v2, Landroid/speech/tts/TtsEngines;

    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    new-instance v2, Landroid/speech/tts/TextToSpeechService$CallbackMap;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$1;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultLocale":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->quit()V

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->quit()V

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->kill()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "localeStatus":I
    const/4 v0, 0x0

    .local v0, "iso3Locale":Ljava/util/Locale;
    packed-switch v1, :pswitch_data_0

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :pswitch_0
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v0    # "iso3Locale":Ljava/util/Locale;
    :goto_1
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "properLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .local v3, "voiceName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    .end local v2    # "properLocale":Ljava/util/Locale;
    .end local v3    # "voiceName":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "iso3Locale":Ljava/util/Locale;
    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "iso3Locale":Ljava/util/Locale;
    invoke-direct {v0, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "iso3Locale":Ljava/util/Locale;
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected abstract onGetLanguage()[Ljava/lang/String;
.end method

.method public onGetVoices()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x12c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "voices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/speech/tts/Voice;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v7

    .local v7, "arr$":[Ljava/util/Locale;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v2, v7, v10

    .local v2, "locale":Ljava/util/Locale;
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v9

    .local v9, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .local v12, "localeStatus":I
    if-eq v12, v9, :cond_0

    .end local v12    # "localeStatus":I
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/util/MissingResourceException;
    goto :goto_1

    .end local v8    # "e":Ljava/util/MissingResourceException;
    .restart local v12    # "localeStatus":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .local v6, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "voiceName":Ljava/lang/String;
    new-instance v0, Landroid/speech/tts/Voice;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "voiceName":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v6    # "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "expectedStatus":I
    .end local v12    # "localeStatus":I
    :cond_1
    return-object v13
.end method

.method protected abstract onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onIsValidVoiceName(Ljava/lang/String;)I
    .locals 8
    .param p1, "voiceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v1

    .local v1, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .local v3, "localeStatus":I
    if-ne v3, v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "localeStatus":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method protected abstract onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadVoice(Ljava/lang/String;)I
    .locals 8
    .param p1, "voiceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v1

    .local v1, "expectedStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, "localeStatus":I
    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "localeStatus":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method

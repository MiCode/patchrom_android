.class Landroid/speech/tts/TextToSpeech$9;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 13
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x2

    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    if-nez v9, :cond_0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const/4 v2, 0x0

    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "country":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .local v4, "variant":Ljava/lang/String;
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, "result":I
    if-ltz v3, :cond_4

    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "voiceName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find the default voice for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .end local v3    # "result":I
    .end local v4    # "variant":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .end local v1    # "e":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v3    # "result":I
    .restart local v4    # "variant":Ljava/lang/String;
    .restart local v8    # "voiceName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {p1, v9, v8}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The service claimed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was available with voice name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but loadVoice returned ERROR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    invoke-static {v9, p1, v8}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v5

    .local v5, "voice":Landroid/speech/tts/Voice;
    if-nez v5, :cond_3

    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultVoiceNameFor returned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for locale "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but getVoice returns null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    const-string v7, ""

    .local v7, "voiceLanguage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    :goto_1
    const-string v6, ""

    .local v6, "voiceCountry":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    :goto_2
    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "voiceName"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "language"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "country"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v9}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "variant"

    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "voice":Landroid/speech/tts/Voice;
    .end local v6    # "voiceCountry":Ljava/lang/String;
    .end local v7    # "voiceLanguage":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_0

    .restart local v5    # "voice":Landroid/speech/tts/Voice;
    .restart local v7    # "voiceLanguage":Ljava/lang/String;
    .restart local v8    # "voiceName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/util/MissingResourceException;
    .restart local v6    # "voiceCountry":Ljava/lang/String;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string v9, "TextToSpeech"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$9;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

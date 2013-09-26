.class Landroid/speech/tts/TextToSpeech$8;
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
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    if-nez v4, :cond_0

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .local v1, language:Ljava/lang/String;
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->val$loc:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .local v3, variant:Ljava/lang/String;
    invoke-interface {p1, v1, v0, v3}, Landroid/speech/tts/ITextToSpeechService;->loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, result:I
    if-ltz v2, :cond_2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const-string v3, ""

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "language"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "country"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$8;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "variant"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$8;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

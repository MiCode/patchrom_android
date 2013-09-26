.class Landroid/speech/tts/TextToSpeech$11;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
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

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$11;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$11;->val$text:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/TextToSpeech$11;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$11;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 5
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$11;->this$0:Landroid/speech/tts/TextToSpeech;

    #calls: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$11;->val$text:Ljava/lang/String;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$11;->val$filename:Ljava/lang/String;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$11;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$11;->val$params:Ljava/util/HashMap;

    #calls: Landroid/speech/tts/TextToSpeech;->getParams(Ljava/util/HashMap;)Landroid/os/Bundle;
    invoke-static {v3, v4}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFile(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$11;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

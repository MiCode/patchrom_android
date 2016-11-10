.class public Landroid/app/VoiceInteractor$CompleteVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteVoiceRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    iput-object p1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iput-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iput-object p2, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExtras="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "CompleteVoice"

    return-object v0
.end method

.method public onCompleteResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 2
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    return-object v0
.end method

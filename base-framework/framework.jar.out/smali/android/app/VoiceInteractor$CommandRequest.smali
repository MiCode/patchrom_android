.class public Landroid/app/VoiceInteractor$CommandRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandRequest"
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field final mCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    iput-object p1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    return-void
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

    const-string v0, "mCommand="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "Command"

    return-object v0
.end method

.method public onCommandResult(ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "isCompleted"    # Z
    .param p2, "result"    # Landroid/os/Bundle;

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
    iget-object v0, p0, Landroid/app/VoiceInteractor$CommandRequest;->mCommand:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/VoiceInteractor$CommandRequest;->mArgs:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/internal/app/IVoiceInteractor;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    return-object v0
.end method

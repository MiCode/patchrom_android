.class public abstract Landroid/service/voice/VoiceInteractionSessionService;
.super Landroid/app/Service;
.source "VoiceInteractionSessionService.java"


# static fields
.field static final MSG_NEW_SESSION:I = 0x1


# instance fields
.field mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/VoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$1;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$2;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    return-void
.end method


# virtual methods
.method doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "startFlags"    # I

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    :cond_0
    invoke-virtual {p0, p2}, Landroid/service/voice/VoiceInteractionSessionService;->onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {v0, v1, p1}, Landroid/service/voice/VoiceInteractionSession;->doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-nez v0, :cond_0

    const-string v0, "(no active session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VoiceInteractionSession:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    const-string v1, "  "

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/service/voice/VoiceInteractionSession;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public abstract onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

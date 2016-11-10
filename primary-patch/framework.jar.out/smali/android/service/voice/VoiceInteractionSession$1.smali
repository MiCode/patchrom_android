.class Landroid/service/voice/VoiceInteractionSession$1;
.super Lcom/android/internal/app/IVoiceInteractor$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v1
.end method

.method public startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CommandRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v1
.end method

.method public startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v1
.end method

.method public startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v1
.end method

.method public startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p4, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .local v0, "request":Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1, v0}, Landroid/service/voice/VoiceInteractionSession;->addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v1
.end method

.method public supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [Z

    move-object v2, v3

    check-cast v2, [Z

    .local v2, "res":[Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .end local v2    # "res":[Z
    :goto_0
    return-object v2

    :cond_0
    array-length v3, p2

    new-array v2, v3, [Z

    goto :goto_0
.end method

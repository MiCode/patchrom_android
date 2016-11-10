.class Landroid/app/VoiceInteractor$2;
.super Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x5

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v6, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

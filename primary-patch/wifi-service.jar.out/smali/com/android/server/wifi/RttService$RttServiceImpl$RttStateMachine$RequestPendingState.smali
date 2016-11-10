.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPendingState"
.end annotation


# instance fields
.field mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x27302

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestPendingState got"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abort key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    iput-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$1000(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$1100(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v0, :cond_3

    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mOutstandingRequest.key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "RttService"

    const-string v1, "CMD_ISSUE_NEXT_REQUEST: mOutstandingRequest =null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mOutstandingRequest.key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RttService"

    const-string v1, "Ignoring CMD_ISSUE_NEXT_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an RTT response from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/net/wifi/RttManager$RttResult;

    check-cast v0, [Landroid/net/wifi/RttManager$RttResult;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V

    iput-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOCATION_HARDWARE Permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v0, "RttService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling ongoing RTT of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    iput-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
        0x27303 -> :sswitch_2
    .end sparse-switch
.end method

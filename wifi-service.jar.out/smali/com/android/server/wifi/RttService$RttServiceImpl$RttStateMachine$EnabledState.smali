.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, -0x4

    const-string v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnabledState got"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$700(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$800(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    # invokes: Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->access$900(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_2
    const-string v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LOCATION_HARDWARE Permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/RttManager$ParcelableRttParams;

    .local v2, "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string v5, "No params"

    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string v5, "Unspecified"

    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const v5, 0x27302

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .end local v2    # "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    .local v3, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_4

    const-string v4, "RttService"

    const-string v5, "Cancelling not-yet-scheduled RTT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v5, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method

.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method

.method private doEnter()V
    .locals 7

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v4, 0x43001

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "AttachingState executeAll due to autoAttach"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "AttachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const/4 v4, 0x0

    .local v4, "retVal":Z
    :goto_0
    return v4

    .end local v4    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string v5, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AttachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .local v3, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto :goto_0

    .end local v4    # "retVal":Z
    :cond_0
    const-string v5, "DcSwitchStateMachine processing due to autoAttach"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_1

    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v3    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, "ar":Landroid/os/AsyncResult;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_DATA_ALLOWED ignored arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", seq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto :goto_0

    .end local v4    # "retVal":Z
    :cond_2
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_3

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .local v2, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_3

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "e":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "retVal":Z
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_DATA_ALLOWED failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachingState going to retry"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .end local v4    # "retVal":Z
    :sswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .end local v4    # "retVal":Z
    :sswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .restart local v3    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v6, "releasingAll due to autoAttach"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    const/4 v4, 0x1

    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_2
        0x44002 -> :sswitch_4
        0x44007 -> :sswitch_3
    .end sparse-switch
.end method

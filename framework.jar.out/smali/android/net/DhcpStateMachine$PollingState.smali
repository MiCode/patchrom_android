.class Landroid/net/DhcpStateMachine$PollingState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollingState"
.end annotation


# static fields
.field private static final MAX_DELAY_SECONDS:J = 0x20L


# instance fields
.field private delaySeconds:J

.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private scheduleNextResultsCheck()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x20

    iget-object v0, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    const v2, 0x30008

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DhcpStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    iget-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    iget-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iput-wide v6, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/net/DhcpStateMachine$PollingState;->delaySeconds:J

    invoke-direct {p0}, Landroid/net/DhcpStateMachine$PollingState;->scheduleNextResultsCheck()V

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    const v1, 0x30008

    # invokes: Landroid/net/DhcpStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/DhcpStateMachine;->access$2000(Landroid/net/DhcpStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    # invokes: Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$1700(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1000(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1800(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/net/DhcpStateMachine$PollingState;->scheduleNextResultsCheck()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$PollingState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_1
        0x30008 -> :sswitch_0
    .end sparse-switch
.end method

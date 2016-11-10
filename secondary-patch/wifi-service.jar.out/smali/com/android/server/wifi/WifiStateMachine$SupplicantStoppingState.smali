.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    :cond_0
    const-string v2, "init.svc.wpa_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, "unknown"

    :cond_1
    const-string v2, "init.svc.p2p_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v0, "unknown"

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SupplicantStoppingState: stopSupplicant  init.svc.wpa_supplicant="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " init.svc.p2p_supplicant="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMonitor;->stopSupplicant()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20011

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8604(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;I)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v2

    const v3, 0x2006f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Supplicant connection received while stopping"

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Supplicant connection lost"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Timed out on a supplicant stop, kill and proceed"

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method

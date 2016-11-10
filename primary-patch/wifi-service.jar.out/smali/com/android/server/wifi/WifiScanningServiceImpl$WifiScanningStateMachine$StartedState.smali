.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x3

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :sswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    invoke-static {v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1000(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1100(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v6, v7

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v8, -0x1

    const-string v9, "not implemented"

    invoke-virtual {v6, p1, v8, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v8, v0, v9, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string v8, "bad request"

    invoke-virtual {v6, p1, v10, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_1

    :sswitch_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportScanResults()Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v8, v0, v9, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string v8, "bad request"

    invoke-virtual {v6, p1, v10, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_1

    :sswitch_7
    const-string v6, "Removing single shot scan"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$300(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-virtual {v8, v0, v9, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl;->untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto/16 :goto_1

    :sswitch_c
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-virtual {v8, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    goto/16 :goto_1

    :sswitch_d
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v5

    .local v5, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .local v1, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_2

    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :sswitch_e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/ScanResult;

    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportFullScanResult(Landroid/net/wifi/ScanResult;)V

    goto :goto_3

    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/wifi/ScanResult;

    move-object v5, v6

    check-cast v5, [Landroid/net/wifi/ScanResult;

    .local v5, "results":[Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    const v6, 0x27009

    invoke-virtual {v1, v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V

    goto :goto_4

    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_10
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/wifi/ScanResult;

    move-object v5, v6

    check-cast v5, [Landroid/net/wifi/ScanResult;

    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    const v6, 0x2700a

    invoke-virtual {v1, v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V

    goto :goto_5

    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_11
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/wifi/ScanResult;

    move-object v5, v6

    check-cast v5, [Landroid/net/wifi/ScanResult;

    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_12
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/wifi/ScanResult;

    move-object v5, v6

    check-cast v5, [Landroid/net/wifi/ScanResult;

    .restart local v5    # "results":[Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    .end local v5    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_13
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/wifi/WifiScanner$ScanData;

    move-object v5, v6

    check-cast v5, [Landroid/net/wifi/WifiScanner$ScanData;

    .local v5, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .restart local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_6

    .end local v1    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
    invoke-static {v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1200(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1300(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x27000 -> :sswitch_1
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_3
        0x27004 -> :sswitch_4
        0x27006 -> :sswitch_8
        0x27007 -> :sswitch_9
        0x2700b -> :sswitch_a
        0x2700c -> :sswitch_b
        0x2700d -> :sswitch_c
        0x27015 -> :sswitch_5
        0x27016 -> :sswitch_6
        0x27100 -> :sswitch_d
        0x27101 -> :sswitch_e
        0x27102 -> :sswitch_f
        0x27103 -> :sswitch_10
        0x27104 -> :sswitch_11
        0x27105 -> :sswitch_12
        0x27107 -> :sswitch_0
        0x27108 -> :sswitch_13
        0x2710a -> :sswitch_7
    .end sparse-switch
.end method

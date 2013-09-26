.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogService enabled"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogService disabled"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x21016

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v3

    :goto_0
    return v2

    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network state change "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "linkProperties"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "wifiInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "Ignoring link verification, mWifiInfo is NULL"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->shouldCheckWalledGarden()Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WifiStateDisabling -- Resetting WatchdogState"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

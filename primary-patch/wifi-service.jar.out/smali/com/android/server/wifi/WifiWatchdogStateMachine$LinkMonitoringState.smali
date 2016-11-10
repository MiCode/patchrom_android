.class Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static/range {v15 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v15

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    const/4 v15, 0x4

    if-gt v14, v15, :cond_1

    :cond_0
    :goto_1
    :sswitch_1
    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v14

    const v15, 0x25014

    invoke-virtual {v14, v15}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v16, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/RssiPacketCountInfo;

    .local v5, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v9, v5, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .local v9, "rssi":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    add-int/2addr v14, v9

    div-int/lit8 v8, v14, 0x2

    .local v8, "mrssi":I
    iget v12, v5, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .local v12, "txbad":I
    iget v13, v5, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .local v13, "txgood":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v14

    sub-long v14, v10, v14

    const-wide/16 v16, 0x7d0

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    sub-int v2, v12, v14

    .local v2, "dbad":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    sub-int v3, v13, v14

    .local v3, "dgood":I
    add-int v4, v2, v3

    .local v4, "dtotal":I
    if-lez v4, :cond_3

    int-to-double v14, v2

    int-to-double v0, v4

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .local v6, "loss":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v14

    invoke-virtual {v14, v6, v7, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    invoke-virtual {v14, v8, v6, v7, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4300(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    const/4 v15, 0x3

    if-lt v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .end local v2    # "dbad":I
    .end local v3    # "dgood":I
    .end local v4    # "dtotal":I
    .end local v6    # "loss":D
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v14, v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .restart local v2    # "dbad":I
    .restart local v3    # "dgood":I
    .restart local v4    # "dtotal":I
    .restart local v6    # "loss":D
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_1
    .end sparse-switch
.end method

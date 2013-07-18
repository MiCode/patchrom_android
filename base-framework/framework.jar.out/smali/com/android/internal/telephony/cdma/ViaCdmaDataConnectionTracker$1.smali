.class Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "ViaCdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v3, -0x1

    .local v3, preTxPkts:J
    const-wide/16 v1, -0x1

    .local v1, preRxPkts:J
    const-string v9, "net.cdma.linkup"

    const-string v10, "no"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "CDMA"

    const-string v10, "pppd drop! "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const/4 v10, 0x1

    const-string v11, "pppd drop"

    #calls: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V
    invoke-static {v9, v10, v11, v14}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;ZLjava/lang/String;Z)V

    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v3

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$400(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mTxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$502(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$602(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$700(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    cmp-long v9, v3, v12

    if-gtz v9, :cond_0

    cmp-long v9, v1, v12

    if-lez v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v7, v9, v3

    .local v7, sent:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v5, v9, v1

    .local v5, received:J
    cmp-long v9, v7, v12

    if-lez v9, :cond_5

    cmp-long v9, v5, v12

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .local v0, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPdpResetCount:I
    invoke-static {v9, v14}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    if-eq v9, v0, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9, v0}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v9

    const-wide/16 v11, 0xa

    cmp-long v9, v9, v11

    if-ltz v9, :cond_d

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)I

    move-result v9

    if-nez v9, :cond_2

    const v9, 0xc3b5

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)I

    move-result v9

    const/16 v10, 0x18

    if-ge v9, v10, :cond_c

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const-string v10, "no DATAIN in a while; polling PDP"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2908(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const/16 v10, 0x1388

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3700(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3900(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const-string v9, "CDMA"

    const-string v10, "pppd is alive! "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v5       #received:J
    .restart local v7       #sent:J
    :cond_5
    cmp-long v9, v7, v12

    if-lez v9, :cond_7

    cmp-long v9, v5, v12

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-static {v9, v7, v8}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1314(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    :goto_3
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_1

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    goto :goto_3

    :cond_7
    cmp-long v9, v7, v12

    if-nez v9, :cond_8

    cmp-long v9, v5, v12

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mPdpResetCount:I
    invoke-static {v9, v14}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    goto/16 :goto_1

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    cmp-long v9, v7, v12

    if-nez v9, :cond_a

    cmp-long v9, v5, v12

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_4
    goto/16 :goto_1

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_4

    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;J)J

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_5
    goto/16 :goto_1

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_5

    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkts since last received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->stopNetStatPoll()V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->doRecovery()V
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)V

    goto/16 :goto_2

    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9, v14}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const/16 v10, 0x3e8

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3502(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    goto/16 :goto_2

    :cond_e
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;

    const v10, 0x927c0

    #setter for: Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;->access$3602(Lcom/android/internal/telephony/cdma/ViaCdmaDataConnectionTracker;I)I

    goto/16 :goto_2
.end method

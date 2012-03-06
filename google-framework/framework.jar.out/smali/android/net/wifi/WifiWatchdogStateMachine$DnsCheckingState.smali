.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckingState"
.end annotation


# instance fields
.field dnsCheckLogStr:Ljava/lang/String;

.field dnsCheckSuccesses:[I

.field dnsResponseStrs:[Ljava/lang/String;

.field idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 803
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    .line 804
    .local v3, logStr:Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 805
    .local v4, respStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v4           #respStr:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private shouldCheckWalledGarden()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 815
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v2

    .line 820
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/Long;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->waitTime(JLjava/lang/Long;)J
    invoke-static {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(JLjava/lang/Long;)J

    move-result-wide v0

    .line 822
    .local v0, waitTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 829
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    .line 718
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    .line 719
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 720
    .local v2, numDnses:I
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    .line 721
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 723
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 732
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 733
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 734
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    mul-int/lit16 v7, v0, 0xc8

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 732
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 738
    .end local v1           #j:I
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    .line 812
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 742
    iget v4, p1, Landroid/os/Message;->what:I

    const/high16 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 743
    const/4 v3, 0x0

    .line 799
    :cond_0
    :goto_0
    return v3

    .line 746
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 747
    .local v1, pingID:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 749
    .local v2, pingResponseTime:I
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 750
    .local v0, dnsServerId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 751
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v5, "Received a Dns response with unknown ID!"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    if-ltz v2, :cond_3

    .line 757
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 776
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 782
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->shouldCheckWalledGarden()Z

    move-result v4

    if-nez v4, :cond_4

    .line 783
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDelayWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 791
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckFailureState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

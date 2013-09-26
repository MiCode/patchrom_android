.class public Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V
    .locals 0
    .parameter
    .parameter "txPkts"
    .parameter "rxPkts"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide p4, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;)V
    .locals 2
    .parameter
    .parameter "sum"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p2, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iget-wide v0, p2, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .local v12, txUpdated:Z
    const/4 v7, 0x0

    .local v7, rxUpdated:Z
    const-wide/16 v10, 0x0

    .local v10, txSum:J
    const-wide/16 v5, 0x0

    .local v5, rxSum:J
    iget-object v13, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v13, v14, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v4

    .local v4, linkProp:Landroid/net/LinkProperties;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, stats:J
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-lez v13, :cond_1

    const/4 v12, 0x1

    add-long/2addr v10, v8

    :cond_1
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-lez v13, :cond_0

    const/4 v7, 0x1

    add-long/2addr v5, v8

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #linkProp:Landroid/net/LinkProperties;
    .end local v8           #stats:J
    :cond_2
    if-eqz v12, :cond_3

    iput-wide v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    :cond_3
    if-eqz v7, :cond_4

    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    :cond_4
    return-void
.end method

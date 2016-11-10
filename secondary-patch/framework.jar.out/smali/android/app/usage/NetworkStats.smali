.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mSummary:Landroid/net/NetworkStats;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "startTimestamp"    # J
    .param p5, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .local v0, "statsService":Landroid/net/INetworkStatsService;
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iput-wide p3, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iput-wide p5, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$100(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mUid:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$002(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$300(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mState:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$202(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$402(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$602(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$802(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;J)J

    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v0

    # invokes: Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I
    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$100(I)I

    move-result v0

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mUid:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$002(Landroid/app/usage/NetworkStats$Bucket;I)I

    const/4 v0, -0x1

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mState:I
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$202(Landroid/app/usage/NetworkStats$Bucket;I)I

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$402(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v0, v2

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$602(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$802(Landroid/app/usage/NetworkStats$Bucket;J)J

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    # setter for: Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J
    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;J)J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUid()I
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUids.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    goto :goto_0
.end method

.method private hasNextUid()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUidEnumeration()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSingleUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    return-void
.end method

.method private stepHistory()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    :cond_0
    return-void

    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "NetworkStats"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stepUid()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 1
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    goto :goto_0
.end method

.method getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    if-nez v1, :cond_1

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    goto :goto_0
.end method

.method public hasNextBucket()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method startHistoryEnumeration(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    move v2, p1

    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->setSingleUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    return-void

    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "NetworkStats"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startSummaryEnumeration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iput v6, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    return-void
.end method

.method startUserUidEnumeration()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    move-result-object v18

    .local v18, "uids":[I
    new-instance v14, Landroid/util/IntArray;

    move-object/from16 v0, v18

    array-length v2, v0

    invoke-direct {v14, v2}, Landroid/util/IntArray;-><init>(I)V

    .local v14, "filteredUids":Landroid/util/IntArray;
    move-object/from16 v12, v18

    .local v12, "arr$":[I
    array-length v0, v12

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget v4, v12, v16

    .local v4, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v2 .. v11}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v15

    .local v15, "history":Landroid/net/NetworkStatsHistory;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v14, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v15    # "history":Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while getting history of uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v4    # "uid":I
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/usage/NetworkStats;->mUids:[I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-direct/range {p0 .. p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    return-void
.end method

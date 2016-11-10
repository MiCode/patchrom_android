.class Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$4702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v6

    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v6

    const/4 v1, 0x0

    .local v1, "emptyCount":I
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    .local v0, "d":I
    :goto_0
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-eq v2, p2, :cond_4

    if-ltz v2, :cond_2

    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4300(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    cmpg-double v6, v6, p3

    if-gez v6, :cond_3

    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v3, v6, v2

    :cond_0
    :goto_2
    return v3

    .end local v0    # "d":I
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .restart local v0    # "d":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_3

    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v3, v6, v2

    .local v3, "rssi":I
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v4

    .local v4, "lossPreset":D
    cmpg-double v6, v4, p3

    if-ltz v6, :cond_0

    .end local v3    # "rssi":I
    .end local v4    # "lossPreset":D
    :cond_3
    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v3, v6, p2

    goto :goto_2
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x69

    .local v0, "from":I
    const/16 v1, -0x2d

    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    goto :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 17
    .param p1, "rssi"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v6, v10, v14

    .local v6, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v8, v10, v14

    .local v8, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v14, :cond_0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    :cond_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    add-int/lit8 v4, p1, 0x3

    .local v4, "from":I
    add-int/lit8 v13, p1, 0x14

    .local v13, "to":I
    const-wide v14, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    :cond_1
    const/4 v5, 0x0

    .local v5, "p":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v12, v14, -0x1

    .local v12, "pmax":I
    :goto_1
    if-ge v5, v12, :cond_2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    aget-object v14, v14, v5

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v2, v14

    .local v2, "avoidMax":J
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-gtz v14, :cond_3

    const/4 v14, 0x0

    :goto_2
    return v14

    :cond_3
    add-long v14, v10, v2

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const/4 v14, 0x1

    goto :goto_2
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    .prologue
    const/16 v10, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v1, 0x5a

    .local v1, "size":I
    new-array v4, v10, [D

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4802([D)[D

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 2
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    if-gtz p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v0, p1, v1

    .local v0, "index":I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    goto :goto_0
.end method

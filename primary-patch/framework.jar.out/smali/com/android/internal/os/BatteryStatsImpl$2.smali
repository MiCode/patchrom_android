.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$cpuSpeedSteps:I

.field final synthetic val$cpuSpeeds:[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;II[J)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    .prologue
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long/2addr v4, p2

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long/2addr v4, p4

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    const/4 v1, 0x0

    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$numWakelocksF:I

    if-lez v3, :cond_0

    const-wide/16 v4, 0x32

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x64

    div-long p2, v4, v6

    const-wide/16 v4, 0x32

    mul-long/2addr v4, p4

    const-wide/16 v6, 0x64

    div-long p4, v4, v6

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "  adding to uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " p="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, p6, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mAms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BatteryStatsImpl"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p6, p7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeedSteps:I

    if-ge v0, v3, :cond_3

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v4, v3, v0

    :cond_2
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$cpuSpeeds:[J

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

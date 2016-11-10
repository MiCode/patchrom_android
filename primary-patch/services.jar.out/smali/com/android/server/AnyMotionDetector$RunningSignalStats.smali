.class Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunningSignalStats"
.end annotation


# instance fields
.field currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field energy:F

.field previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .locals 5
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2, v3}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .local v0, "dv":Lcom/android/server/AnyMotionDetector$Vector3;
    iget v2, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v4, v0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .local v1, "incrementalEnergy":F
    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    goto :goto_0
.end method

.method public getEnergy()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    return v0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return v0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    iput v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v1, ""

    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v3, :cond_0

    const-string v0, "null"

    .local v0, "currentVectorString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v3, :cond_1

    const-string v2, "null"

    .local v2, "previousVectorString":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "previousVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentVector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sampleCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", energy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "currentVectorString":Ljava/lang/String;
    .end local v2    # "previousVectorString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "currentVectorString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

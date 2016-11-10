.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameNumberTracker"
.end annotation


# instance fields
.field private mCompletedFrameNumber:J

.field private mCompletedReprocessFrameNumber:J

.field private final mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkippedRegularFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    return-void
.end method

.method private update()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, "errorFrameNumber":Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .local v4, "reprocess":Ljava/lang/Boolean;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "removeError":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    add-long/2addr v8, v12

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eq v5, v10, :cond_2

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    add-long/2addr v8, v12

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eq v5, v10, :cond_5

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .end local v0    # "errorFrameNumber":Ljava/lang/Long;
    .end local v2    # "pair":Ljava/util/Map$Entry;
    .end local v3    # "removeError":Ljava/lang/Boolean;
    .end local v4    # "reprocess":Ljava/lang/Boolean;
    :cond_6
    return-void
.end method

.method private updateCompletedFrameNumber(J)V
    .locals 9
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a repeat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a repeat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comes out of order. Expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_4
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    return-void

    :cond_5
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v0, v2, v6

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_4

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long/2addr v0, v6

    goto :goto_0
.end method

.method private updateCompletedReprocessFrameNumber(J)V
    .locals 9
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a repeat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_5

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a repeat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comes out of order. Expecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedReprocessFrameNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_4
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    return-void

    :cond_5
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v0, v2, v6

    .local v0, "i":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_4

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mSkippedRegularFrameNumbers:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long/2addr v0, v6

    goto :goto_0
.end method


# virtual methods
.method public getCompletedFrameNumber()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedFrameNumber:J

    return-wide v0
.end method

.method public getCompletedReprocessFrameNumber()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mCompletedReprocessFrameNumber:J

    return-wide v0
.end method

.method public popPartialResults(J)Ljava/util/List;
    .locals 3
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p4, "partial"    # Z
    .param p5, "isReprocess"    # Z

    .prologue
    if-nez p4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateTracker(JZZ)V
    .locals 5
    .param p1, "frameNumber"    # J
    .param p3, "isError"    # Z
    .param p4, "isReprocess"    # Z

    .prologue
    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->update()V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedReprocessFrameNumber(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateCompletedFrameNumber(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

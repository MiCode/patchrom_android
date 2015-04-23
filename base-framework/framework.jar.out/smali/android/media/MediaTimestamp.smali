.class public final Landroid/media/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# instance fields
.field public final clockRate:F

.field public final mediaTimeUs:J

.field public final nanoTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method

.method constructor <init>(JJF)V
    .locals 1
    .param p1, "mediaUs"    # J
    .param p3, "systemNs"    # J
    .param p5, "rate"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    iput-wide p3, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    iput p5, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return-void
.end method


# virtual methods
.method public getAnchorMediaTimeUs()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->mediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSytemNanoTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/media/MediaTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/MediaTimestamp;->clockRate:F

    return v0
.end method

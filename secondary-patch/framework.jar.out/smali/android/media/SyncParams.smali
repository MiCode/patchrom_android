.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SyncParams.java"


# static fields
.field public static final AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final SET_FRAME_RATE:I = 0x8

.field private static final SET_SYNC_SOURCE:I = 0x1

.field private static final SET_TOLERANCE:I = 0x4

.field public static final SYNC_SOURCE_AUDIO:I = 0x2

.field public static final SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private mAudioAdjustMode:I

.field private mFrameRate:F

.field private mSet:I

.field private mSyncSource:I

.field private mTolerance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    iput v1, p0, Landroid/media/SyncParams;->mTolerance:F

    iput v1, p0, Landroid/media/SyncParams;->mFrameRate:F

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/SyncParams;
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public getAudioAdjustMode()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio adjust mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    return v0
.end method

.method public getFrameRate()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame rate not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return v0
.end method

.method public getSyncSource()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sync source not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    return v0
.end method

.method public getTolerance()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tolerance not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/SyncParams;->mTolerance:F

    return v0
.end method

.method public setAudioAdjustMode(I)Landroid/media/SyncParams;
    .locals 1
    .param p1, "audioAdjustMode"    # I

    .prologue
    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setFrameRate(F)Landroid/media/SyncParams;
    .locals 1
    .param p1, "frameRate"    # F

    .prologue
    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setSyncSource(I)Landroid/media/SyncParams;
    .locals 1
    .param p1, "syncSource"    # I

    .prologue
    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setTolerance(F)Landroid/media/SyncParams;
    .locals 2
    .param p1, "tolerance"    # F

    .prologue
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tolerance must be less than one and non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

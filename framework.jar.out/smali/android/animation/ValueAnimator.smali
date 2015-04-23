.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$1;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    const/high16 v0, 0x43960000    # 300.0f

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/animation/ValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method static synthetic access$200(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/animation/ValueAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method public static clearAllAnimations()V
    .locals 2

    .prologue
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v4, :cond_0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v4, :cond_3

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    :cond_3
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v4

    .local v0, "deltaTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    move v2, v3

    goto :goto_0
.end method

.method public static getCurrentAnimationsCount()I
    .locals 2

    .prologue
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 2

    .prologue
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .restart local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    return-void
.end method

.method private start(Z)V
    .locals 10
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz p1, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-nez v2, :cond_6

    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :goto_0
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-int v2, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_1
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    if-lez v2, :cond_3

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_2

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_3

    :cond_2
    if-eqz p1, :cond_9

    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_3
    :goto_2
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .local v1, "prevPlayingState":I
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .local v0, "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v2, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_4
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    return-void

    .end local v0    # "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    .end local v1    # "prevPlayingState":I
    :cond_6
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-ne v2, v8, :cond_7

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    rem-float/2addr v2, v7

    sub-float v2, v7, v2

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_7
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v5, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    int-to-float v5, v5

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    :cond_9
    iget v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_3
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    return-void
.end method

.method private updateScaledDuration()V
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const/4 v0, 0x0

    .local v0, "done":Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v5, v6

    div-float v1, v4, v5

    .local v1, "fraction":F
    :goto_1
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_5

    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v5, :cond_1

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .restart local v1    # "fraction":F
    :cond_3
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_4
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v1, v4

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_5
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    :cond_6
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput v7, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput v7, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v5, 0x0

    iput v5, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    array-length v3, v4

    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method commitAnimationFrame(J)V
    .locals 3
    .param p1, "adjustment"    # J

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_0
    return-void
.end method

.method final doAnimationFrame(J)Z
    .locals 11
    .param p1, "frameTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iget v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :goto_0
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    :cond_0
    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v5, :cond_3

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    :cond_1
    :goto_1
    return v4

    :cond_2
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v5, v6

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v5, v6

    float-to-long v2, v5

    .local v2, "seekTime":J
    sub-long v6, p1, v2

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .end local v2    # "seekTime":J
    :cond_3
    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v5, :cond_4

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    :cond_4
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v4

    goto :goto_1
.end method

.method public end()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 8
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v6, 0x8

    const/4 v4, 0x0

    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.method public reverse()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "currentTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v10

    .local v0, "currentPlayTime":J
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v10, v0

    .local v4, "timeLeft":J
    sub-long v10, v2, v4

    iput-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-nez v6, :cond_1

    :goto_1
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_2
    return-void

    :cond_0
    move v6, v8

    goto :goto_0

    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_1
    move v7, v8

    goto :goto_1

    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_2
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_2
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 12
    .param p1, "fraction"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    :cond_0
    float-to-int v2, p1

    .local v2, "iteration":I
    cmpl-float v3, p1, v10

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v3, v8

    mul-float/2addr v3, p1

    float-to-long v4, v3

    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .local v0, "currentTime":J
    sub-long v8, v0, v4

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v3, v6, :cond_1

    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v11, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v3, :cond_2

    sub-float p1, v10, p1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    .end local v0    # "currentTime":J
    .end local v4    # "seekTime":J
    :cond_3
    cmpl-float v3, p1, v10

    if-lez v3, :cond_8

    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4

    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    :cond_4
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v3, v11, :cond_5

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_6

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_5
    rem-float/2addr p1, v10

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void

    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->updateScaledDuration()V

    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    long-to-float v0, p1

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    array-length v1, p1

    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

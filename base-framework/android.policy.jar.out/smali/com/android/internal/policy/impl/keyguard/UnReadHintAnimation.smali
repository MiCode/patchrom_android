.class public Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
.super Ljava/lang/Object;
.source "UnReadHintAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0xdc


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .locals 2
    .parameter "child"

    .prologue
    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotY(F)V

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotX(F)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->child:Landroid/view/View;

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$DoubleEvaluator;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-wide v4, 0x400921fb54442d18L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, va:Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation$2;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public completeAnimationImmediately()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->child:Landroid/view/View;

    const-string v1, "rotation"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

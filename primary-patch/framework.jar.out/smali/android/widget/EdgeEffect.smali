.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.5f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, -0x99999a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .local v1, "themeColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .local v1, "t":F
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .local v0, "interp":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_2
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .local v2, "count":I
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v0, v7

    .local v0, "centerX":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float v1, v7, v8

    .local v1, "centerY":F
    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v7, v8

    invoke-virtual {p1, v9, v7, v0, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v7, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v3, v7, v8

    .local v3, "displacement":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .local v5, "translateX":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    iget v9, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v7, p0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v4, 0x0

    .local v4, "oneLastFrame":Z
    iget v7, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_0

    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    :cond_0
    iget v7, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v7, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    const/4 v6, 0x1

    :cond_2
    return v6
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 4
    .param p1, "velocity"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const v0, 0x3e19999a    # 0.15f

    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x6

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 10
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_1
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absdd":F
    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :goto_1
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, v8, v6

    sub-double v6, v8, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    div-double/2addr v4, v6

    double-to-float v1, v4

    .local v1, "scale":F
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    goto :goto_1
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    int-to-float v7, p1

    mul-float/2addr v7, v9

    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    div-float v4, v7, v8

    .local v4, "r":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    mul-float v5, v7, v4

    .local v5, "y":F
    sub-float v0, v4, v5

    .local v0, "h":F
    int-to-float v7, p2

    mul-float/2addr v7, v9

    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    div-float v2, v7, v8

    .local v2, "or":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    mul-float v3, v7, v2

    .local v3, "oy":F
    sub-float v1, v2, v3

    .local v1, "oh":F
    iput v4, p0, Landroid/widget/EdgeEffect;->mRadius:F

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    div-float v7, v1, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_0
    iput v6, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

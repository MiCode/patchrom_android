.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;
    }
.end annotation


# static fields
.field private static final BOUNDED_OPACITY_EXIT_DURATION:I = 0x190

.field private static final BOUNDED_ORIGIN_EXIT_DURATION:I = 0x12c

.field private static final BOUNDED_RADIUS_EXIT_DURATION:I = 0x320

.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final MAX_BOUNDED_RADIUS:F = 350.0f

.field private static final OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final RIPPLE_ENTER_DELAY:I = 0x50

.field private static final TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBoundedRadius:F

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mHasFinishedExit:Z

.field private mIsBounded:Z

.field private mOpacity:F

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingX:F

.field private mStartingY:F

.field private mTargetX:F

.field private mTargetY:F

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;

    const/high16 v1, 0x43c80000    # 400.0f

    const v2, 0x3fb33333    # 1.4f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;-><init>(FFF)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    const-string v1, "tweenRadius"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    const-string v1, "tweenOrigin"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    const-string v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V
    .locals 6
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F
    .param p5, "isBounded"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    new-instance v0, Landroid/graphics/drawable/RippleForeground$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    if-eqz p5, :cond_0

    const v0, 0x439d8000    # 315.0f

    const-wide v2, 0x4075e00000000000L    # 350.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/RippleForeground;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p1
.end method

.method static synthetic access$302(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    return p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleForeground;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p1
.end method

.method private clampStartingPosition()V
    .locals 12

    .prologue
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .local v2, "cX":F
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .local v3, "cY":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    sub-float v4, v7, v2

    .local v4, "dX":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    sub-float v5, v7, v3

    .local v5, "dY":F
    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    .local v6, "r":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    float-to-double v8, v5

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v2

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    float-to-double v10, v6

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v7, v3

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .end local v0    # "angle":D
    :goto_0
    return-void

    :cond_0
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    goto :goto_0
.end method

.method private computeBoundedTargetValues()V
    .locals 3

    .prologue
    const v2, 0x3f333333    # 0.7f

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    return-void
.end method

.method private getCurrentRadius()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentX()F
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentY()F
    .locals 3

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getOpacityExitDuration()I
    .locals 2

    .prologue
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getRadiusExitDuration()I
    .locals 6

    .prologue
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v2

    sub-float v0, v1, v2

    .local v0, "remainingRadius":F
    const-wide v2, 0x408f400000000000L    # 1000.0

    const v1, 0x458a4000    # 4424.0f

    div-float v1, v0, v1

    iget v4, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 14
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    iget-boolean v11, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v11, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    const/16 v4, 0x320

    .local v4, "radiusDuration":I
    const/16 v2, 0x12c

    .local v2, "originDuration":I
    const/16 v1, 0x190

    .local v1, "opacityDuration":I
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v7

    .local v7, "startX":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v8

    .local v8, "startY":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v6

    .local v6, "startRadius":F
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {p1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v11

    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    new-instance v3, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {v3, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .local v3, "radius":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v4

    invoke-virtual {v3, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    invoke-direct {v9, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .local v9, "x":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    invoke-direct {v10, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .local v10, "y":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    invoke-virtual {v10, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v10, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v0, v11, v12, v13}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .local v0, "opacity":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v1

    invoke-virtual {v0, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v11, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-direct {v5}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .local v5, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    return-object v5

    .end local v0    # "opacity":Landroid/view/RenderNodeAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radius":Landroid/view/RenderNodeAnimator;
    .end local v4    # "radiusDuration":I
    .end local v5    # "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .end local v6    # "startRadius":F
    .end local v7    # "startX":F
    .end local v8    # "startY":F
    .end local v9    # "x":Landroid/view/RenderNodeAnimator;
    .end local v10    # "y":Landroid/view/RenderNodeAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    move-result v4

    .restart local v4    # "radiusDuration":I
    move v2, v4

    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    move-result v1

    .restart local v1    # "opacityDuration":I
    goto/16 :goto_0
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 10
    .param p1, "fast"    # Z

    .prologue
    iget-boolean v5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-wide v6, 0x408f400000000000L    # 1000.0

    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v5, v8

    iget v8, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    mul-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    .local v0, "duration":I
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "tweenRadius":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x50

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "tweenOrigin":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x50

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "opacity":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v6, 0x78

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-boolean v7, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    const/16 v3, 0x320

    .local v3, "radiusDuration":I
    const/16 v2, 0x12c

    .local v2, "originDuration":I
    const/16 v1, 0x190

    .local v1, "opacityDuration":I
    :goto_0
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    aput v12, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .local v6, "tweenRadius":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    aput v12, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "tweenOrigin":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v8, v2

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    new-array v8, v10, [F

    const/4 v9, 0x0

    aput v9, v8, v11

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    .end local v0    # "opacity":Landroid/animation/ObjectAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radiusDuration":I
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "tweenOrigin":Landroid/animation/ObjectAnimator;
    .end local v6    # "tweenRadius":Landroid/animation/ObjectAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    move-result v3

    .restart local v3    # "radiusDuration":I
    move v2, v3

    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    move-result v1

    .restart local v1    # "opacityDuration":I
    goto :goto_0
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .local v2, "origAlpha":I
    int-to-float v6, v2

    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .local v0, "alpha":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v3

    .local v3, "radius":F
    if-lez v0, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v4

    .local v4, "x":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    float-to-int v0, v3

    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    float-to-int v1, v3

    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasFinishedExit()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return v0
.end method

.method protected jumpValuesToExit()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    return-void
.end method

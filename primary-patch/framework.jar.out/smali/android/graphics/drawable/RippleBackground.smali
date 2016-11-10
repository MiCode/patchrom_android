.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_ENTER_DURATION:I = 0x258

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final OPACITY_EXIT_DURATION:I = 0x1e0


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    const-string v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/RippleBackground;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/RippleBackground;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/RippleBackground;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p1
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 10
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-direct {v4}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    .local v4, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .local v5, "targetAlpha":I
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .local v0, "currentAlpha":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x42f00000    # 120.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .local v3, "fastEnterDuration":I
    if-lez v3, :cond_0

    new-instance v1, Landroid/view/RenderNodeAnimator;

    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    int-to-float v7, v5

    invoke-direct {v1, v6, v9, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .local v1, "enter":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    .end local v1    # "enter":Landroid/view/RenderNodeAnimator;
    :cond_0
    new-instance v2, Landroid/view/RenderNodeAnimator;

    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-direct {v2, v6, v9, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .local v2, "exit":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1e0

    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    return-object v4
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 8
    .param p1, "fast"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/16 v1, 0x78

    .local v1, "maxDuration":I
    :goto_0
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    sub-float v3, v6, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .local v0, "duration":I
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2

    .end local v0    # "duration":I
    .end local v1    # "maxDuration":I
    .end local v2    # "opacity":Landroid/animation/ObjectAnimator;
    :cond_0
    const/16 v1, 0x258

    goto :goto_0
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .local v4, "set":Landroid/animation/AnimatorSet;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v7, v6, v10

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "exit":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x1e0

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    sub-float v5, v9, v5

    const/high16 v6, 0x42f00000    # 120.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .local v3, "fastEnterDuration":I
    if-lez v3, :cond_0

    sget-object v5, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    new-array v6, v8, [F

    aput v9, v6, v10

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "enter":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .end local v1    # "enter":Landroid/animation/ObjectAnimator;
    :cond_0
    return-object v4
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .local v2, "origAlpha":I
    int-to-float v3, v2

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .local v0, "alpha":I
    if-lez v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    invoke-virtual {p1, v5, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->isHardwareAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jumpValuesToExit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return-void
.end method

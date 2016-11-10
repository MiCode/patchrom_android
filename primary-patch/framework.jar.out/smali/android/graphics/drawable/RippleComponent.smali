.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    }
.end annotation


# instance fields
.field protected final mBounds:Landroid/graphics/Rect;

.field protected mDensity:F

.field private mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

.field private mHasDisplayListCanvas:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareAnimator:Z

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mSoftwareAnimator:Landroid/animation/Animator;

.field protected mTargetRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private endHardwareAnimations()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    :cond_1
    return-void
.end method

.method private endSoftwareAnimations()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private static getTargetRadius(Landroid/graphics/Rect;)F
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .local v1, "halfWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "hw"    # Landroid/view/DisplayListCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->start(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->cancelSoftwareAnimations()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    return-void
.end method

.method protected abstract createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.end method

.method protected abstract createSoftwareEnter(Z)Landroid/animation/Animator;
.end method

.method protected abstract createSoftwareExit()Landroid/animation/Animator;
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/view/DisplayListCanvas;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .local v0, "hasDisplayListCanvas":Z
    :goto_0
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    :cond_0
    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayListCanvas;

    .local v1, "hw":Landroid/view/DisplayListCanvas;
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/RippleComponent;->startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleComponent;->drawHardware(Landroid/view/DisplayListCanvas;)Z

    move-result v2

    .end local v1    # "hw":Landroid/view/DisplayListCanvas;
    :goto_1
    return v2

    .end local v0    # "hasDisplayListCanvas":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "hasDisplayListCanvas":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v2

    goto :goto_1
.end method

.method protected abstract drawHardware(Landroid/view/DisplayListCanvas;)Z
.end method

.method protected abstract drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
.end method

.method public end()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endSoftwareAnimations()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    return-void
.end method

.method public final enter(Z)V
    .locals 1
    .param p1, "fast"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->createSoftwareEnter(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->invalidateSelf()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->createSoftwareExit()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget v1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .local v0, "r":I
    neg-int v1, v0

    neg-int v2, v0

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected final invalidateSelf()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method protected final isHardwareAnimating()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract jumpValuesToExit()V
.end method

.method public onBoundsChange()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    :cond_0
    return-void
.end method

.method protected final onHotspotBoundsChanged()V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v3, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .local v1, "halfWidth":F
    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .local v0, "halfHeight":F
    mul-float v3, v1, v1

    mul-float v4, v0, v0

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .local v2, "targetRadius":F
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    .end local v2    # "targetRadius":F
    :cond_0
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .prologue
    return-void
.end method

.method public final setup(FF)V
    .locals 1
    .param p1, "maxRadius"    # F
    .param p2, "density"    # F

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    :goto_0
    iput p2, p0, Landroid/graphics/drawable/RippleComponent;->mDensity:F

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    goto :goto_0
.end method

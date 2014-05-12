.class Landroid/transition/Fade$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field mPausedAlpha:F

.field final synthetic this$0:Landroid/transition/Fade;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$finalSceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$finalViewToKeep:Landroid/view/View;

.field final synthetic val$finalVisibility:I


# direct methods
.method constructor <init>(Landroid/transition/Fade;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/transition/Fade$3;->this$0:Landroid/transition/Fade;

    iput-object p2, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    iput p3, p0, Landroid/transition/Fade$3;->val$finalVisibility:I

    iput-object p4, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/Fade$3;->val$finalOverlayView:Landroid/view/View;

    iput-object p6, p0, Landroid/transition/Fade$3;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/transition/Fade$3;->mPausedAlpha:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    iget v0, p0, Landroid/transition/Fade$3;->mPausedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$3;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_0
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$3;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalOverlayView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/Fade$3;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$3;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    iput v0, p0, Landroid/transition/Fade$3;->mPausedAlpha:F

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/transition/Fade$3;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalViewToKeep:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/transition/Fade$3;->val$finalView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$3;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field final synthetic val$cling:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iput-object p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$500(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # setter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$602(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$500(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

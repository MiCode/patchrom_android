.class Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->access$3700(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->mViewportFrame:Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->access$3800(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$ViewportWindow;->hide()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

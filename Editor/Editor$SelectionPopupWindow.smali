.class Landroid/widget/Editor$SelectionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPopupWindow"
.end annotation


# instance fields
.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 3727
    iput-object p1, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    .line 3728
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    .line 3729
    return-void
.end method


# virtual methods
.method protected createAnimations()V
    .locals 5

    .prologue
    .line 3733
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    .line 3734
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3736
    .local v1, "scaleAnimatorX":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3737
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3738
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3740
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x11040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3742
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3743
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3744
    iget-object v2, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    const v3, 0x3ccccccd    # 0.025f

    invoke-virtual {v2, v3}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 3745
    return-void

    .line 3734
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fadeIn(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3749
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 3750
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 3752
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3753
    iget-object v0, p0, Landroid/widget/Editor$SelectionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$SelectionPopupWindow;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 3754
    return-void
.end method

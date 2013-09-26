.class Lcom/android/internal/app/ActionBarImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$000(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$000(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$300(Lcom/android/internal/app/ActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$400(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->access$502(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->completeDeferredDestroyActionMode()V

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$1;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_2
    return-void
.end method

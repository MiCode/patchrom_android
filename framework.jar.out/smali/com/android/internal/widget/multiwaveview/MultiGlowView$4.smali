.class Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiGlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiGlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    const-string v0, "MultiGlowView"

    const-string v1, "mTargetUpdateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$700(Lcom/android/internal/widget/multiwaveview/MultiGlowView;I)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$602(Lcom/android/internal/widget/multiwaveview/MultiGlowView;I)I

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$800(Lcom/android/internal/widget/multiwaveview/MultiGlowView;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$902(Lcom/android/internal/widget/multiwaveview/MultiGlowView;Z)Z

    return-void
.end method

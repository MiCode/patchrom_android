.class Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$600(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$700(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$602(Lcom/android/internal/widget/multiwaveview/MultiWaveView;I)I

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$800(Lcom/android/internal/widget/multiwaveview/MultiWaveView;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$4;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #setter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$902(Lcom/android/internal/widget/multiwaveview/MultiWaveView;Z)Z

    return-void
.end method

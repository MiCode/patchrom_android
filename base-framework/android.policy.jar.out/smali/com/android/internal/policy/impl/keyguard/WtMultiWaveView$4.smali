.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WtMultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$500(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$600(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$502(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$700(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$802(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;Z)Z

    return-void
.end method

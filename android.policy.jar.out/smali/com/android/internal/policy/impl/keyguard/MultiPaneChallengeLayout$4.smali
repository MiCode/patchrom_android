.class Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;
.super Ljava/lang/Object;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$100(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Z

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->updateKeyguardLayerView(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$200(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mKeyguardLayerForegroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$100(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$400(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mKeyguardLayerBackgroundLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$400(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$4;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mShowKeyguardLayer:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$100(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    #calls: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    #calls: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    return-void
.end method

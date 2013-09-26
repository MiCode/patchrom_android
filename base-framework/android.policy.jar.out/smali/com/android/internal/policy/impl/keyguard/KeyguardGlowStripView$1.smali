.class Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardGlowStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->makeEmGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->mDrawDots:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->mDrawDots:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;Z)Z

    return-void
.end method

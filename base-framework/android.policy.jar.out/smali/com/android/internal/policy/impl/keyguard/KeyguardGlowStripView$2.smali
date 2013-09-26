.class Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$2;
.super Ljava/lang/Object;
.source "KeyguardGlowStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->mAnimationProgress:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;F)F

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardGlowStripView;->invalidate()V

    return-void
.end method

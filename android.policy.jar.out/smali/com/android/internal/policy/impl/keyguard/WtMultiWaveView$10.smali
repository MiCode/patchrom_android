.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2200(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2200(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2200(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->startExpandAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2300(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    const/4 v1, 0x7

    move v3, v2

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1700(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;IIIFF)V

    return-void
.end method

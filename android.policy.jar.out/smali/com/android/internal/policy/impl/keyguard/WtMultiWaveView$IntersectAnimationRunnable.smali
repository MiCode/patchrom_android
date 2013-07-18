.class final Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$IntersectAnimationRunnable;
.super Ljava/lang/Object;
.source "WtMultiWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntersectAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mDragging:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2400(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mShouldDoIntersectAnim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$2502(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;Z)Z

    :cond_0
    return-void
.end method

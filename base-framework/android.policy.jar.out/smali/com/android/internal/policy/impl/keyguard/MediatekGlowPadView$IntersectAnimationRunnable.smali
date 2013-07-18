.class final Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntersectAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$2400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mShouldDoIntersectAnim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$2502(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z

    :cond_0
    return-void
.end method

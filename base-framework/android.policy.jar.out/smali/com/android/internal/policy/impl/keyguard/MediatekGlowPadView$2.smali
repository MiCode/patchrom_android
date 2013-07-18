.class Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->pingInternal()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$200(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;IFF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->access$400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    return-void
.end method

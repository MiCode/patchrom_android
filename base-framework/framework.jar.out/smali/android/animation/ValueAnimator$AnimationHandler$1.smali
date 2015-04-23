.class Landroid/animation/ValueAnimator$AnimationHandler$1;
.super Ljava/lang/Object;
.source "ValueAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator$AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/ValueAnimator$AnimationHandler;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$0:Landroid/animation/ValueAnimator$AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$0:Landroid/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    # setter for: Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;->access$402(Landroid/animation/ValueAnimator$AnimationHandler;Z)Z

    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$0:Landroid/animation/ValueAnimator$AnimationHandler;

    iget-object v1, p0, Landroid/animation/ValueAnimator$AnimationHandler$1;->this$0:Landroid/animation/ValueAnimator$AnimationHandler;

    # getter for: Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Landroid/animation/ValueAnimator$AnimationHandler;->access$500(Landroid/animation/ValueAnimator$AnimationHandler;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

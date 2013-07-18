.class Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const-string v0, "WtMultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFakeHandleDrawableOutListener mPendingDragViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1200(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1300(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragViewState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1400(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1300(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mFakeHandleAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1502(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingDragViewState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1200(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1600(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;->eventX:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1600(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;->eventY:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1600(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;->velocityX:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1600(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;)Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView$PendingEvent;->velocityY:F

    #calls: Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;->access$1700(Lcom/android/internal/policy/impl/keyguard/WtMultiWaveView;IIIFF)V

    return-void
.end method

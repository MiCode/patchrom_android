.class Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$100(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$200(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)F

    move-result v3

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$300(Lcom/android/internal/widget/multiwaveview/MultiWaveView;IFF)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiWaveView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiWaveView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    return-void
.end method

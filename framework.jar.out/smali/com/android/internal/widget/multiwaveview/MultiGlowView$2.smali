.class Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiGlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/MultiGlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->ping()V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$100(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$200(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)F

    move-result v3

    #calls: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$300(Lcom/android/internal/widget/multiwaveview/MultiGlowView;IFF)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$2;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #calls: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$400(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)V

    return-void
.end method

.class Lcom/android/internal/widget/multiwaveview/MultiGlowView$3;
.super Ljava/lang/Object;
.source "MultiGlowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$3;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$3;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$3;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    #getter for: Lcom/android/internal/widget/multiwaveview/MultiGlowView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->access$500(Lcom/android/internal/widget/multiwaveview/MultiGlowView;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->invalidateGlobalRegion(Lcom/android/internal/widget/multiwaveview/TargetDrawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/MultiGlowView$3;->this$0:Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->invalidate()V

    return-void
.end method

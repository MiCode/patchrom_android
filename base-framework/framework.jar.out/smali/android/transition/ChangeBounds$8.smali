.class Landroid/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/transition/ChangeBounds$8;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    iput p4, p0, Landroid/transition/ChangeBounds$8;->val$endLeft:I

    iput p5, p0, Landroid/transition/ChangeBounds$8;->val$endTop:I

    iput p6, p0, Landroid/transition/ChangeBounds$8;->val$endRight:I

    iput p7, p0, Landroid/transition/ChangeBounds$8;->val$endBottom:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$8;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/transition/ChangeBounds$8;->val$endLeft:I

    iget v2, p0, Landroid/transition/ChangeBounds$8;->val$endTop:I

    iget v3, p0, Landroid/transition/ChangeBounds$8;->val$endRight:I

    iget v4, p0, Landroid/transition/ChangeBounds$8;->val$endBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    :cond_0
    return-void
.end method

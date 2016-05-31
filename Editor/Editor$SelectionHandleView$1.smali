.class Landroid/widget/Editor$SelectionHandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SelectionHandleView;->fadeIn(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SelectionHandleView;

.field final synthetic val$locationY:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$SelectionHandleView;I)V
    .locals 0

    .prologue
    .line 4700
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    iput p2, p0, Landroid/widget/Editor$SelectionHandleView$1;->val$locationY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, -0x1

    .line 4703
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4704
    .local v0, "animatedValue":F
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView$1;->this$1:Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, v1, Landroid/widget/Editor$SelectionHandleView;->mContainer:Landroid/widget/Editor$AnimatePopupWindow;

    float-to-int v2, v0

    iget v3, p0, Landroid/widget/Editor$SelectionHandleView$1;->val$locationY:I

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/Editor$AnimatePopupWindow;->update(IIII)V

    .line 4705
    return-void
.end method

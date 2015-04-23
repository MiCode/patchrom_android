.class Lcom/android/internal/widget/LockPatternView$1;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$endAlpha:F

.field final synthetic val$endScale:F

.field final synthetic val$endTranslationY:F

.field final synthetic val$startAlpha:F

.field final synthetic val$startScale:F

.field final synthetic val$startTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    iput p5, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    iput p6, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    iput p7, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    iput p8, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startAlpha:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startTranslationY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endTranslationY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mDotSize:I
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$000(Lcom/android/internal/widget/LockPatternView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v3, v4, v0

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$startScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$1;->val$endScale:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$1;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

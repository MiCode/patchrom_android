.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$morphUpwards:Z

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetHeight:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    iput-boolean p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$morphUpwards:Z

    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startY:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$targetHeight:I

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v0, v3

    .local v0, "deltaHeight":I
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$morphUpwards:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startY:F

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->val$startHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v2, v3, v4

    .local v2, "y":F
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setY(F)V

    .end local v2    # "y":F
    :cond_0
    return-void
.end method

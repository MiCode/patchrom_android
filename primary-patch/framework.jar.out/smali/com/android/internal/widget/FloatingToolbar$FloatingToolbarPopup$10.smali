.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$left:F

.field final synthetic val$right:F

.field final synthetic val$startWidth:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetWidth:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$left:F

    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$right:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetWidth:I

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .local v0, "deltaWidth":I
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startWidth:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # invokes: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isRTL()Z
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$left:F

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$right:F

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    goto :goto_0
.end method

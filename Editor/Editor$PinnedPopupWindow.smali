.class abstract Landroid/widget/Editor$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 2536
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2537
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    .line 2539
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2540
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2541
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2543
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    .line 2545
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2547
    .local v0, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2549
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2550
    return-void
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected computeLocalPosition()V
    .locals 6

    .prologue
    .line 2575
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    .line 2576
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 2577
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 2578
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2579
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2581
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2582
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2583
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2584
    return-void
.end method

.method protected abstract createPopupWindow()V
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2613
    return-void
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2607
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    .line 2608
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2609
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2562
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2563
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 2568
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2553
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2555
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2557
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2558
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2559
    return-void
.end method

.method protected updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2587
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2588
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2590
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2593
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2594
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 2595
    .local v3, "width":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2596
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2598
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2599
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2604
    :goto_0
    return-void

    .line 2601
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2619
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2620
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2621
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2625
    :goto_0
    return-void

    .line 2623
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0
.end method

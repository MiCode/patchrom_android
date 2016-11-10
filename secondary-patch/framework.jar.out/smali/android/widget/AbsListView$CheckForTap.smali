.class final Landroid/widget/AbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v8, v5, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v9, v5, Landroid/widget/AbsListView;->mLayoutMode:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTmpPoint:[F
    invoke-static {v5}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)[F

    move-result-object v4

    .local v4, "point":[F
    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    aput v5, v4, v9

    iget v5, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    aput v5, v4, v8

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v5, v4, v9

    aget v6, v4, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->layoutChildren()V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .local v3, "longPressTimeout":I
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .local v2, "longClickable":Z
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_4

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget v7, p0, Landroid/widget/AbsListView$CheckForTap;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$CheckForLongPress;

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    # setter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5, v6}, Landroid/widget/AbsListView;->access$802(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    .restart local v4    # "point":[F
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v10, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1

    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForTap;->this$0:Landroid/widget/AbsListView;

    iput v10, v5, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method

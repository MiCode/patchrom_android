.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .local v6, "target":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .local v3, "itemCount":I
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "firstPosition":I
    add-int v4, v1, v0

    .local v4, "lastPosition":I
    if-lez p1, :cond_3

    if-lt v4, v3, :cond_2

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_0

    .end local v5    # "lastView":Landroid/view/View;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    if-gez p1, :cond_0

    if-gtz v1, :cond_2

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-ltz v8, :cond_2

    goto :goto_0
.end method

.method public scrollTargetBy(II)V
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    iget-object v3, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .local v3, "target":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "firstPosition":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, p2

    .local v2, "newTop":I
    invoke-virtual {v3, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

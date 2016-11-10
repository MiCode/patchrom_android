.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    sget-object v1, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    const v3, 0x10202f9

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x50

    goto :goto_1

    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, "widthSize":I
    iget-boolean v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    iput v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    :cond_1
    const/4 v3, 0x0

    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v5, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    .local v1, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int v2, v1, v5

    .local v2, "measuredWidthState":I
    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_2

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    const/4 v3, 0x1

    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredWidthState":I
    :cond_2
    if-eqz v3, :cond_3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_3
    return-void

    .end local v0    # "initialWidthMeasureSpec":I
    :cond_4
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    :cond_1
    return-void
.end method

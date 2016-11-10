.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarOverflowPanel"
.end annotation


# instance fields
.field private final mBackButton:Landroid/view/View;

.field private final mBackButtonContainer:Landroid/view/ViewGroup;

.field private final mCloseOverflow:Ljava/lang/Runnable;

.field private final mContentView:Landroid/widget/LinearLayout;

.field private final mListView:Landroid/widget/ListView;

.field private final mListViewItemWidthCalculator:Landroid/widget/TextView;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mOverflowWidth:I

.field private mSuggestedHeight:I

.field private final mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "closeOverflow"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mCloseOverflow:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090058

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->createOverflowListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->access$2800(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mCloseOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    .prologue
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    return v0
.end method

.method private createOverflowListView()Landroid/widget/ListView;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .local v2, "overflowListView":Landroid/widget/ListView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v5, 0x2

    .local v5, "viewTypeCount":I
    const/4 v4, 0x0

    .local v4, "stringLabelViewType":I
    const/4 v1, 0x1

    .local v1, "iconOnlyViewType":I
    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;

    invoke-direct {v3, p0, v0, v8, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;Landroid/content/Context;ILandroid/content/Context;)V

    .local v3, "overflowListViewAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method

.method private setListViewHeight()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;)I
    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar;->access$1500(Landroid/content/Context;)I

    move-result v1

    .local v1, "itemHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    mul-int v0, v6, v1

    .local v0, "height":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "maxHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "minHeight":I
    iget v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    rem-int/2addr v7, v1

    sub-int/2addr v6, v7

    sub-int v5, v6, v1

    .local v5, "suggestedListViewHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    if-gtz v5, :cond_0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    if-ge v5, v3, :cond_1

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setOverflowWidth()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListViewItemWidthCalculator:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mViewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    return-void
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->access$1500(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public measure()Landroid/util/Size;
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .local v0, "overflowListViewAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setListViewHeight()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOverflowWidth()V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowDirection(I)V
    .locals 3
    .param p1, "overflowDirection"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mContentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mBackButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void

    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSuggestedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mSuggestedHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setListViewHeight()V

    return-void
.end method

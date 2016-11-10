.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    move-object v0, p1

    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2400(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 14
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar;->access$2000(Landroid/content/Context;)I

    move-result v8

    sub-int v7, p2, v8

    .local v7, "toolbarWidth":I
    move v0, v7

    .local v0, "availableWidth":I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v6, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x1

    .local v1, "isFirstItem":Z
    :goto_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    invoke-static {v8, v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2100(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    .local v3, "menuItemButton":Landroid/view/View;
    if-eqz v1, :cond_0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "menuItemButtonWidth":I
    if-gt v4, v0, :cond_2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v0, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_0

    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x109005c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    new-instance v9, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    invoke-direct {v9, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "menuItemButton":Landroid/view/View;
    .end local v4    # "menuItemButtonWidth":I
    :cond_4
    return-object v6
.end method

.method public measure()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

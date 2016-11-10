.class Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p2, "x1"    # Landroid/widget/CalendarViewLegacyDelegate$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v0, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I
    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "dist":I
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I

    goto :goto_0

    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "dist":I
    :cond_2
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1
.end method

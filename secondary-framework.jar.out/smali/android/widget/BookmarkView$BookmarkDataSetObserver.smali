.class final Landroid/widget/BookmarkView$BookmarkDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "BookmarkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BookmarkDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BookmarkView;


# direct methods
.method constructor <init>(Landroid/widget/BookmarkView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$100(Landroid/widget/BookmarkView;)Landroid/widget/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BookmarkAdapter;->clearBitmapCache()V

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    iget-object v1, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Landroid/widget/BookmarkView;->access$300(Landroid/widget/BookmarkView;)I

    move-result v1

    #setter for: Landroid/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v0, v1}, Landroid/widget/BookmarkView;->access$202(Landroid/widget/BookmarkView;I)I

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    iget-object v1, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;
    invoke-static {v1}, Landroid/widget/BookmarkView;->access$100(Landroid/widget/BookmarkView;)Landroid/widget/BookmarkAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BookmarkAdapter;->getCount()I

    move-result v1

    #setter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v0, v1}, Landroid/widget/BookmarkView;->access$302(Landroid/widget/BookmarkView;I)I

    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bookmark data changes: mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v2}, Landroid/widget/BookmarkView;->access$300(Landroid/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOldItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v2}, Landroid/widget/BookmarkView;->access$200(Landroid/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurrentSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I
    invoke-static {v2}, Landroid/widget/BookmarkView;->access$400(Landroid/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mCurrentSelectedPosition:I
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$400(Landroid/widget/BookmarkView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Landroid/widget/BookmarkView;->access$300(Landroid/widget/BookmarkView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$500(Landroid/widget/BookmarkView;)Landroid/widget/BounceCoverFlow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Landroid/widget/BookmarkView;->access$300(Landroid/widget/BookmarkView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setNextSelectedPositionInt(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkView;->refreshInfo(Z)V

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #calls: Landroid/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$000(Landroid/widget/BookmarkView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bookmark data invalidate:mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mItemCount:I
    invoke-static {v2}, Landroid/widget/BookmarkView;->access$300(Landroid/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOldItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v2}, Landroid/widget/BookmarkView;->access$200(Landroid/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #getter for: Landroid/widget/BookmarkView;->mBookmarkAdapter:Landroid/widget/BookmarkAdapter;
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$100(Landroid/widget/BookmarkView;)Landroid/widget/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BookmarkAdapter;->clearBitmapCache()V

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/BookmarkView;->refreshInfo(Z)V

    iget-object v0, p0, Landroid/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Landroid/widget/BookmarkView;

    #calls: Landroid/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Landroid/widget/BookmarkView;->access$000(Landroid/widget/BookmarkView;)V

    return-void
.end method

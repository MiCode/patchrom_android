.class final Landroid/widget/BounceGallery$CheckForTap;
.super Ljava/lang/Object;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap: mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDataChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v5, v5, Landroid/widget/BounceGallery;->mDataChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v3}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap: child = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v3, v3, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v3, v6}, Landroid/widget/BounceGallery;->setPressed(Z)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .local v2, longPressTimeout:I
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v3}, Landroid/widget/BounceGallery;->isLongClickable()Z

    move-result v1

    .local v1, longClickable:Z
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForTap longClickable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mFirstPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget v5, v5, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDownTouchPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v5}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;
    invoke-static {v3}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    new-instance v4, Landroid/widget/BounceGallery$CheckForLongPress;

    iget-object v5, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/BounceGallery$CheckForLongPress;-><init>(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$1;)V

    #setter for: Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;
    invoke-static {v3, v4}, Landroid/widget/BounceGallery;->access$502(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$CheckForLongPress;)Landroid/widget/BounceGallery$CheckForLongPress;

    :cond_0
    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;
    invoke-static {v3}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BounceGallery$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v3, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    iget-object v4, p0, Landroid/widget/BounceGallery$CheckForTap;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;
    invoke-static {v4}, Landroid/widget/BounceGallery;->access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/BounceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0           #child:Landroid/view/View;
    .end local v1           #longClickable:Z
    .end local v2           #longPressTimeout:I
    :cond_1
    return-void
.end method

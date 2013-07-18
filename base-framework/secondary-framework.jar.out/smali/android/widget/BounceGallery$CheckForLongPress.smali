.class Landroid/widget/BounceGallery$CheckForLongPress;
.super Landroid/widget/BounceGallery$WindowRunnnable;
.source "BounceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method private constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceGallery$WindowRunnnable;-><init>(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/BounceGallery$CheckForLongPress;-><init>(Landroid/widget/BounceGallery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v6}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v5

    .local v5, motionPosition:I
    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget-object v7, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget v7, v7, Landroid/widget/BounceGallery;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/BounceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    const-string v6, "BounceGallery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CheckForLongPress mTouchMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v8}, Landroid/widget/BounceGallery;->access$300(Landroid/widget/BounceGallery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mFirstPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget v8, v8, Landroid/widget/BounceGallery;->mFirstPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mDataChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v8, v8, Landroid/widget/BounceGallery;->mDataChanged:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mDownTouchPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v8}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v6}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v4

    .local v4, longPressPosition:I
    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget-object v6, v6, Landroid/widget/BounceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v7, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #getter for: Landroid/widget/BounceGallery;->mDownTouchPosition:I
    invoke-static {v7}, Landroid/widget/BounceGallery;->access$400(Landroid/widget/BounceGallery;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    .local v2, longPressId:J
    const/4 v1, 0x0

    .local v1, handled:Z
    invoke-virtual {p0}, Landroid/widget/BounceGallery$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    iget-boolean v6, v6, Landroid/widget/BounceGallery;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    #calls: Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Landroid/widget/BounceGallery;->access$1000(Landroid/widget/BounceGallery;Landroid/view/View;IJ)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    const/4 v7, -0x1

    #setter for: Landroid/widget/BounceGallery;->mTouchMode:I
    invoke-static {v6, v7}, Landroid/widget/BounceGallery;->access$302(Landroid/widget/BounceGallery;I)I

    iget-object v6, p0, Landroid/widget/BounceGallery$CheckForLongPress;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v6, v9}, Landroid/widget/BounceGallery;->setPressed(Z)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    return-void
.end method

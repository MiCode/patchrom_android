.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v2, v2, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mIsAttached:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->beginDrag()V

    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v2, v2, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .local v1, viewHeight:I
    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v2, v2, Landroid/widget/FastScroller;->mInitialTouchY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v3, v3, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0xa

    .local v0, newThumbY:I
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iput v0, v2, Landroid/widget/FastScroller;->mThumbY:I

    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v3, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v3, v3, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v4, v4, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->scrollTo(F)V

    .end local v0           #newThumbY:I
    .end local v1           #viewHeight:I
    :cond_1
    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/widget/FastScroller;->mPendingDrag:Z

    return-void

    .restart local v0       #newThumbY:I
    .restart local v1       #viewHeight:I
    :cond_2
    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v2, v2, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v2, v2, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

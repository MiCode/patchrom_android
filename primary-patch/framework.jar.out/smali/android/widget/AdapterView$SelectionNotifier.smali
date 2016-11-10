.class Landroid/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterView;


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AdapterView;
    .param p2, "x1"    # Landroid/widget/AdapterView$1;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/widget/AdapterView$SelectionNotifier;, "Landroid/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    invoke-static {v0, v1}, Landroid/widget/AdapterView;->access$202(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    # setter for: Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    invoke-static {v0, p0}, Landroid/widget/AdapterView;->access$202(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView$SelectionNotifier;->this$0:Landroid/widget/AdapterView;

    # invokes: Landroid/widget/AdapterView;->dispatchOnItemSelected()V
    invoke-static {v0}, Landroid/widget/AdapterView;->access$300(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

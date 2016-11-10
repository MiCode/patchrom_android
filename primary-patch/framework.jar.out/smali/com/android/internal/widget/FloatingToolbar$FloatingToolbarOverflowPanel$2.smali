.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$2;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

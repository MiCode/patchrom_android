.class Landroid/widget/Editor$ActionPopupWindow$4;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;

.field final synthetic val$maximum:I

.field final synthetic val$minimum:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;II)V
    .locals 0

    .prologue
    .line 3655
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$4;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iput p2, p0, Landroid/widget/Editor$ActionPopupWindow$4;->val$maximum:I

    iput p3, p0, Landroid/widget/Editor$ActionPopupWindow$4;->val$minimum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 3659
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3660
    .local v0, "paste":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow$4;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v1

    .line 3661
    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/Editor$ActionPopupWindow$4;->val$maximum:I

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3662
    check-cast v1, Landroid/text/Editable;

    .end local v1    # "text":Ljava/lang/CharSequence;
    iget v2, p0, Landroid/widget/Editor$ActionPopupWindow$4;->val$minimum:I

    iget v3, p0, Landroid/widget/Editor$ActionPopupWindow$4;->val$maximum:I

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3663
    return-void
.end method

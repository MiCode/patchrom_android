.class Landroid/widget/Editor$ActionPinnedPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$ActionPinnedPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V
    .locals 0

    .prologue
    .line 2287
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    # invokes: Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z
    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$1500(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2293
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    .line 2294
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;
    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$1600(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_1

    .line 2295
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPinnedPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;
    invoke-static {v0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->access$1600(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    # invokes: Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$1700(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2298
    :cond_1
    return-void
.end method

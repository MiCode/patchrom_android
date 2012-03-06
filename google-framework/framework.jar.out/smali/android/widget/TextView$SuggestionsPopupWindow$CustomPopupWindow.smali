.class Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPopupWindow"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "defStyle"

    .prologue
    .line 9567
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    .line 9568
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9569
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 9573
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9575
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 9578
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static {v1}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 9580
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    #getter for: Landroid/widget/TextView$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z
    invoke-static {v1}, Landroid/widget/TextView$SuggestionsPopupWindow;->access$3000(Landroid/widget/TextView$SuggestionsPopupWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 9581
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9582
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    .line 9584
    :cond_0
    return-void
.end method

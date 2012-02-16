.class Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionInfo"
.end annotation


# instance fields
.field highlightSpan:Landroid/text/style/TextAppearanceSpan;

.field suggestionEnd:I

.field suggestionIndex:I

.field suggestionSpan:Landroid/text/style/SuggestionSpan;

.field suggestionStart:I

.field text:Landroid/text/SpannableStringBuilder;

.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V
    .locals 3
    .parameter

    .prologue
    .line 9625
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9629
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    .line 9630
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030118

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9625
    invoke-direct {p0, p1}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V

    return-void
.end method

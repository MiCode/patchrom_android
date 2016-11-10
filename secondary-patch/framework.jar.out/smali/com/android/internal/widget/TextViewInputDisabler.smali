.class public Lcom/android/internal/widget/TextViewInputDisabler;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"


# instance fields
.field private mDefaultFilters:[Landroid/text/InputFilter;

.field private mNoInputFilters:[Landroid/text/InputFilter;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/TextViewInputDisabler$1;-><init>(Lcom/android/internal/widget/TextViewInputDisabler;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    return-void
.end method


# virtual methods
.method public setInputEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    goto :goto_0
.end method

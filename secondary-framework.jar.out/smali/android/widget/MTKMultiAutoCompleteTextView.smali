.class public Landroid/widget/MTKMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "MTKMultiAutoCompleteTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public mtkGetMaxLines()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getMaxLines()I

    move-result v0

    return v0
.end method

.method public final mtkSetShowSoftInputOnFocus(Z)V
    .locals 0
    .parameter "show"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setShowSoftInputOnFocus(Z)V

    return-void
.end method

.class public Lcom/android/internal/widget/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "AccountItemView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Landroid/widget/TextView;

.field private mAccountNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflator":Landroid/view/LayoutInflater;
    const v2, 0x10900db

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/internal/widget/AccountItemView;->initViewItem(Landroid/view/View;)V

    return-void
.end method

.method private initViewItem(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setAccountIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V
    .locals 2
    .param p1, "element"    # Lcom/android/internal/widget/AccountViewAdapter$AccountElements;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(I)V

    goto :goto_0
.end method

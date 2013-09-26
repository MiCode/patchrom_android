.class public Lcom/android/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "contentDesc"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "layoutResId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "view"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "icon"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "tag"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.class public Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenNewEventView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_COUNT:I = 0x63

.field private static final MAX_COUNT_STRING:Ljava/lang/String; = "99+"

.field private static final TAG:Ljava/lang/String; = "NewEventView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

.field private mNumberText:Ljava/lang/String;

.field private mResourceId:I

.field private mTopParentView:Landroid/view/ViewGroup;

.field private mUnReadImageView:Landroid/widget/ImageView;

.field private mUnReadTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setDrawingCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getFakeCenterX()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFakeCenterY()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getNewEventBitmapHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewEventBitmapWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewEventImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mResourceId:I

    return v0
.end method

.method public init(I)V
    .locals 4
    .parameter "drawableId"

    .prologue
    const/high16 v3, 0x3f00

    const-string v1, "NewEventView"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mResourceId:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setPivotX(F)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x20e0025

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadTextView:Landroid/widget/TextView;

    const v0, 0x20e0024

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V
    .locals 3
    .parameter "uri"
    .parameter "unReadObserver"

    .prologue
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final setNumber(I)V
    .locals 3
    .parameter "count"

    .prologue
    const-string v0, "NewEventView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNumber count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const-string v0, "99+"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mUnReadTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mNumberText:Ljava/lang/String;

    goto :goto_1
.end method

.method public setTopParent(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "parentView"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mTopParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mTopParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public unRegisterNewEventObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateQueryBaseTime(J)V
    .locals 1
    .parameter "newBaseTime"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->mEventChangeObserver:Lcom/android/internal/policy/impl/keyguard/UnReadObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->updateQueryBaseTime(J)V

    return-void
.end method

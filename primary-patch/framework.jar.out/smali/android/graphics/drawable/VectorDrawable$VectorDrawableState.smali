.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedBitmap:Landroid/graphics/Bitmap;

.field mCachedRootAlpha:I

.field mCachedThemeAttrs:[I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mTempPaint:Landroid/graphics/Paint;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    # getter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$300(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    # getter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$300(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    # setter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$302(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    # getter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;
    invoke-static {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$400(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    # getter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;
    invoke-static {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$400(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    # setter for: Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->access$402(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReuseBitmap(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReuseCache()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedRootAlpha:I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createCachedBitmapIfNeeded(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseBitmap(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    :cond_1
    return-void
.end method

.method public drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;
    .param p3, "originalBounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    .local v0, "p":Landroid/graphics/Paint;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->hasTranslucentRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTempPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public hasTranslucentRoot()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable$1;)V

    return-object v0
.end method

.method public updateCacheStates()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedRootAlpha:I

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    return-void
.end method

.method public updateCachedBitmap(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

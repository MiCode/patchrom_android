.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$1;,
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "scaleWidth"    # F
    .param p4, "scaleHeight"    # F

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ScaleDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;IF)F
    .locals 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0, p1, v4, v4, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    .end local p2    # "defaultValue":F
    :cond_1
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "f":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float p2, v3, v4

    goto :goto_0
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <scale> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .local v2, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, -0x2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .local v1, "opacity":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const/4 v1, -0x3

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v1, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ScaleDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    const v13, 0x461c4000    # 10000.0f

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .local v4, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v10, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .local v10, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v9

    .local v9, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .local v1, "w":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    cmpl-float v3, v3, v12

    if-lez v3, :cond_0

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .local v8, "iw":I
    :goto_0
    sub-int v3, v1, v8

    rsub-int v11, v9, 0x2710

    mul-int/2addr v3, v11

    int-to-float v3, v3

    iget-object v11, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v11, v11, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v3, v11

    div-float/2addr v3, v13

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .end local v8    # "iw":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .local v2, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v3, v3, v12

    if-lez v3, :cond_1

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .local v7, "ih":I
    :goto_1
    sub-int v0, v2, v7

    rsub-int v3, v9, 0x2710

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v13

    float-to-int v0, v0

    sub-int/2addr v2, v0

    .end local v7    # "ih":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    move-result v5

    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v0, v3, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void

    .end local v2    # "h":I
    .end local v5    # "layoutDirection":I
    :cond_3
    move v8, v0

    goto :goto_0

    .restart local v2    # "h":I
    :cond_4
    move v7, v0

    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    const/4 v0, 0x1

    return v0
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .local v1, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    invoke-static {p1, v2, v3}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    const/4 v2, 0x2

    iget v3, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    invoke-static {p1, v2, v3}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    const/4 v2, 0x3

    iget v3, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    const/4 v2, 0x4

    iget-boolean v3, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

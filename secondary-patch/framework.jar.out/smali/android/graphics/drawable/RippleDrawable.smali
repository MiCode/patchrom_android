.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$1;,
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/RippleForeground;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_1
    if-eqz p3, :cond_2

    const v7, 0x102002e

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/RippleDrawable$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelExitingRipples()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-static {v2, v4, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private clearHotspots()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .local v1, "active":Landroid/graphics/drawable/RippleForeground;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .local v5, "count":I
    if-nez v1, :cond_1

    if-gtz v5, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    .local v12, "x":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v13

    .local v13, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v15, v3, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v15, v12

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v13

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v15}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v14, v14, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v15

    const/high16 v16, -0x1000000

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    shl-int/lit8 v7, v14, 0x18

    .local v7, "halfAlpha":I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v10

    .local v10, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v14, :cond_4

    const/high16 v14, -0x1000000

    or-int v6, v4, v14

    .local v6, "fullAlphaColor":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v6}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .end local v6    # "fullAlphaColor":I
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_3
    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .local v11, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_5

    aget-object v14, v11, v9

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "i":I
    .end local v11    # "ripples":[Landroid/graphics/drawable/RippleForeground;
    :cond_4
    const v14, 0xffffff

    and-int/2addr v14, v4

    or-int v8, v14, v7

    .local v8, "halfAlphaColor":I
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .end local v8    # "halfAlphaColor":I
    :cond_5
    if-eqz v1, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_6
    neg-float v14, v12

    neg-float v15, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getMaskType()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v5, :cond_1

    iget v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v5, :cond_1

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private isBounded()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .local v2, "ripples":[Landroid/graphics/drawable/RippleForeground;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    :cond_2
    return-void
.end method

.method private pruneRipples()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "remaining":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .local v4, "ripples":[Landroid/graphics/drawable/RippleForeground;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "remaining":I
    .local v3, "remaining":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    aget-object v5, v4, v1

    aput-object v5, v4, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "remaining":I
    .restart local v3    # "remaining":I
    goto :goto_0

    :cond_0
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_1

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    return-void

    :cond_2
    move v2, v3

    .end local v3    # "remaining":I
    .restart local v2    # "remaining":I
    goto :goto_1
.end method

.method private setBackgroundActive(ZZ)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "focused"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    :cond_0
    return-void
.end method

.method private tryBackgroundEnter(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(FF)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_2

    iput-boolean v6, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .local v3, "x":F
    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .local v4, "y":F
    :goto_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v5

    .local v5, "isBounded":Z
    new-instance v0, Landroid/graphics/drawable/RippleForeground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "isBounded":Z
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FF)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/RippleForeground;->enter(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .restart local v3    # "x":F
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .restart local v4    # "y":F
    goto :goto_1
.end method

.method private tryRippleExit()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    :cond_1
    return-void
.end method

.method private updateLocalState()V
    .locals 1

    .prologue
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v2

    .local v2, "maskType":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iput-boolean v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_3
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_9

    :cond_5
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_a

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    :goto_2
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v4, :cond_7

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_7
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .local v1, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .local v3, "top":I
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_3
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .end local v1    # "left":I
    .end local v3    # "top":I
    :cond_9
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_a
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    goto :goto_2

    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_b
    if-ne v2, v9, :cond_8

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .local v1, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v4, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    return-void
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
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

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

    const-string v2, ": <ripple> requires a valid color attribute"

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
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .local v2, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

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

.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .local v1, "saveCount":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .local v6, "drawingBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .local v5, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    .local v3, "cX":I
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    .local v4, "cY":I
    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .local v8, "rippleBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    .local v1, "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .end local v0    # "N":I
    .end local v1    # "activeRipples":[Landroid/graphics/drawable/RippleForeground;
    .end local v2    # "background":Landroid/graphics/drawable/RippleBackground;
    .end local v3    # "cX":I
    .end local v4    # "cY":I
    .end local v5    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v6    # "drawingBounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "rippleBounds":Landroid/graphics/Rect;
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_1

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
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
    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method invalidateSelf(Z)V
    .locals 1
    .param p1, "invalidateMask"    # Z

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_0
    return-void
.end method

.method public isProjected()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v4, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .local v2, "radius":I
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "drawableBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .local v1, "hotspotBounds":Landroid/graphics/Rect;
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v2, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v1

    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "enabled":Z
    const/4 v6, 0x0

    .local v6, "pressed":Z
    const/4 v3, 0x0

    .local v3, "focused":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v0, v4

    .local v7, "state":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const v8, 0x101009c

    if-ne v7, v8, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const v8, 0x10100a7

    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .end local v7    # "state":I
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move v8, v9

    :goto_2
    invoke-direct {p0, v8}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    move v10, v9

    :cond_5
    invoke-direct {p0, v10, v3}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    return v1

    :cond_6
    move v8, v10

    goto :goto_2
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x102002e

    if-ne p1, v1, :cond_0

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .local v0, "changed":Z
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method

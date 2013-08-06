.class public Lcom/mediatek/webkit/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/mediatek/webkit/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/webkit/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/webkit/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    iput v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    iput v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const v0, -0xe3e3e4

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSliderTrackerColor:I

    const v0, -0x919192

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    iput-boolean v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    iput v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mLastTouchedPanel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .parameter "alpha"

    .prologue
    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .local v2, width:F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, p:Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/16 v3, 0x169

    new-array v1, v3, [I

    .local v1, hue:[I
    const/4 v0, 0x0

    .local v0, count:I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .local v0, offset:F
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .parameter "mode"
    .parameter "size"

    .prologue
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    iget-boolean v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPattern:Lcom/mediatek/webkit/AlphaPatternDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .local v11, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPattern:Lcom/mediatek/webkit/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/mediatek/webkit/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .local v8, hsv:[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .local v5, color:I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .local v6, acolor:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x4080

    iget v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    const/high16 v0, 0x4080

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v12, v0, v1

    .local v12, rectWidth:F
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lcom/mediatek/webkit/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .local v9, p:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .local v10, r:Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v0, 0x4000

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v4, 0x3f80

    iget-object v10, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v0, 0x4080

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .local v11, rectHeight:F
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lcom/mediatek/webkit/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .local v8, p:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .local v9, r:Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    iget-object v10, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .local v10, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .local v6, rgb:I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .local v8, mShader:Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lcom/mediatek/webkit/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .local v9, p:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    const/high16 v1, 0x4348

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .local v0, height:I
    iget-boolean v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .local v0, width:I
    iget-boolean v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .parameter "hue"

    .prologue
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .local v0, height:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, p:Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->initPaintTools()V

    invoke-virtual {p0, v2}, Lcom/mediatek/webkit/ColorPickerView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/mediatek/webkit/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    .local v3, update:Z
    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .local v1, startX:I
    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .local v2, startY:I
    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iput v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/webkit/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/mediatek/webkit/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .local v0, result:[F
    aget v4, v0, v4

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aget v4, v0, v8

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #result:[F
    :cond_3
    iget-object v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mLastTouchedPanel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/mediatek/webkit/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .parameter "x"

    .prologue
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .local v0, rect:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .local v1, width:I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .parameter "y"

    .prologue
    const/high16 v3, 0x43b4

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .local v0, height:F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .local v1, rect:Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .local v2, result:[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .local v3, width:F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .local v0, height:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    const/4 p2, 0x0

    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    return-object v2

    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .parameter "sat"
    .parameter "val"

    .prologue
    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .local v0, height:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .local v3, width:F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, p:Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f80

    iget-boolean v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    new-instance v5, Lcom/mediatek/webkit/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/mediatek/webkit/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPattern:Lcom/mediatek/webkit/AlphaPatternDrawable;

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaPattern:Lcom/mediatek/webkit/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/mediatek/webkit/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void

    .end local v0           #bottom:F
    .end local v3           #right:F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    iget-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .local v1, dRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x4000

    sub-float v3, v6, v7

    .local v3, panelSide:F
    iget-boolean v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .local v2, left:F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .local v5, top:F
    add-float v0, v5, v3

    .local v0, bottom:F
    add-float v4, v2, v3

    .local v4, right:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .local v3, width:I
    const/4 v0, 0x0

    .local v0, height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .local v2, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, widthAllowed:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, heightAllowed:I
    invoke-direct {p0, v5, v4}, Lcom/mediatek/webkit/ColorPickerView;->chooseWidth(II)I

    move-result v4

    invoke-direct {p0, v2, v1}, Lcom/mediatek/webkit/ColorPickerView;->chooseHeight(II)I

    move-result v1

    iget-boolean v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_2

    int-to-float v6, v4

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "landscape"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v0, v1

    int-to-float v6, v0

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/webkit/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    int-to-float v6, v1

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    if-le v3, v4, :cond_3

    move v3, v4

    int-to-float v6, v4

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/mediatek/webkit/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->setUpSatValRect()V

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->setUpHueRect()V

    invoke-direct {p0}, Lcom/mediatek/webkit/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    :goto_1
    return v1

    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/mediatek/webkit/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x4248

    const/high16 v12, 0x4120

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, y:F
    const/4 v3, 0x0

    .local v3, update:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    iget-object v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    :goto_1
    return v7

    :pswitch_0
    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .local v2, sat:F
    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .local v4, val:F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    const/4 v2, 0x0

    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    const/4 v4, 0x0

    :cond_3
    :goto_3
    iput v2, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    iput v4, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    const/high16 v2, 0x3f80

    goto :goto_2

    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    const/high16 v4, 0x3f80

    goto :goto_3

    .end local v2           #sat:F
    .end local v4           #val:F
    :pswitch_1
    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .local v1, hue:F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    const/4 v1, 0x0

    :cond_6
    :goto_4
    iput v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/high16 v8, 0x43b4

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    const/high16 v1, 0x43b4

    goto :goto_4

    .end local v1           #hue:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .local v0, alpha:I
    if-gez v0, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_5
    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    const/16 v0, 0xff

    goto :goto_5

    .end local v0           #alpha:I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 2
    .parameter "res"

    .prologue
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/webkit/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    iput-object p1, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/mediatek/webkit/ColorPickerView;->mShowAlphaPanel:Z

    iput-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/mediatek/webkit/ColorPickerView;->mBorderColor:I

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/webkit/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .parameter "color"
    .parameter "callback"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, alpha:I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .local v4, red:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, blue:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, green:I
    new-array v3, v7, [F

    .local v3, hsv:[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iput v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    aget v5, v3, v9

    iput v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aget v5, v3, v10

    iput v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aget v5, v3, v11

    iput v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lcom/mediatek/webkit/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lcom/mediatek/webkit/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/mediatek/webkit/ColorPickerView;->mListener:Lcom/mediatek/webkit/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSliderTrackerColor:I

    iget-object v0, p0, Lcom/mediatek/webkit/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/webkit/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/mediatek/webkit/ColorPickerView;->invalidate()V

    return-void
.end method

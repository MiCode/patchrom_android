.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Ljava/lang/StringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    const/high16 v9, 0x3f80

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    iput v11, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .local v8, theme:Landroid/content/res/Resources$Theme;
    sget-object v9, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v8, p2, v9, p3, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const-string v6, ""

    .local v6, text:Ljava/lang/CharSequence;
    const/16 v7, 0xf

    .local v7, textSize:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, attr:I
    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :sswitch_1
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v9, v9

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    :sswitch_2
    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    .end local v1           #attr:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .local v3, m:Landroid/util/DisplayMetrics;
    const v9, 0x1050079

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    const v9, 0x105007c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    const v9, 0x105007a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const v9, 0x105007b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v9, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v9, v7

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_0
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
    .end sparse-switch
.end method

.method private computeMeasurements(I)Z
    .locals 9
    .parameter "maxWidth"

    .prologue
    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    :goto_0
    return v7

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    .local v8, paddingX:I
    sub-int/2addr p1, v8

    if-gtz p1, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .local v4, layout:Landroid/text/StaticLayout;
    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .local v8, saveCount:I
    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .local v3, innerPaddingX:I
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    iget v11, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .local v5, lineCount:I
    iget-object v9, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .local v9, textPaint:Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .local v6, paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .local v0, bounds:Landroid/graphics/RectF;
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-lez v10, :cond_1

    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .local v1, cornerRadius:F
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v10

    int-to-float v7, v10

    .local v7, previousBottom:F
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v10

    int-to-float v11, v3

    sub-float/2addr v10, v11

    iput v10, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v10

    int-to-float v11, v3

    add-float/2addr v10, v11

    iput v10, v0, Landroid/graphics/RectF;->right:F

    iput v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #cornerRadius:F
    .end local v2           #i:I
    .end local v7           #previousBottom:F
    :cond_1
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v5, :cond_3

    invoke-virtual {v4, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    :cond_2
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v11, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v12, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v13, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v5, :cond_4

    invoke-virtual {v4, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    sub-int v0, p4, p2

    .local v0, width:I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x100

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, widthSpec:I
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .local v1, layout:Landroid/text/StaticLayout;
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .local v2, paddingX:I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    add-int v3, v5, v2

    .local v3, width:I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int v0, v5, v6

    .local v0, height:I
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .end local v0           #height:I
    .end local v1           #layout:Landroid/text/StaticLayout;
    .end local v2           #paddingX:I
    .end local v3           #width:I
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter "textAlignment"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .parameter "edgeType"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 5
    .parameter "styleId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .local v2, style:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, typeface:Landroid/graphics/Typeface;
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    return-void

    .end local v2           #style:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3           #typeface:Landroid/graphics/Typeface;
    :cond_0
    sget-object v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v2, v4, p1

    .restart local v2       #style:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0
.end method

.method public setText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e00

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "typeface"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

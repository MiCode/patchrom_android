.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    sget-object v7, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v5, ""

    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0xf

    .local v6, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, "attr":I
    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :sswitch_1
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v7, v7

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    :sswitch_2
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_1

    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050083

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    const v7, 0x1050086

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    const v7, 0x1050084

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const v7, 0x1050085

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

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
    .param p1, "maxWidth"    # I

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

    .local v8, "paddingX":I
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
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .local v11, "layout":Landroid/text/StaticLayout;
    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .local v17, "saveCount":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .local v10, "innerPaddingX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    .local v12, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .local v18, "textPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .local v4, "bounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v19

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .local v7, "cornerRadius":F
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    .local v15, "previousBottom":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v12, :cond_1

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v19

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v19

    int-to-float v0, v10

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->right:F

    iput v15, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v7, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v7    # "cornerRadius":F
    .end local v9    # "i":I
    .end local v15    # "previousBottom":F
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .local v8, "edgeType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    sget-object v19, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v19, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v12, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "i":I
    :cond_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v12, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v9    # "i":I
    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v8, v0, :cond_5

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    :cond_5
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v8, v0, :cond_6

    const/16 v16, 0x1

    .local v16, "raised":Z
    :goto_5
    if-eqz v16, :cond_7

    const/4 v6, -0x1

    .local v6, "colorUp":I
    :goto_6
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .local v5, "colorDown":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v13, v19, v20

    .local v13, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    neg-float v0, v13

    move/from16 v20, v0

    neg-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    if-ge v9, v12, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v9    # "i":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .restart local v16    # "raised":Z
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    goto :goto_6

    .restart local v6    # "colorUp":I
    :cond_8
    const/4 v5, -0x1

    goto :goto_7

    .restart local v5    # "colorDown":I
    .restart local v9    # "i":I
    .restart local v13    # "offset":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13, v13, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_3

    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    sub-int v0, p4, p2

    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x1000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, "widthSpec":I
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .local v1, "layout":Landroid/text/StaticLayout;
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    add-int v3, v5, v2

    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int v0, v5, v6

    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .end local v0    # "height":I
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

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
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 6
    .param p1, "styleId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v3

    .local v3, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_1
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_3
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_4
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .local v4, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    return-void

    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v3, v5, p1

    .restart local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0

    .restart local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_1
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1

    :cond_2
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2

    :cond_3
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_4
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

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
    .param p1, "typeface"    # Landroid/graphics/Typeface;

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

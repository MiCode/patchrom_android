.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    const/high16 v0, -0x4d000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    const/high16 v0, 0x1a000000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "color"    # I
    .param p5, "pct"    # F

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v1, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .local v0, "radiusScale":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # I
    .param p3, "cy"    # I

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v24

    .local v24, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v17

    .local v17, "height":I
    div-int/lit8 v9, v24, 0x2

    .local v9, "cx":I
    div-int/lit8 v10, v17, 0x2

    .local v10, "cy":I
    const/4 v11, 0x0

    .local v11, "drawTriggerWhileFinishing":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    .local v23, "restoreCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v20

    .local v20, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v2, v20, v2

    const-wide/16 v4, 0x7d0

    rem-long v12, v2, v4

    .local v12, "elapsed":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v2, v20, v2

    const-wide/16 v4, 0x7d0

    div-long v18, v2, v4

    .local v18, "iterations":J
    long-to-float v2, v12

    const/high16 v3, 0x41a00000    # 20.0f

    div-float v22, v2, v3

    .local v22, "rawProgress":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v2, v20, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .end local v12    # "elapsed":J
    .end local v18    # "iterations":J
    .end local v20    # "now":J
    .end local v22    # "rawProgress":F
    :goto_0
    return-void

    .restart local v12    # "elapsed":J
    .restart local v18    # "iterations":J
    .restart local v20    # "now":J
    .restart local v22    # "rawProgress":F
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v2, v20, v2

    const-wide/16 v4, 0x3e8

    rem-long v14, v2, v4

    .local v14, "finishElapsed":J
    long-to-float v2, v14

    const/high16 v3, 0x41200000    # 10.0f

    div-float v16, v2, v3

    .local v16, "finishProgress":F
    const/high16 v2, 0x42c80000    # 100.0f

    div-float v7, v16, v2

    .local v7, "pct":F
    div-int/lit8 v2, v24, 0x2

    int-to-float v2, v2

    sget-object v3, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v8, v2, v3

    .local v8, "clearRadius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    int-to-float v3, v9

    sub-float/2addr v3, v8

    const/4 v4, 0x0

    int-to-float v5, v9

    add-float/2addr v5, v8

    move/from16 v0, v17

    int-to-float v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v11, 0x1

    .end local v7    # "pct":F
    .end local v8    # "clearRadius":F
    .end local v14    # "finishElapsed":J
    .end local v16    # "finishProgress":F
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_3

    const/high16 v2, 0x41c80000    # 25.0f

    add-float v2, v2, v22

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .restart local v7    # "pct":F
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .end local v7    # "pct":F
    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_4

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v22

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .restart local v7    # "pct":F
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .end local v7    # "pct":F
    :cond_4
    const/high16 v2, 0x41c80000    # 25.0f

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_5

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_5

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, v22, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .restart local v7    # "pct":F
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .end local v7    # "pct":F
    :cond_5
    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_6

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_6

    const/high16 v2, 0x42480000    # 50.0f

    sub-float v2, v22, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .restart local v7    # "pct":F
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .end local v7    # "pct":F
    :cond_6
    const/high16 v2, 0x42960000    # 75.0f

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_7

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v22, v2

    if-gtz v2, :cond_7

    const/high16 v2, 0x42960000    # 75.0f

    sub-float v2, v22, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .restart local v7    # "pct":F
    int-to-float v4, v9

    int-to-float v5, v10

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .end local v7    # "pct":F
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-eqz v11, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .end local v12    # "elapsed":J
    .end local v18    # "iterations":J
    .end local v20    # "now":J
    .end local v22    # "rawProgress":F
    :cond_9
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .restart local v12    # "elapsed":J
    .restart local v18    # "iterations":J
    .restart local v20    # "now":J
    .restart local v22    # "rawProgress":F
    :cond_a
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_b

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v2, v22, v2

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_b
    const/high16 v2, 0x41c80000    # 25.0f

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_c

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v22, v2

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_c
    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_d

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v22, v2

    if-gez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .end local v12    # "elapsed":J
    .end local v18    # "iterations":J
    .end local v20    # "now":J
    .end local v22    # "rawProgress":F
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method isRunning()Z
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I

    .prologue
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 5
    .param p1, "triggerPercentage"    # F

    .prologue
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method start()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

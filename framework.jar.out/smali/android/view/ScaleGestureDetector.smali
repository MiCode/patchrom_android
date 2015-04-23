.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v2, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    const v2, 0x1050012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_1
    return-void

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "targetSdkVersion":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Landroid/view/ScaleGestureDetector;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .local v6, "count":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    const-wide/16 v24, 0x80

    cmp-long v21, v22, v24

    if-ltz v21, :cond_7

    const/4 v4, 0x1

    .local v4, "accept":Z
    :goto_0
    const/16 v20, 0x0

    .local v20, "total":F
    const/16 v17, 0x0

    .local v17, "sampleCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_8

    const/4 v11, 0x1

    .local v11, "hasLastAccepted":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .local v12, "historySize":I
    add-int/lit8 v16, v12, 0x1

    .local v16, "pointerSampleCount":I
    const/4 v10, 0x0

    .local v10, "h":I
    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    if-ge v10, v12, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v14

    .local v14, "major":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v14, v0

    :cond_0
    add-float v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    cmpl-float v21, v14, v21

    if-lez v21, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    :cond_4
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .local v7, "directionSig":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_5

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ge v10, v12, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v18

    .local v18, "time":J
    :goto_5
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    const/4 v4, 0x0

    .end local v7    # "directionSig":I
    .end local v18    # "time":J
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .end local v4    # "accept":Z
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v13    # "i":I
    .end local v14    # "major":F
    .end local v16    # "pointerSampleCount":I
    .end local v17    # "sampleCount":I
    .end local v20    # "total":F
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v4    # "accept":Z
    .restart local v13    # "i":I
    .restart local v17    # "sampleCount":I
    .restart local v20    # "total":F
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .restart local v10    # "h":I
    .restart local v11    # "hasLastAccepted":Z
    .restart local v12    # "historySize":I
    .restart local v16    # "pointerSampleCount":I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v14

    .restart local v14    # "major":F
    goto/16 :goto_4

    .restart local v7    # "directionSig":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    goto :goto_5

    .end local v7    # "directionSig":I
    .end local v14    # "major":F
    :cond_b
    add-int v17, v17, v16

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v16    # "pointerSampleCount":I
    :cond_c
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    .local v5, "avg":F
    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v21, v21, v5

    const/high16 v22, 0x40400000    # 3.0f

    div-float v15, v21, v22

    .local v15, "newAccepted":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .end local v15    # "newAccepted":F
    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_1
    const/4 v0, 0x1

    .local v0, "scaleUp":Z
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .local v1, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "scaleUp":Z
    .restart local v1    # "spanDiff":F
    :cond_4
    if-eqz v0, :cond_5

    add-float/2addr v2, v1

    goto :goto_1

    :cond_5
    sub-float/2addr v2, v1

    goto :goto_1

    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_6
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    goto :goto_1
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v29

    and-int/lit8 v29, v29, 0x20

    if-eqz v29, :cond_5

    const/16 v16, 0x1

    .local v16, "isStylusButtonDown":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    if-nez v16, :cond_6

    const/4 v5, 0x1

    .local v5, "anchoredScaleCancelled":Z
    :goto_1
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_2

    const/16 v29, 0x3

    move/from16 v0, v29

    if-eq v4, v0, :cond_2

    if-eqz v5, :cond_7

    :cond_2
    const/16 v23, 0x1

    .local v23, "streamComplete":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v23, :cond_9

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_4
    :goto_3
    if-eqz v23, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    const/16 v29, 0x1

    :goto_4
    return v29

    .end local v5    # "anchoredScaleCancelled":Z
    .end local v16    # "isStylusButtonDown":Z
    .end local v23    # "streamComplete":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .restart local v16    # "isStylusButtonDown":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "anchoredScaleCancelled":Z
    :cond_7
    const/16 v23, 0x0

    goto :goto_2

    .restart local v23    # "streamComplete":Z
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-eqz v29, :cond_4

    if-eqz v23, :cond_4

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v29, v0

    if-nez v29, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-nez v29, :cond_a

    if-nez v23, :cond_a

    if-eqz v16, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_a
    if-eqz v4, :cond_b

    const/16 v29, 0x6

    move/from16 v0, v29

    if-eq v4, v0, :cond_b

    const/16 v29, 0x5

    move/from16 v0, v29

    if-eq v4, v0, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 v6, 0x1

    .local v6, "configChanged":Z
    :goto_5
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v4, v0, :cond_d

    const/16 v18, 0x1

    .local v18, "pointerUp":Z
    :goto_6
    if-eqz v18, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .local v19, "skipIndex":I
    :goto_7
    const/16 v24, 0x0

    .local v24, "sumX":F
    const/16 v25, 0x0

    .local v25, "sumY":F
    if-eqz v18, :cond_f

    add-int/lit8 v12, v7, -0x1

    .local v12, "div":I
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .local v13, "focusX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .local v14, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    cmpg-float v29, v29, v14

    if-gez v29, :cond_10

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_9
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    const/4 v8, 0x0

    .local v8, "devSumX":F
    const/4 v9, 0x0

    .local v9, "devSumY":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a
    if-ge v15, v7, :cond_15

    move/from16 v0, v19

    if-ne v0, v15, :cond_14

    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .end local v6    # "configChanged":Z
    .end local v8    # "devSumX":F
    .end local v9    # "devSumY":F
    .end local v12    # "div":I
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    .end local v15    # "i":I
    .end local v18    # "pointerUp":Z
    .end local v19    # "skipIndex":I
    .end local v24    # "sumX":F
    .end local v25    # "sumY":F
    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6    # "configChanged":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_6

    .restart local v18    # "pointerUp":Z
    :cond_e
    const/16 v19, -0x1

    goto :goto_7

    .restart local v19    # "skipIndex":I
    .restart local v24    # "sumX":F
    .restart local v25    # "sumY":F
    :cond_f
    move v12, v7

    goto :goto_8

    .restart local v12    # "div":I
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    :cond_10
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_9

    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    :cond_11
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_c
    if-ge v15, v7, :cond_13

    move/from16 v0, v19

    if-ne v0, v15, :cond_12

    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    add-float v24, v24, v29

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    add-float v25, v25, v29

    goto :goto_d

    :cond_13
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v13, v24, v29

    .restart local v13    # "focusX":F
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v14, v25, v29

    .restart local v14    # "focusY":F
    goto :goto_9

    .restart local v8    # "devSumX":F
    .restart local v9    # "devSumY":F
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v26, v29, v30

    .local v26, "touchSize":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v29

    sub-float v29, v29, v13

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v29, v29, v26

    add-float v8, v8, v29

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    sub-float v29, v29, v14

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v29, v29, v26

    add-float v9, v9, v29

    goto :goto_b

    .end local v26    # "touchSize":F
    :cond_15
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v10, v8, v29

    .local v10, "devX":F
    int-to-float v0, v12

    move/from16 v29, v0

    div-float v11, v9, v29

    .local v11, "devY":F
    const/high16 v29, 0x40000000    # 2.0f

    mul-float v21, v10, v29

    .local v21, "spanX":F
    const/high16 v29, 0x40000000    # 2.0f

    mul-float v22, v11, v29

    .local v22, "spanY":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-eqz v29, :cond_1d

    move/from16 v20, v22

    .local v20, "span":F
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    .local v28, "wasInProgress":Z
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-nez v29, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v29, v20, v29

    if-ltz v29, :cond_16

    if-eqz v6, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_17
    if-eqz v6, :cond_18

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v29

    if-eqz v29, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v17, v0

    .local v17, "minSpan":I
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v29, v0

    if-nez v29, :cond_1a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v29, v20, v29

    if-ltz v29, :cond_1a

    if-nez v28, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v29, v0

    sub-float v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_1a

    :cond_19
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_1a
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v4, v0, :cond_1c

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    const/16 v27, 0x1

    .local v27, "updatePrev":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    :cond_1b
    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .end local v27    # "updatePrev":Z
    :cond_1c
    const/16 v29, 0x1

    goto/16 :goto_4

    .end local v17    # "minSpan":I
    .end local v20    # "span":F
    .end local v28    # "wasInProgress":Z
    :cond_1d
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v20, v0

    .restart local v20    # "span":F
    goto/16 :goto_e

    .restart local v28    # "wasInProgress":Z
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v17, v0

    goto/16 :goto_f
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method

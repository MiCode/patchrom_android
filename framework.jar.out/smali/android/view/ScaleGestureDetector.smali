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
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

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

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    const v1, 0x1050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    const/high16 v2, 0x7fc0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    return-void

    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "ev"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, currentTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .local v5, count:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    const-wide/16 v22, 0x80

    cmp-long v20, v20, v22

    if-ltz v20, :cond_7

    const/4 v3, 0x1

    .local v3, accept:Z
    :goto_0
    const/16 v19, 0x0

    .local v19, total:F
    const/16 v16, 0x0

    .local v16, sampleCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v5, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_8

    const/4 v10, 0x1

    .local v10, hasLastAccepted:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .local v11, historySize:I
    add-int/lit8 v15, v11, 0x1

    .local v15, pointerSampleCount:I
    const/4 v9, 0x0

    .local v9, h:I
    :goto_3
    if-ge v9, v15, :cond_b

    if-ge v9, v11, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v9}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v13

    .local v13, major:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v13, v0

    :cond_0
    add-float v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    :cond_4
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    sub-float v20, v13, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .local v8, directionSig:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_5

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ge v9, v11, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v17

    .local v17, time:J
    :goto_5
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    const/4 v3, 0x0

    .end local v8           #directionSig:I
    .end local v17           #time:J
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .end local v3           #accept:Z
    .end local v9           #h:I
    .end local v10           #hasLastAccepted:Z
    .end local v11           #historySize:I
    .end local v12           #i:I
    .end local v13           #major:F
    .end local v15           #pointerSampleCount:I
    .end local v16           #sampleCount:I
    .end local v19           #total:F
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .restart local v3       #accept:Z
    .restart local v12       #i:I
    .restart local v16       #sampleCount:I
    .restart local v19       #total:F
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v9       #h:I
    .restart local v10       #hasLastAccepted:Z
    .restart local v11       #historySize:I
    .restart local v15       #pointerSampleCount:I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v13

    .restart local v13       #major:F
    goto/16 :goto_4

    .restart local v8       #directionSig:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    goto :goto_5

    .end local v8           #directionSig:I
    .end local v13           #major:F
    :cond_b
    add-int v16, v16, v15

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .end local v9           #h:I
    .end local v10           #hasLastAccepted:Z
    .end local v11           #historySize:I
    .end local v15           #pointerSampleCount:I
    :cond_c
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v4, v19, v20

    .local v4, avg:F
    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v20, v20, v21

    add-float v20, v20, v4

    const/high16 v21, 0x4040

    div-float v14, v20, v21

    .local v14, newAccepted:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .end local v14           #newAccepted:F
    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    .prologue
    const/high16 v0, 0x7fc0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private inDoubleTapMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v1, v0, :cond_0

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

    const/high16 v2, 0x3f80

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

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

    .local v0, scaleUp:Z
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f00

    mul-float v1, v3, v4

    .local v1, spanDiff:F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .end local v0           #scaleUp:Z
    .end local v1           #spanDiff:F
    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #scaleUp:Z
    .restart local v1       #spanDiff:F
    :cond_4
    if-eqz v0, :cond_5

    add-float/2addr v2, v1

    goto :goto_1

    :cond_5
    sub-float/2addr v2, v1

    goto :goto_1

    .end local v0           #scaleUp:Z
    .end local v1           #spanDiff:F
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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "event"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .local v3, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_2

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v3, v0, :cond_5

    :cond_2
    const/16 v20, 0x1

    .local v20, streamComplete:Z
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v20, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_4
    :goto_1
    if-eqz v20, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    const/16 v26, 0x1

    :goto_2
    return v26

    .end local v20           #streamComplete:Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_0

    .restart local v20       #streamComplete:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    if-eqz v20, :cond_4

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    const/16 v26, 0x6

    move/from16 v0, v26

    if-eq v3, v0, :cond_8

    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v3, v0, :cond_9

    :cond_8
    const/4 v4, 0x1

    .local v4, configChanged:Z
    :goto_3
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v3, v0, :cond_a

    const/4 v15, 0x1

    .local v15, pointerUp:Z
    :goto_4
    if-eqz v15, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .local v16, skipIndex:I
    :goto_5
    const/16 v21, 0x0

    .local v21, sumX:F
    const/16 v22, 0x0

    .local v22, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .local v5, count:I
    if-eqz v15, :cond_c

    add-int/lit8 v10, v5, -0x1

    .local v10, div:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .local v11, focusX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .local v12, focusY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    cmpg-float v26, v26, v12

    if-gez v26, :cond_d

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_7
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    const/4 v6, 0x0

    .local v6, devSumX:F
    const/4 v7, 0x0

    .local v7, devSumY:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_8
    if-ge v13, v5, :cond_12

    move/from16 v0, v16

    if-ne v0, v13, :cond_11

    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .end local v4           #configChanged:Z
    .end local v5           #count:I
    .end local v6           #devSumX:F
    .end local v7           #devSumY:F
    .end local v10           #div:I
    .end local v11           #focusX:F
    .end local v12           #focusY:F
    .end local v13           #i:I
    .end local v15           #pointerUp:Z
    .end local v16           #skipIndex:I
    .end local v21           #sumX:F
    .end local v22           #sumY:F
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .restart local v4       #configChanged:Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .restart local v15       #pointerUp:Z
    :cond_b
    const/16 v16, -0x1

    goto :goto_5

    .restart local v5       #count:I
    .restart local v16       #skipIndex:I
    .restart local v21       #sumX:F
    .restart local v22       #sumY:F
    :cond_c
    move v10, v5

    goto :goto_6

    .restart local v10       #div:I
    .restart local v11       #focusX:F
    .restart local v12       #focusY:F
    :cond_d
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_7

    .end local v11           #focusX:F
    .end local v12           #focusY:F
    :cond_e
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_a
    if-ge v13, v5, :cond_10

    move/from16 v0, v16

    if-ne v0, v13, :cond_f

    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    add-float v21, v21, v26

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    add-float v22, v22, v26

    goto :goto_b

    :cond_10
    int-to-float v0, v10

    move/from16 v26, v0

    div-float v11, v21, v26

    .restart local v11       #focusX:F
    int-to-float v0, v10

    move/from16 v26, v0

    div-float v12, v22, v26

    .restart local v12       #focusY:F
    goto :goto_7

    .restart local v6       #devSumX:F
    .restart local v7       #devSumY:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v23, v26, v27

    .local v23, touchSize:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    sub-float v26, v26, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v26, v26, v23

    add-float v6, v6, v26

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    sub-float v26, v26, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v26, v26, v23

    add-float v7, v7, v26

    goto :goto_9

    .end local v23           #touchSize:F
    :cond_12
    int-to-float v0, v10

    move/from16 v26, v0

    div-float v8, v6, v26

    .local v8, devX:F
    int-to-float v0, v10

    move/from16 v26, v0

    div-float v9, v7, v26

    .local v9, devY:F
    const/high16 v26, 0x4000

    mul-float v18, v8, v26

    .local v18, spanX:F
    const/high16 v26, 0x4000

    mul-float v19, v9, v26

    .local v19, spanY:F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v17, v19

    .local v17, span:F
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v25, v0

    .local v25, wasInProgress:Z
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v26

    if-nez v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v17, v26

    if-ltz v26, :cond_13

    if-eqz v4, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_14
    if-eqz v4, :cond_15

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v26

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .local v14, minSpan:I
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    int-to-float v0, v14

    move/from16 v26, v0

    cmpl-float v26, v17, v26

    if-ltz v26, :cond_17

    if-nez v25, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v26, v0

    sub-float v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_17

    :cond_16
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_17
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v3, v0, :cond_19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    const/16 v24, 0x1

    .local v24, updatePrev:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v24

    :cond_18
    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .end local v24           #updatePrev:Z
    :cond_19
    const/16 v26, 0x1

    goto/16 :goto_2

    .end local v14           #minSpan:I
    .end local v17           #span:F
    .end local v25           #wasInProgress:Z
    :cond_1a
    mul-float v26, v18, v18

    mul-float v27, v19, v19

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v17

    .restart local v17       #span:F
    goto/16 :goto_c

    .restart local v25       #wasInProgress:Z
    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    goto/16 :goto_d
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .parameter "scales"

    .prologue
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .local v0, gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .end local v0           #gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.class Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/TouchExplorer$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method public firstTapDetected()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "secondTapUp"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    .local v22, "pointerId":I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .local v23, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    move-result-object v20

    .local v20, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I

    move-result v24

    .local v24, "result":I
    if-eqz v24, :cond_0

    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v10, v4

    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v11, v4

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .local v21, "event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_4

    const/16 v25, 0x1

    .local v25, "targetAccessibilityFocus":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v25

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .end local v25    # "targetAccessibilityFocus":Z
    :cond_4
    const/16 v25, 0x0

    goto :goto_1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onDoubleTap(Landroid/view/MotionEvent;I)V

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

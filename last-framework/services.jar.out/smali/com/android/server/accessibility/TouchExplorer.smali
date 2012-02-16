.class public Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    }
.end annotation


# static fields
.field private static final ACTIVATION_TIME_SLOP:J = 0x7d0L

.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DELAY_SEND_HOVER_ENTER:J = 0xc8L

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG_INJECTED:Ljava/lang/String; = "TouchExplorer-INJECTED"

.field private static final LOG_TAG_RECEIVED:Ljava/lang/String; = "TouchExplorer-RECEIVED"

.field private static final LOG_TAG_STATE:Ljava/lang/String; = "TouchExplorer-STATE"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCurrentState:I

.field private mDraggingPointerId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInputFilter:Lcom/android/server/wm/InputFilter;

.field private mLastTouchExploreEvent:Landroid/view/MotionEvent;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private final mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

.field private final mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

.field private final mTempPointerIds:[I

.field private final mTouchExplorationTapSlop:I

.field private mTouchExploreGestureInProgress:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputFilter;Landroid/content/Context;)V
    .locals 3
    .parameter "inputFilter"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 143
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchExplorationTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    .line 145
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    .line 148
    new-instance v0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    .line 149
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/accessibility/TouchExplorer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private computeInjectionAction(II)I
    .locals 3
    .parameter "actionMasked"
    .parameter "pointerIndex"

    .prologue
    const/4 v1, 0x1

    .line 730
    sparse-switch p1, :sswitch_data_0

    .line 753
    .end local p1
    :goto_0
    return p1

    .line 733
    .restart local p1
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 735
    .local v0, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 736
    const/4 p1, 0x0

    goto :goto_0

    .line 738
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_0

    .line 743
    .end local v0           #pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 745
    .restart local v0       #pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    move p1, v1

    .line 746
    goto :goto_0

    .line 748
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_0

    .line 730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private ensureHoverExitSent(Landroid/view/MotionEvent;II)V
    .locals 3
    .parameter "prototype"
    .parameter "pointerIdBits"
    .parameter "policyFlags"

    .prologue
    const/16 v2, 0xa

    .line 593
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v0

    .line 594
    .local v0, lastAction:I
    if-eq v0, v2, :cond_0

    .line 595
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 598
    :cond_0
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 849
    packed-switch p0, :pswitch_data_0

    .line 857
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_1
    const-string v0, "STATE_TOUCH_EXPLORING"

    .line 855
    :goto_0
    return-object v0

    .line 853
    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    .line 855
    :pswitch_3
    const-string v0, "STATE_DELEGATING"

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 545
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V

    .line 546
    return-void

    .line 519
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :pswitch_2
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 528
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getNotInjectedActivePointerCount()I

    move-result v0

    .line 529
    .local v0, notInjectedCount:I
    if-lez v0, :cond_0

    .line 530
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 531
    .local v1, prototype:Landroid/view/MotionEvent;
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 536
    .end local v0           #notInjectedCount:I
    .end local v1           #prototype:Landroid/view/MotionEvent;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 537
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 541
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 444
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v1, v3, v2

    .line 445
    .local v1, pointerIdBits:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 508
    :goto_0
    :pswitch_0
    return-void

    .line 447
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Dragging state can be reached only if two pointers are already down"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :pswitch_2
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 454
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 458
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    .line 459
    .local v0, activePointerCount:I
    packed-switch v0, :pswitch_data_1

    .line 480
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 482
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 464
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 471
    :cond_0
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 473
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 490
    .end local v0           #activePointerCount:I
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v0

    .line 491
    .restart local v0       #activePointerCount:I
    packed-switch v0, :pswitch_data_2

    .line 497
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 494
    :pswitch_6
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 502
    .end local v0           #activePointerCount:I
    :pswitch_7
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 505
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 491
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V
    .locals 32
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    move-object/from16 v31, v0

    .line 194
    .local v31, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v10

    .line 196
    .local v10, activePointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 199
    :pswitch_1
    packed-switch v10, :pswitch_data_1

    goto :goto_0

    .line 201
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The must always be one active pointer intouch exploring state!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 208
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 209
    .local v29, pointerId:I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 210
    .local v6, pointerIdBits:I
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    .line 214
    .local v22, lastAction:I
    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_1

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    const/16 v5, 0x9

    const-wide/16 v8, 0xc8

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->post(Landroid/view/MotionEvent;IIIJ)V

    .line 222
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 229
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 218
    :cond_1
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    .line 234
    :cond_2
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v27

    .line 236
    .local v27, pointerDownTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v23

    .line 237
    .local v23, lastExploreTime:J
    sub-long v14, v27, v23

    .line 238
    .local v14, deltaTimeExplore:J
    const-wide/16 v3, 0x7d0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;IJ)V

    goto/16 :goto_0

    .line 250
    .end local v6           #pointerIdBits:I
    .end local v14           #deltaTimeExplore:J
    .end local v22           #lastAction:I
    .end local v23           #lastExploreTime:J
    .end local v27           #pointerDownTime:J
    .end local v29           #pointerId:I
    :pswitch_4
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 251
    .restart local v29       #pointerId:I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    .line 252
    .local v30, pointerIndex:I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 253
    .restart local v6       #pointerIdBits:I
    packed-switch v10, :pswitch_data_2

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 345
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_3

    .line 348
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 351
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 352
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 260
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_6

    .line 261
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 263
    .local v16, deltaX:F
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 265
    .local v17, deltaY:F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v25

    .line 267
    .local v25, moveDelta:D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-double v3, v3

    cmpl-double v3, v25, v3

    if-lez v3, :cond_5

    .line 268
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 269
    const/16 v3, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedHoverAction()I

    move-result v22

    .line 276
    .restart local v22       #lastAction:I
    const/16 v3, 0xa

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    .line 277
    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 280
    :cond_4
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 290
    .end local v16           #deltaX:F
    .end local v17           #deltaY:F
    .end local v22           #lastAction:I
    .end local v25           #moveDelta:D
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    #calls: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPenidng()Z
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 296
    .restart local v16       #deltaX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 298
    .restart local v17       #deltaY:F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v25, v0

    .line 299
    .local v25, moveDelta:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v25, v3

    if-lez v3, :cond_0

    .line 300
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    goto/16 :goto_0

    .line 285
    .end local v16           #deltaX:F
    .end local v17           #deltaY:F
    .end local v25           #moveDelta:F
    :cond_6
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    .line 307
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 316
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 317
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_7

    .line 318
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 319
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 321
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 322
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 323
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 327
    :cond_8
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 329
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_9

    .line 330
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 331
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 333
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 334
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 358
    .end local v6           #pointerIdBits:I
    .end local v29           #pointerId:I
    .end local v30           #pointerIndex:I
    :pswitch_7
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerId()I

    move-result v29

    .line 359
    .restart local v29       #pointerId:I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 360
    .restart local v6       #pointerIdBits:I
    packed-switch v10, :pswitch_data_3

    goto/16 :goto_0

    .line 363
    :pswitch_8
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    if-eqz v3, :cond_a

    .line 372
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 375
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 376
    const/16 v3, 0x400

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 381
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_d

    .line 383
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastReceivedUpPointerDownTime()J

    move-result-wide v18

    .line 385
    .local v18, eventTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 386
    .local v20, exploreTime:J
    sub-long v12, v18, v20

    .line 387
    .local v12, deltaTime:J
    const-wide/16 v3, 0x7d0

    cmp-long v3, v12, v3

    if-lez v3, :cond_b

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 390
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 395
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v30

    .line 396
    .restart local v30       #pointerIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v16, v3, v4

    .line 398
    .restart local v16       #deltaX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v17, v3, v4

    .line 400
    .restart local v17       #deltaY:F
    move/from16 v0, v16

    float-to-double v3, v0

    move/from16 v0, v17

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v11, v3

    .line 401
    .local v11, deltaMove:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationTapSlop:I

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_c

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 404
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 412
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V

    .line 417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 419
    .end local v11           #deltaMove:F
    .end local v12           #deltaTime:J
    .end local v16           #deltaX:F
    .end local v17           #deltaY:F
    .end local v18           #eventTime:J
    .end local v20           #exploreTime:J
    .end local v30           #pointerIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 421
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 427
    .end local v6           #pointerIdBits:I
    .end local v29           #pointerId:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 429
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getPrimaryActivePointerId()I

    move-result v29

    .line 430
    .restart local v29       #pointerId:I
    const/4 v3, 0x1

    shl-int v6, v3, v29

    .line 431
    .restart local v6       #pointerIdBits:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/accessibility/TouchExplorer;->ensureHoverExitSent(Landroid/view/MotionEvent;II)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    goto/16 :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 253
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 360
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "event"

    .prologue
    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 765
    .local v12, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    .line 766
    .local v11, pointerIds:[I
    invoke-virtual {v12, v11}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->populateActivePointerIds([I)V

    .line 768
    const/16 v21, 0x0

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 769
    .local v6, firstPtrIndex:I
    const/16 v21, 0x1

    aget v21, v11, v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 771
    .local v16, secondPtrIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 772
    .local v7, firstPtrX:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 773
    .local v8, firstPtrY:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 774
    .local v17, secondPtrX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 777
    .local v18, secondPtrY:F
    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v3, v7, v21

    .line 779
    .local v3, firstDeltaX:F
    invoke-virtual {v12, v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v4, v8, v21

    .line 782
    .local v4, firstDeltaY:F
    const/16 v21, 0x0

    cmpl-float v21, v3, v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    cmpl-float v21, v4, v21

    if-nez v21, :cond_0

    .line 783
    const/16 v21, 0x1

    .line 816
    :goto_0
    return v21

    .line 786
    :cond_0
    mul-float v21, v3, v3

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v5, v0

    .line 788
    .local v5, firstMagnitude:F
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_1

    div-float v9, v3, v5

    .line 790
    .local v9, firstXNormalized:F
    :goto_1
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-lez v21, :cond_2

    div-float v10, v4, v5

    .line 793
    .local v10, firstYNormalized:F
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownX(I)F

    move-result v21

    sub-float v13, v17, v21

    .line 795
    .local v13, secondDeltaX:F
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getReceivedPointerDownY(I)F

    move-result v21

    sub-float v14, v18, v21

    .line 798
    .local v14, secondDeltaY:F
    const/16 v21, 0x0

    cmpl-float v21, v13, v21

    if-nez v21, :cond_3

    const/16 v21, 0x0

    cmpl-float v21, v14, v21

    if-nez v21, :cond_3

    .line 799
    const/16 v21, 0x1

    goto :goto_0

    .end local v9           #firstXNormalized:F
    .end local v10           #firstYNormalized:F
    .end local v13           #secondDeltaX:F
    .end local v14           #secondDeltaY:F
    :cond_1
    move v9, v3

    .line 788
    goto :goto_1

    .restart local v9       #firstXNormalized:F
    :cond_2
    move v10, v4

    .line 790
    goto :goto_2

    .line 802
    .restart local v10       #firstYNormalized:F
    .restart local v13       #secondDeltaX:F
    .restart local v14       #secondDeltaY:F
    :cond_3
    mul-float v21, v13, v13

    mul-float v22, v14, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v15, v0

    .line 804
    .local v15, secondMagnitude:F
    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_4

    div-float v19, v13, v15

    .line 806
    .local v19, secondXNormalized:F
    :goto_3
    const/16 v21, 0x0

    cmpl-float v21, v15, v21

    if-lez v21, :cond_5

    div-float v20, v14, v15

    .line 809
    .local v20, secondYNormalized:F
    :goto_4
    mul-float v21, v9, v19

    mul-float v22, v10, v20

    add-float v2, v21, v22

    .line 812
    .local v2, angleCos:F
    const v21, 0x3f067b80

    cmpg-float v21, v2, v21

    if-gez v21, :cond_6

    .line 813
    const/16 v21, 0x0

    goto :goto_0

    .end local v2           #angleCos:F
    .end local v19           #secondXNormalized:F
    .end local v20           #secondYNormalized:F
    :cond_4
    move/from16 v19, v13

    .line 804
    goto :goto_3

    .restart local v19       #secondXNormalized:F
    :cond_5
    move/from16 v20, v14

    .line 806
    goto :goto_4

    .line 816
    .restart local v2       #angleCos:F
    .restart local v20       #secondYNormalized:F
    :cond_6
    const/16 v21, 0x1

    goto :goto_0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 2
    .parameter "eventType"

    .prologue
    .line 825
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 826
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 827
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "prototype"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 677
    .local v0, pointerId:I
    shl-int v1, v3, v0

    .line 678
    .local v1, pointerIdBits:I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 679
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 680
    return-void
.end method

.method private sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .parameter "prototype"
    .parameter "policyFlags"

    .prologue
    const/4 v7, 0x1

    .line 556
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 557
    .local v5, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    const/4 v4, 0x0

    .line 558
    .local v4, pointerIdBits:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 561
    .local v2, pointerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 562
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 563
    .local v3, pointerId:I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 564
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 561
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v3           #pointerId:I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 570
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 572
    .restart local v3       #pointerId:I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActivePointer(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 569
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    :cond_3
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 579
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 580
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 581
    .local v0, action:I
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    .line 583
    .end local v0           #action:I
    .end local v3           #pointerId:I
    :cond_4
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 3
    .parameter "prototype"
    .parameter "action"
    .parameter "pointerIdBits"
    .parameter "policyFlags"

    .prologue
    .line 692
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, event:Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 696
    move-object v0, p1

    .line 700
    :goto_0
    if-nez p2, :cond_2

    .line 701
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 712
    :goto_1
    const/high16 v1, 0x4000

    or-int/2addr p4, v1

    .line 713
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    .line 714
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInputFilter:Lcom/android/server/wm/InputFilter;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/wm/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 716
    if-eq v0, p1, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 719
    :cond_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V
    .locals 9
    .parameter "prototype"
    .parameter "policyFlags"

    .prologue
    .line 630
    iget-object v6, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 633
    .local v6, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {p0, p1, v7, v8, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->getActivePointerCount()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 647
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 648
    .local v0, actionMasked:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 649
    .local v1, actionPointerId:I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    .line 650
    #calls: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    :cond_3
    const/4 v4, 0x0

    .line 658
    .local v4, pointerIdBits:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 659
    .local v2, pointerCount:I
    const/4 v5, 0x0

    .local v5, pointerIndex:I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 660
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 661
    .local v3, pointerId:I
    #calls: Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z
    invoke-static {v6, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$PointerTracker;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 662
    const/4 v7, 0x1

    shl-int/2addr v7, v3

    or-int/2addr v4, v7

    .line 659
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 665
    .end local v3           #pointerId:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-direct {p0, p1, v7, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .parameter "prototype"
    .parameter "policyFlags"

    .prologue
    const/4 v7, 0x1

    .line 608
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    .line 609
    .local v5, pointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;
    const/4 v4, 0x0

    .line 610
    .local v4, pointerIdBits:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 611
    .local v2, pointerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 612
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 614
    .local v3, pointerId:I
    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 611
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_0
    shl-int v6, v7, v3

    or-int/2addr v4, v6

    .line 618
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 619
    .local v0, action:I
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    .line 621
    .end local v0           #action:I
    .end local v3           #pointerId:I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 834
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 835
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->clear()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchExploreEvent:Landroid/view/MotionEvent;

    .line 837
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExploreGestureInProgress:Z

    .line 839
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 840
    return-void
.end method

.method public clear(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 155
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 3
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPointerTracker:Lcom/android/server/accessibility/TouchExplorer$PointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/TouchExplorer$PointerTracker;->onReceivedMotionEvent(Landroid/view/MotionEvent;)V

    .line 170
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;I)V

    .line 184
    :goto_0
    return-void

    .line 175
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 178
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

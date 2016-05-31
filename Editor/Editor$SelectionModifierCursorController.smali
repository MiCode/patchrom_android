.class public Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mDoubleTabed:Z

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mInSwipeSelectionMode:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mSwipeSelectionStart:I

.field private mTextSelectionModeEnable:Z

.field private mTranslationCache:[F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    .line 4882
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4865
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 4880
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    .line 4883
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 4884
    return-void

    .line 4880
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 4852
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 4852
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    return v0
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 4896
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4897
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110200ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4900
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4901
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110200ad    # 1.02554E-28f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3802(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4904
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 4908
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 4909
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 4911
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 4912
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 4915
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->setTranslation(F)V

    .line 4916
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setTranslation(F)V

    .line 4918
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 4919
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 4923
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 4924
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    .line 4926
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)V

    .line 4927
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5033
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5034
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5041
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5042
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5043
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    .line 5044
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5046
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    .line 5047
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5041
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5050
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5061
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5053
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4930
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    .line 4931
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 4932
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 4934
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 4935
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 4937
    :cond_1
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5076
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5087
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5088
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5090
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    .line 5091
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->hideActionPopupWindow()V

    .line 5093
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    .line 5094
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->hideActionPopupWindow()V

    .line 5096
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4942
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 4943
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 4944
    .local v12, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 5026
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 5027
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5030
    :cond_1
    :goto_1
    return-void

    .line 4946
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 4949
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 4952
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v13, :cond_2

    .line 4953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v6, v13, v15

    .line 4954
    .local v6, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v6, v13

    if-gtz v13, :cond_2

    .line 4955
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v1, v11, v13

    .line 4956
    .local v1, "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v2, v12, v13

    .line 4957
    .local v2, "deltaY":F
    mul-float v13, v1, v1

    mul-float v14, v2, v2

    add-float v3, v13, v14

    .line 4959
    .local v3, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 4961
    .local v10, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v4

    .line 4962
    .local v4, "doubleTapSlop":I
    mul-int v13, v4, v4

    int-to-float v13, v13

    cmpg-float v13, v3, v13

    if-gez v13, :cond_3

    const/4 v9, 0x1

    .line 4964
    .local v9, "stayedInArea":Z
    :goto_2
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v13, v11, v12}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;FF)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 4965
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    .line 4966
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 4967
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 4968
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 4969
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 4974
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v6    # "duration":J
    .end local v9    # "stayedInArea":Z
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 4975
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 4976
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_1

    .line 4962
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    .restart local v3    # "distanceSquared":F
    .restart local v4    # "doubleTapSlop":I
    .restart local v6    # "duration":J
    .restart local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 4983
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v4    # "doubleTapSlop":I
    .end local v6    # "duration":J
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4985
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4990
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v13, :cond_4

    .line 4991
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v1, v11, v13

    .line 4992
    .restart local v1    # "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v2, v12, v13

    .line 4993
    .restart local v2    # "deltaY":F
    mul-float v13, v1, v1

    mul-float v14, v2, v2

    add-float v3, v13, v14

    .line 4995
    .restart local v3    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    .line 4997
    .restart local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v5

    .line 4999
    .local v5, "doubleTapTouchSlop":I
    mul-int v13, v5, v5

    int-to-float v13, v13

    cmpl-float v13, v3, v13

    if-lez v13, :cond_4

    .line 5000
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5001
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5005
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "distanceSquared":F
    .end local v5    # "doubleTapTouchSlop":I
    .end local v10    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    if-eqz v13, :cond_1

    .line 5006
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v8

    .line 5007
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-lt v8, v13, :cond_5

    .line 5008
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    invoke-static {v13, v14, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5011
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-eq v13, v8, :cond_6

    .line 5012
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto/16 :goto_1

    .line 5014
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_1

    .line 5020
    .end local v8    # "offset":I
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5021
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5022
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    if-eqz v13, :cond_0

    .line 5023
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 4944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5080
    if-nez p1, :cond_0

    .line 5081
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5083
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 5069
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5070
    return-void
.end method

.method public setMaxTouchOffset(I)V
    .locals 0
    .param p1, "maxTouchOffset"    # I

    .prologue
    .line 5065
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5066
    return-void
.end method

.method public setMinTouchOffset(I)V
    .locals 0
    .param p1, "minTouchOffset"    # I

    .prologue
    .line 5057
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5058
    return-void
.end method

.method public setTranslationCache([F)V
    .locals 0
    .param p1, "translationCache"    # [F

    .prologue
    .line 5099
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    .line 5100
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4893
    :goto_0
    return-void

    .line 4890
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 4891
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 4892
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    goto :goto_0
.end method

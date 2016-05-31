.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 2
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 2305
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    .line 2306
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    .line 2287
    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    .line 2307
    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    .line 2308
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    .line 2311
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    .line 2312
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    .line 2314
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 2316
    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    .line 2269
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    .line 2269
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method private isMiddleOffsetInSelection()Z
    .locals 4

    .prologue
    .line 2461
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2462
    .local v0, "middleOffset":I
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2481
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2483
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2484
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2485
    return-void
.end method

.method protected clipVertically(I)I
    .locals 9
    .param p1, "positionY"    # I

    .prologue
    const/4 v8, 0x0

    .line 2403
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2404
    .local v1, "layout":Landroid/text/Layout;
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2405
    .local v5, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2406
    .local v4, "selectionEnd":I
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2407
    .local v3, "lineStart":I
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2409
    .local v2, "lineEnd":I
    if-gez p1, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v6, v5}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2410
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr p1, v6

    .line 2411
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr p1, v6

    .line 2412
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 2413
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110200ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr p1, v6

    .line 2416
    :cond_0
    iput-boolean v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2419
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2420
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p1

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v6, v4}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2422
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p1, v6

    .line 2423
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr p1, v6

    .line 2424
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 2425
    iget-object v6, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110200ad    # 1.02554E-28f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr p1, v6

    .line 2428
    :cond_2
    iput-boolean v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2431
    :cond_3
    return p1
.end method

.method protected computeLocalPosition()V
    .locals 10

    .prologue
    .line 2338
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2339
    .local v4, "selectionStart":I
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2340
    .local v3, "selectionEnd":I
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2341
    .local v2, "layout":Landroid/text/Layout;
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2343
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    .line 2346
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v7, v4}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2347
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2349
    iget v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2370
    :goto_0
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    .line 2371
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v1, v7, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .line 2373
    .local v1, "horizontalScale":F
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    .line 2374
    .local v5, "startPositionX":F
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2375
    .local v0, "endPositionX":F
    add-float v7, v5, v0

    int-to-float v8, v6

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    .line 2377
    return-void

    .line 2350
    .end local v0    # "endPositionX":F
    .end local v1    # "horizontalScale":F
    .end local v5    # "startPositionX":F
    .end local v6    # "width":I
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v7, v3}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2351
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2352
    iget v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2354
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v7}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2355
    iget v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x110200ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2358
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_0

    .line 2362
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2363
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$1802(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2365
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2366
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0
.end method

.method protected abstract createAnimations()V
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2477
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 2472
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 2467
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 2436
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2437
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2438
    return-void
.end method

.method protected measureContent()V
    .locals 7

    .prologue
    .line 2320
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2321
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 2323
    .local v0, "contentWidth":I
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    :goto_0
    if-ge v4, v3, :cond_2

    .line 2325
    :cond_0
    const/high16 v2, -0x80000000

    .line 2330
    .local v2, "widthMode":I
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 2334
    return-void

    .line 2323
    .end local v2    # "widthMode":I
    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    .line 2327
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "widthMode":I
    goto :goto_1
.end method

.method protected setMainPanelAsContent()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2496
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/widget/TouchPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2502
    :goto_0
    return-void

    .line 2499
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2500
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setSubPanelAsContent(Landroid/view/View;)V
    .locals 5
    .param p1, "subView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2505
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    .line 2507
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_0

    .line 2508
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v2, Landroid/widget/Editor$InsertionHandleView;

    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->access$1900(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2511
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2512
    .local v1, "subPanel":Landroid/widget/LinearLayout;
    const v2, 0x1102009d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2513
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2515
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2516
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2519
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    .line 2520
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2521
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    .line 2522
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 2491
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    .line 2492
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 2493
    return-void
.end method

.method show(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 2456
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2457
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2458
    return-void
.end method

.method protected updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2381
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2382
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2383
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2385
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 2386
    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2389
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2390
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2391
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2393
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2394
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2399
    :goto_0
    return-void

    .line 2396
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2443
    if-nez p4, :cond_0

    if-eqz p3, :cond_2

    .line 2444
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v1, v1, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_1

    .line 2445
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .line 2446
    .local v0, "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$1900(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2447
    const/4 v1, 0x1

    # setter for: Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z
    invoke-static {v0, v1}, Landroid/widget/Editor$InsertionHandleView;->access$2002(Landroid/widget/Editor$InsertionHandleView;Z)Z

    .line 2450
    .end local v0    # "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    .line 2451
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    .line 2453
    :cond_2
    return-void
.end method

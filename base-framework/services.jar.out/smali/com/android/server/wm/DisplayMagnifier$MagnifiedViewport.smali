.class final Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# static fields
.field private static final DEFAUTLT_BORDER_WIDTH_DIP:I = 0x5


# instance fields
.field private final mBorderWidth:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mOldMagnifiedBounds:Landroid/graphics/Region;

.field private final mTempFloats:[F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStateInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;)V
    .locals 4
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x1

    const/high16 v1, 0x40a0

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier;->access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private getWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, outWindowStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    iget-object v5, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .local v0, displayContent:Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .local v3, windowList:Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .local v2, windowCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .local v4, windowState:Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e9

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->obtain(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #windowState:Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method private populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .parameter "windowState"
    .parameter "outMatrix"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "rect"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .local v0, spec:Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v1, 0x3f80

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRotationChangedLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4, v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$800(Lcom/android/server/wm/DisplayMagnifier;)J

    move-result-wide v3

    long-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .local v0, delay:J
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #delay:J
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 27

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .local v5, screenWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    .local v6, screenHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v20, v0

    .local v20, magnifiedBounds:Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v14

    .local v14, availableBounds:Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v22

    .local v22, nonMagnifiedBounds:Landroid/graphics/Region;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempWindowStateInfos:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    .local v24, visibleWindows:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v23

    .local v23, visibleWindowCount:I
    add-int/lit8 v18, v23, -0x1

    .local v18, i:I
    :goto_0
    if-ltz v18, :cond_2

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .local v19, info:Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7eb

    if-ne v3, v4, :cond_1

    :cond_0
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v25

    .local v25, windowBounds:Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    .local v21, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->populateTransformationMatrix(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    .local v26, windowFrame:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    .local v2, accountedBounds:Landroid/graphics/Region;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v13

    .local v13, accountedFrame:Landroid/graphics/Rect;
    invoke-virtual {v2, v13}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v3, v6, :cond_0

    .end local v2           #accountedBounds:Landroid/graphics/Region;
    .end local v13           #accountedFrame:Landroid/graphics/Rect;
    .end local v19           #info:Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v21           #matrix:Landroid/graphics/Matrix;
    .end local v25           #windowBounds:Landroid/graphics/Region;
    .end local v26           #windowFrame:Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v18, v23, -0x1

    :goto_2
    if-ltz v18, :cond_4

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;

    .restart local v19       #info:Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->recycle()V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .restart local v21       #matrix:Landroid/graphics/Matrix;
    .restart local v25       #windowBounds:Landroid/graphics/Region;
    .restart local v26       #windowFrame:Landroid/graphics/RectF;
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mTouchableRegion:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;->mWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_1

    .end local v19           #info:Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;
    .end local v21           #matrix:Landroid/graphics/Matrix;
    .end local v25           #windowBounds:Landroid/graphics/Region;
    .end local v26           #windowFrame:Landroid/graphics/RectF;
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v10, v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v11, v6, v3

    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v7, v20

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .local v15, bounds:Landroid/graphics/Region;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v16

    .local v16, dirtyRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v7, v5, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    sub-int v8, v6, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .end local v15           #bounds:Landroid/graphics/Region;
    .end local v16           #dirtyRect:Landroid/graphics/Rect;
    :cond_5
    return-void

    .restart local v15       #bounds:Landroid/graphics/Region;
    .restart local v16       #dirtyRect:Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier;->access$700(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v17

    .local v17, dirtyRegion:Landroid/graphics/Region;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .parameter "shown"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mOldMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .parameter "spec"

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    #getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    goto :goto_0
.end method

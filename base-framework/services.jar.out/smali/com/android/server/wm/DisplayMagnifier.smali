.class final Lcom/android/server/wm/DisplayMagnifier;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;,
        Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z

.field private static final DEBUG_RECTANGLE_REQUESTED:Z

.field private static final DEBUG_ROTATION:Z

.field private static final DEBUG_VIEWPORT_WINDOW:Z

.field private static final DEBUG_WINDOW_TRANSITIONS:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Landroid/view/IMagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DisplayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IMagnificationCallbacks;)V
    .locals 2
    .parameter "windowManagerService"
    .parameter "callbacks"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/DisplayMagnifier;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayMagnifier;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 5
    .parameter "windowState"

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    .local v1, spec:Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .local v0, policy:Landroid/view/WindowManagerPolicy;
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v2, windowType:I
    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->isTopLevelWindow(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    .end local v0           #policy:Landroid/view/WindowManagerPolicy;
    .end local v1           #spec:Landroid/view/MagnificationSpec;
    .end local v2           #windowType:I
    :cond_0
    :goto_0
    return-object v1

    .restart local v0       #policy:Landroid/view/WindowManagerPolicy;
    .restart local v1       #spec:Landroid/view/MagnificationSpec;
    .restart local v2       #windowType:I
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    goto :goto_0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .parameter "windowState"
    .parameter "transition"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .local v0, magnifying:Z
    if-eqz v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x100d -> :sswitch_0
        0x100e -> :sswitch_0
        0x200c -> :sswitch_0
    .end sparse-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;Z)V
    .locals 4
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .local v1, magnifiedRegionBounds:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2
    .parameter "displayContent"
    .parameter "rotation"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 9
    .parameter "windowState"
    .parameter "transition"

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v1

    .local v1, magnifying:Z
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .local v3, type:I
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz v1, :cond_0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .local v0, magnifiedRegionBounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .local v2, touchableRegionBounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ec -> :sswitch_0
    .end sparse-switch
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .parameter "spec"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

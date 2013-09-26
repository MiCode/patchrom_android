.class final Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x3

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x5

.field private static final MESSAGE_ON_WINDOW_LAYERS_CHANGED:I = 0x6

.field private static final MESSAGE_ON_WINDOW_TRANSITION:I = 0x4

.field private static final MESSAGE_SHOW_VIEWPORT_FRAME:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

.field private final mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

.field private final mWindowAnimationScale:F

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$Viewport;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;JF)V
    .locals 3
    .parameter "context"
    .parameter "viewport"
    .parameter "magnificationController"
    .parameter "windowManagerService"
    .parameter "displayProvider"
    .parameter "longAnimationDuration"
    .parameter "windowAnimationScale"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iput-object p4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iput-object p5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    iput-wide p6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mLongAnimationDuration:J

    iput p8, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowAnimationScale:F

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->addDisplayContentChangeListener(ILandroid/view/IDisplayContentChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;ILandroid/view/WindowInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnWindowTransition(ILandroid/view/WindowInfo;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRotationChanged(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method private ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "magnifiedRegionBounds"
    .parameter "rectangle"

    .prologue
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .local v0, direction:I
    if-nez v0, :cond_1

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .end local v0           #direction:I
    .local v1, scrollX:F
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_5

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .local v2, scrollY:F
    :goto_2
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterX()F

    move-result v5

    add-float v3, v5, v1

    .local v3, viewportCenterX:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionCenterY()F

    move-result v5

    add-float v4, v5, v2

    .local v4, viewportCenterY:F
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_0

    .end local v1           #scrollX:F
    .end local v2           #scrollY:F
    .end local v3           #viewportCenterX:F
    .end local v4           #viewportCenterY:F
    .restart local v0       #direction:I
    :cond_1
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .restart local v1       #scrollX:F
    goto :goto_1

    .end local v0           #direction:I
    .end local v1           #scrollX:F
    :cond_2
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_3

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .restart local v1       #scrollX:F
    goto :goto_1

    .end local v1           #scrollX:F
    :cond_3
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_4

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .restart local v1       #scrollX:F
    goto :goto_1

    .end local v1           #scrollX:F
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #scrollX:F
    goto :goto_1

    :cond_5
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_6

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .restart local v2       #scrollY:F
    goto :goto_2

    .end local v2           #scrollY:F
    :cond_6
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .restart local v2       #scrollY:F
    goto :goto_2

    .end local v2           #scrollY:F
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #scrollY:F
    goto :goto_2
.end method

.method private handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V
    .locals 2
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, magnifiedRegionBounds:Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private handleOnRotationChanged(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->resetMagnificationIfNeeded()V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3, v4, v4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->rotationChanged()V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x2

    iget-wide v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mLongAnimationDuration:J

    mul-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowAnimationScale:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .local v0, delay:J
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #delay:J
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleOnWindowTransition(ILandroid/view/WindowInfo;)V
    .locals 6
    .parameter "transition"
    .parameter "info"

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    .local v1, magnifying:Z
    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7e3

    if-eq v4, v5, :cond_1

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7db

    if-eq v4, v5, :cond_1

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7dc

    if-eq v4, v5, :cond_1

    iget v4, p2, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7d4

    if-eq v4, v5, :cond_1

    iget v4, p2, Landroid/view/WindowInfo;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_2

    :cond_1
    sparse-switch p1, :sswitch_data_1

    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/WindowInfo;->recycle()V

    :cond_4
    return-void

    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->resetMagnificationIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1           #magnifying:Z
    :catchall_0
    move-exception v4

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/WindowInfo;->recycle()V

    :cond_5
    throw v4

    .restart local v1       #magnifying:Z
    :sswitch_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    goto :goto_1

    :pswitch_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    .local v3, type:I
    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnifiedRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, magnifiedRegionBounds:Landroid/graphics/Rect;
    iget-object v2, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    .local v2, touchableRegion:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->ensureRectangleInMagnifiedRegionBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x100d -> :sswitch_0
        0x100e -> :sswitch_0
        0x200c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_2
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e8 -> :sswitch_2
        0x7ec -> :sswitch_2
    .end sparse-switch
.end method

.method private resetMagnificationIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    :cond_0
    return-void
.end method

.method private rotationToString(I)Ljava/lang/String;
    .locals 3
    .parameter "rotation"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "ROTATION_0"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "ROATATION_90"

    goto :goto_0

    :pswitch_2
    const-string v0, "ROATATION_180"

    goto :goto_0

    :pswitch_3
    const-string v0, "ROATATION_270"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private windowTransitionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "transition"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    :sswitch_2
    const-string v0, "TRANSIT_ENTER"

    goto :goto_0

    :sswitch_3
    const-string v0, "TRANSIT_EXIT"

    goto :goto_0

    :sswitch_4
    const-string v0, "TRANSIT_SHOW"

    goto :goto_0

    :sswitch_5
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_0

    :sswitch_6
    const-string v0, "TRANSIT_PREVIEW_DONE"

    goto :goto_0

    :sswitch_7
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    :sswitch_8
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    :sswitch_9
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    :sswitch_a
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    :sswitch_b
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    :sswitch_c
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    :sswitch_d
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    :sswitch_e
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    :sswitch_f
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    :sswitch_10
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x5 -> :sswitch_6
        0x1001 -> :sswitch_2
        0x1003 -> :sswitch_4
        0x1006 -> :sswitch_7
        0x1008 -> :sswitch_9
        0x100a -> :sswitch_b
        0x100d -> :sswitch_e
        0x100e -> :sswitch_f
        0x2000 -> :sswitch_5
        0x2002 -> :sswitch_3
        0x2007 -> :sswitch_8
        0x2009 -> :sswitch_a
        0x200b -> :sswitch_c
        0x200c -> :sswitch_d
        0x200f -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayProvider:Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mDisplayContentChangeListener:Landroid/view/IDisplayContentChangeListener;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeDisplayContentChangeListener(ILandroid/view/IDisplayContentChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

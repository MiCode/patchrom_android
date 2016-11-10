.class public abstract Landroid/media/tv/TvInputService$Session;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;,
        Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    }
.end annotation


# static fields
.field private static final DETACH_OVERLAY_VIEW_TIMEOUT_MS:I = 0x1388

.field private static final POSITION_UPDATE_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPositionMs:J

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOverlayFrame:Landroid/graphics/Rect;

.field private mOverlayView:Landroid/view/View;

.field private mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

.field private mOverlayViewContainer:Landroid/widget/FrameLayout;

.field private mOverlayViewEnabled:Z

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mStartPositionMs:J

.field private mSurface:Landroid/view/Surface;

.field private final mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    new-instance v0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-void
.end method

.method static synthetic access$1000(Landroid/media/tv/TvInputService$Session;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/tv/TvInputService$Session;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-wide v0
.end method

.method static synthetic access$1102(Landroid/media/tv/TvInputService$Session;J)J
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    return-wide p1
.end method

.method static synthetic access$1200(Landroid/media/tv/TvInputService$Session;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/tv/TvInputService$Session;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return v0
.end method

.method static synthetic access$402(Landroid/media/tv/TvInputService$Session;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    return p1
.end method

.method static synthetic access$500(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/tv/TvInputService$Session;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    iget-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-wide v0
.end method

.method static synthetic access$902(Landroid/media/tv/TvInputService$Session;J)J
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    return-wide p1
.end method

.method private executeOrPostRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    iget-object v3, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private notifyTimeShiftCurrentPositionChanged(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$12;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$12;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyTimeShiftStartPositionChanged(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$11;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$11;-><init>(Landroid/media/tv/TvInputService$Session;J)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onCreateOverlayView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v5, 0x3ec

    .local v5, "type":I
    const/16 v6, 0x218

    .local v6, "flags":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x1000000

    or-int/2addr v6, v0

    :cond_4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    const/4 v7, -0x2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, "isNavigationKey":Z
    const/4 v3, 0x0

    .local v3, "skipDispatchToOverlayView":Z
    instance-of v7, p1, Landroid/view/KeyEvent;

    if-eqz v7, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v7, p0, Landroid/media/tv/TvInputService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0, v7, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return v6

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/media/tv/TvInputService;->isNavigationKey(I)Z

    move-result v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0xde

    if-ne v7, v8, :cond_4

    :cond_1
    move v3, v6

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    iget-object v7, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_8

    :cond_3
    move v6, v5

    goto :goto_0

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_4
    move v3, v5

    goto :goto_1

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_5
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    .local v4, "source":I
    invoke-virtual {v2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_6
    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_7

    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Landroid/media/tv/TvInputService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "source":I
    :cond_8
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    :cond_9
    if-eqz v0, :cond_a

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    :cond_a
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    const/4 v6, -0x1

    goto/16 :goto_0
.end method

.method dispatchSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/TvInputService$Session;->onSurfaceChanged(III)V

    return-void
.end method

.method public layoutSurface(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/media/tv/TvInputService$Session$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/TvInputService$Session$13;-><init>(Landroid/media/tv/TvInputService$Session;IIII)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyChannelRetuned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$3;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyContentAllowed()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$8;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputService$Session$9;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$9;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvContentRating;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/TvInputService$Session$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$2;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTimeShiftStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$10;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$10;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTrackSelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$Session$5;-><init>(Landroid/media/tv/TvInputService$Session;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTracksChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "trackIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .local v2, "trackId":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redundant track ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v2    # "trackId":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v4, "tracksCopy":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    new-instance v5, Landroid/media/tv/TvInputService$Session$4;

    invoke-direct {v5, p0, v4}, Landroid/media/tv/TvInputService$Session$4;-><init>(Landroid/media/tv/TvInputService$Session;Ljava/util/List;)V

    invoke-direct {p0, v5}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyVideoAvailable()V
    .locals 1

    .prologue
    new-instance v0, Landroid/media/tv/TvInputService$Session$6;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$Session$6;-><init>(Landroid/media/tv/TvInputService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyVideoUnavailable(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/media/tv/TvInputService$Session$7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$Session$7;-><init>(Landroid/media/tv/TvInputService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$Session;->executeOrPostRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onCreateOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onOverlayViewSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onSelectTrack(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onSetCaptionEnabled(Z)V
.end method

.method public onSetMain(Z)V
    .locals 0
    .param p1, "isMain"    # Z

    .prologue
    return-void
.end method

.method public abstract onSetStreamVolume(F)V
.end method

.method public abstract onSetSurface(Landroid/view/Surface;)Z
.end method

.method public onSurfaceChanged(III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    return-void
.end method

.method public onTimeShiftGetCurrentPosition()J
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onTimeShiftGetStartPosition()J
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public onTimeShiftPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTimeShiftResume()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTimeShiftSeekTo(J)V
    .locals 0
    .param p1, "timeMs"    # J

    .prologue
    return-void
.end method

.method public onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onTune(Landroid/net/Uri;)Z
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .prologue
    return-void
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/TvInputService$Session;->onOverlayViewSizeChanged(II)V

    :cond_1
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeOverlayView(Z)V
    .locals 3
    .param p1, "clearWindowToken"    # Z

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/media/tv/TvInputService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    return-void
.end method

.method scheduleOverlayViewCleanup()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewContainer:Landroid/widget/FrameLayout;

    .local v0, "overlayViewParent":Landroid/view/View;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V

    iput-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mOverlayViewCleanUpTask:Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method selectTrack(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onSelectTrack(ILjava/lang/String;)Z

    return-void
.end method

.method setCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetCaptionEnabled(Z)V

    return-void
.end method

.method setMain(Z)V
    .locals 0
    .param p1, "isMain"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetMain(Z)V

    return-void
.end method

.method public setOverlayViewEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputService$Session$1;-><init>(Landroid/media/tv/TvInputService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setStreamVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetStreamVolume(F)V

    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onSetSurface(Landroid/view/Surface;)Z

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J

    iput-wide v2, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    goto :goto_0
.end method

.method timeShiftPause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftPause()V

    return-void
.end method

.method timeShiftResume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftResume()V

    return-void
.end method

.method timeShiftSeekTo(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSeekTo(J)V

    return-void
.end method

.method timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session;->onTimeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$Session;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)Z

    return-void
.end method

.method unblockContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "unblockedRating"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/tv/TvInputService$Session;->onUnblockContent(Landroid/media/tv/TvContentRating;)V

    return-void
.end method

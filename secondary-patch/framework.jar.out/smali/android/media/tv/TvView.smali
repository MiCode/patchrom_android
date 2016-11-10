.class public Landroid/media/tv/TvView;
.super Landroid/view/ViewGroup;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvView$MySessionCallback;,
        Landroid/media/tv/TvView$OnUnhandledInputEventListener;,
        Landroid/media/tv/TvView$TvInputCallback;,
        Landroid/media/tv/TvView$TimeShiftPositionCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NULL_TV_VIEW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TvView"

.field private static final ZORDER_MEDIA:I = 0x0

.field private static final ZORDER_MEDIA_OVERLAY:I = 0x1

.field private static final ZORDER_ON_TOP:I = 0x2

.field private static sMainTvView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMainTvViewLock:Ljava/lang/Object;


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private mCallback:Landroid/media/tv/TvView$TvInputCallback;

.field private mCaptionEnabled:Ljava/lang/Boolean;

.field private final mDefStyleAttr:I

.field private final mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

.field private mOverlayViewCreated:Z

.field private mOverlayViewFrame:Landroid/graphics/Rect;

.field private final mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/media/tv/TvInputManager$Session;

.field private mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

.field private mStreamVolume:Ljava/lang/Float;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceChanged:Z

.field private mSurfaceFormat:I

.field private mSurfaceHeight:I

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewBottom:I

.field private mSurfaceViewLeft:I

.field private mSurfaceViewRight:I

.field private mSurfaceViewTop:I

.field private mSurfaceWidth:I

.field private mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

.field private final mTvInputManager:Landroid/media/tv/TvInputManager;

.field private mUseRequestedSurfaceLayout:Z

.field private mWindowZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    new-instance v0, Landroid/media/tv/TvView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$1;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Landroid/media/tv/TvView$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$2;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iput-object p2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    iput p3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-void
.end method

.method static synthetic access$000(Landroid/media/tv/TvView;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/tv/TvView;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/tv/TvView;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/tv/TvView;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/tv/TvView;)Ljava/lang/Float;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/tv/TvView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/tv/TvView;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/tv/TvView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    return p1
.end method

.method static synthetic access$1902(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/tv/TvView;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget v0, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$2102(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    return p1
.end method

.method static synthetic access$2202(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    return p1
.end method

.method static synthetic access$2302(Landroid/media/tv/TvView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    return p1
.end method

.method static synthetic access$2402(Landroid/media/tv/TvView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/tv/TvView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return v0
.end method

.method static synthetic access$302(Landroid/media/tv/TvView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return p1
.end method

.method static synthetic access$400(Landroid/media/tv/TvView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/tv/TvView;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/tv/TvView;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvView;->relayoutSessionOverlayView()V

    return-void
.end method

.method static synthetic access$800(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-object v0
.end method

.method static synthetic access$802(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Landroid/media/tv/TvView$MySessionCallback;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvView;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvView;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p1
.end method

.method private createSessionOverlayView()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session;->createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    goto :goto_0
.end method

.method private dispatchSurfaceChanged(III)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->dispatchSurfaceChanged(III)V

    goto :goto_0
.end method

.method private ensurePositionTracking()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftEnablePositionTracking(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getViewFrameOnScreen()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private relayoutSessionOverlayView()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private removeSessionOverlayView()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->removeOverlayView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private resetInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    iput-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    :cond_0
    return-void
.end method

.method private resetSurfaceView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    new-instance v0, Landroid/media/tv/TvView$3;

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/TvView$3;-><init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method private setSessionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v5, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v6, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    invoke-interface {v0, p1}, Landroid/media/tv/TvView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x2

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    move-result v8

    .local v8, "width":I
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    move-result v6

    .local v6, "height":I
    if-lez v8, :cond_0

    if-lez v6, :cond_0

    new-array v7, v3, [I

    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/media/tv/TvView;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v1, v7, v0

    .local v1, "left":I
    const/4 v0, 0x1

    aget v2, v7, v0

    .local v2, "top":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v6    # "height":I
    .end local v7    # "location":[I
    .end local v8    # "width":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getSelectedTrack(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTracks(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getTracks(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v2

    .local v2, "width":I
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .local v1, "height":I
    iget-object v3, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v0

    .local v0, "childState":I
    invoke-static {v2, p1, v0}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v0, 0x10

    invoke-static {v1, p2, v4}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/media/tv/TvView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_0
.end method

.method public requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->unblockContent(Landroid/media/tv/TvContentRating;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectTrack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "TvView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" pending)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCallback(Landroid/media/tv/TvView$TvInputCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TvInputCallback;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMain()V
    .locals 2

    .prologue
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnUnhandledInputEventListener(Landroid/media/tv/TvView$OnUnhandledInputEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    return-void
.end method

.method public setStreamVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    goto :goto_0
.end method

.method public setTimeShiftPositionCallback(Landroid/media/tv/TvView$TimeShiftPositionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 2
    .param p1, "isMediaOverlay"    # Z

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void

    :cond_1
    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_0
    return-void

    :cond_1
    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    goto :goto_0
.end method

.method public timeShiftPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPause()V

    :cond_0
    return-void
.end method

.method public timeShiftResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftResume()V

    :cond_0
    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftSeekTo(J)V

    :cond_0
    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iget-object v2, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->unblockContent(Landroid/media/tv/TvContentRating;)V

    :cond_0
    return-void
.end method

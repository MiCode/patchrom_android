.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private final mStatusBarManagerId:I

.field protected mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .prologue
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .local v0, "anim":Z
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v4, :cond_0

    if-nez p4, :cond_0

    if-nez v1, :cond_0

    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :goto_0
    return v2

    .restart local v0    # "anim":Z
    .restart local v1    # "vis":Z
    :cond_0
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v2, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_3
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    goto :goto_0
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    :goto_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    or-int/2addr p2, v4

    .end local v0    # "fl":I
    :cond_0
    :goto_1
    return p2

    .restart local v0    # "fl":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    goto :goto_0

    :cond_2
    and-int/2addr p2, v3

    goto :goto_1

    .end local v0    # "fl":I
    :cond_3
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    and-int v1, p2, v3

    and-int v2, p3, v4

    or-int p2, v1, v2

    goto :goto_1
.end method

.method public checkHiddenLw()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    iget-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public checkShowTransientBarLw()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    iput-boolean v6, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .local v4, "wasVis":Z
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .local v3, "wasAnim":Z
    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .local v0, "change":Z
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .local v2, "stateChanged":Z
    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v7, v6

    goto :goto_0

    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_3
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    :cond_0
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .locals 4
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    move v0, p3

    .end local p3    # "vis":I
    .local v0, "vis":I
    :goto_0
    return v0

    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz p1, :cond_8

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v1, :cond_4

    const v1, 0x8000

    or-int/2addr p3, v1

    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    :cond_4
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    and-int/lit8 p3, p3, -0x2

    :cond_5
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_6

    or-int v1, p3, p2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_7
    move v0, p3

    .end local p3    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0

    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

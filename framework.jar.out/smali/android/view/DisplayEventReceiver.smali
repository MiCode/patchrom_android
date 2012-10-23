.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p0, v0}, Landroid/view/DisplayEventReceiver;->nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchVsync(JI)V
    .locals 0
    .parameter "timestampNanos"
    .parameter "frame"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/DisplayEventReceiver;->onVsync(JI)V

    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeScheduleVsync(I)V
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/DisplayEventReceiver;->nativeDispose(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onVsync(JI)V
    .locals 0
    .parameter "timestampNanos"
    .parameter "frame"

    .prologue
    return-void
.end method

.method public scheduleVsync()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-nez v0, :cond_0

    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    invoke-static {v0}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(I)V

    goto :goto_0
.end method

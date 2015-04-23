.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    new-instance v0, Landroid/os/CountDownTimer$1;

    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Landroid/os/CountDownTimer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    iget-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/os/CountDownTimer;)J
    .locals 2
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/os/CountDownTimer;)J
    .locals 2
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Landroid/os/CountDownTimer;
    .locals 6

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .end local p0    # "this":Landroid/os/CountDownTimer;
    .local v0, "this":Landroid/os/CountDownTimer;
    :goto_0
    monitor-exit p0

    return-object v0

    .end local v0    # "this":Landroid/os/CountDownTimer;
    .restart local p0    # "this":Landroid/os/CountDownTimer;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .end local p0    # "this":Landroid/os/CountDownTimer;
    .restart local v0    # "this":Landroid/os/CountDownTimer;
    goto :goto_0

    .end local v0    # "this":Landroid/os/CountDownTimer;
    .restart local p0    # "this":Landroid/os/CountDownTimer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

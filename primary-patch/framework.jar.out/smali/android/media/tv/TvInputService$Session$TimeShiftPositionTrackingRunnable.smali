.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputService$Session;
    .param p2, "x1"    # Landroid/media/tv/TvInputService$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v4}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    move-result-wide v2

    .local v2, "startPositionMs":J
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # setter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$902(Landroid/media/tv/TvInputService$Session;J)J

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # invokes: Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStartPositionChanged(J)V
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->access$1000(Landroid/media/tv/TvInputService$Session;J)V

    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v4}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    move-result-wide v0

    .local v0, "currentPositionMs":J
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const-string v4, "TvInputService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") cannot be earlier than"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " start position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). Reset to the start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "position."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mStartPositionMs:J
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$900(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v0

    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->access$1100(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # setter for: Landroid/media/tv/TvInputService$Session;->mCurrentPositionMs:J
    invoke-static {v4, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1102(Landroid/media/tv/TvInputService$Session;J)J

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # invokes: Landroid/media/tv/TvInputService$Session;->notifyTimeShiftCurrentPositionChanged(J)V
    invoke-static {v4, v0, v1}, Landroid/media/tv/TvInputService$Session;->access$1200(Landroid/media/tv/TvInputService$Session;J)V

    :cond_2
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    # getter for: Landroid/media/tv/TvInputService$Session;->mTimeShiftPositionTrackingRunnable:Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->access$1300(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

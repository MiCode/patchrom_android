.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;
    invoke-static {v6}, Landroid/media/MediaSync;->access$000(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mPlaybackRate:F
    invoke-static {v6}, Landroid/media/MediaSync;->access$100(Landroid/media/MediaSync;)F

    move-result v6

    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-nez v6, :cond_0

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;
    invoke-static {v6}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;
    invoke-static {v6}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    .local v0, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    iget-object v6, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "size":I
    if-lez v4, :cond_2

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v6}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    :try_start_2
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v6}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v6}, Landroid/media/MediaSync;->access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    iget-object v8, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v4, v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v5

    .local v5, "sizeWritten":I
    if-lez v5, :cond_5

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    # invokes: Landroid/media/MediaSync;->native_updateQueuedAudioData(IJ)V
    invoke-static {v6, v4, v8, v9}, Landroid/media/MediaSync;->access$400(Landroid/media/MediaSync;IJ)V

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    :cond_3
    if-ne v5, v4, :cond_5

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # invokes: Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    invoke-static {v6, v0}, Landroid/media/MediaSync;->access$500(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;
    invoke-static {v6}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # getter for: Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;
    invoke-static {v6}, Landroid/media/MediaSync;->access$200(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x0

    # invokes: Landroid/media/MediaSync;->postRenderAudio(J)V
    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    :cond_4
    monitor-exit v7

    goto/16 :goto_0

    .end local v5    # "sizeWritten":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v6, "MediaSync"

    const-string v8, "could not start audio track"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v5    # "sizeWritten":I
    :cond_5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    # invokes: Landroid/media/MediaSync;->native_getPlayTimeForPendingAudioFrames()J
    invoke-static {v8}, Landroid/media/MediaSync;->access$700(Landroid/media/MediaSync;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .local v2, "pendingTimeMs":J
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    # invokes: Landroid/media/MediaSync;->postRenderAudio(J)V
    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->access$600(Landroid/media/MediaSync;J)V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

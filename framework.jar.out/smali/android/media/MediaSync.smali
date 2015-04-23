.class public final Landroid/media/MediaSync;
.super Ljava/lang/Object;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSync$AudioBuffer;,
        Landroid/media/MediaSync$OnErrorListener;,
        Landroid/media/MediaSync$Callback;
    }
.end annotation


# static fields
.field private static final CB_RETURN_AUDIO_BUFFER:I = 0x1

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final MEDIASYNC_ERROR_AUDIOTRACK_FAIL:I = 0x1

.field public static final MEDIASYNC_ERROR_SURFACE_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSync"


# instance fields
.field private mAudioBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaSync$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioHandler:Landroid/os/Handler;

.field private final mAudioLock:Ljava/lang/Object;

.field private mAudioLooper:Landroid/os/Looper;

.field private mAudioThread:Ljava/lang/Thread;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCallback:Landroid/media/MediaSync$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

.field private mOnErrorListenerHandler:Landroid/os/Handler;

.field private final mOnErrorListenerLock:Ljava/lang/Object;

.field private mPlaybackRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaSync;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    iput-object v1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    iput-object v1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    invoke-direct {p0}, Landroid/media/MediaSync;->native_setup()V

    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaSync;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaSync;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaSync;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/MediaSync;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaSync;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaSync;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaSync;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaSync;->native_updateQueuedAudioData(IJ)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaSync;
    .param p1, "x1"    # Landroid/media/MediaSync$AudioBuffer;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaSync;J)V
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaSync;->postRenderAudio(J)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaSync;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    invoke-direct {p0}, Landroid/media/MediaSync;->native_getPlayTimeForPendingAudioFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaSync;

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    return-object v0
.end method

.method private createAudioThread()V
    .locals 2

    .prologue
    new-instance v0, Landroid/media/MediaSync$3;

    invoke-direct {v0, p0}, Landroid/media/MediaSync$3;-><init>(Landroid/media/MediaSync;)V

    iput-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getPlayTimeForPendingAudioFrames()J
.end method

.method private final native native_getTimestamp(Landroid/media/MediaTimestamp;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setAudioTrack(Landroid/media/AudioTrack;)V
.end method

.method private native native_setPlaybackParams(Landroid/media/PlaybackParams;)F
.end method

.method private final native native_setSurface(Landroid/view/Surface;)V
.end method

.method private native native_setSyncParams(Landroid/media/SyncParams;)F
.end method

.method private final native native_setup()V
.end method

.method private final native native_updateQueuedAudioData(IJ)V
.end method

.method private postRenderAudio(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaSync$1;

    invoke-direct {v1, p0}, Landroid/media/MediaSync$1;-><init>(Landroid/media/MediaSync;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    .locals 4
    .param p1, "audioBuffer"    # Landroid/media/MediaSync$AudioBuffer;

    .prologue
    iget-object v2, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    move-object v0, p0

    .local v0, "sync":Landroid/media/MediaSync;
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/MediaSync$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/media/MediaSync$2;-><init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "sync":Landroid/media/MediaSync;
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final returnAudioBuffers()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    .local v0, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    invoke-direct {p0, v0}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    goto :goto_0

    .end local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/MediaSync;->native_finalize()V

    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaSync;->native_flush()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 4

    .prologue
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    invoke-direct {v1}, Landroid/media/MediaTimestamp;-><init>()V

    .local v1, "timestamp":Landroid/media/MediaTimestamp;
    invoke-direct {p0, v1}, Landroid/media/MediaSync;->native_getTimestamp(Landroid/media/MediaTimestamp;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .end local v1    # "timestamp":Landroid/media/MediaTimestamp;
    :goto_0
    return-object v1

    .restart local v1    # "timestamp":Landroid/media/MediaTimestamp;
    :cond_0
    move-object v1, v2

    goto :goto_0

    .end local v1    # "timestamp":Landroid/media/MediaTimestamp;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    move-object v1, v2

    goto :goto_0
.end method

.method public queueAudio(Ljava/nio/ByteBuffer;IJ)V
    .locals 5
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferId"    # I
    .param p3, "presentationTimeUs"    # J

    .prologue
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is NOT set or audio thread is not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    new-instance v2, Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/media/MediaSync$AudioBuffer;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/media/MediaSync;->returnAudioBuffers()V

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/media/MediaSync;->setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V

    invoke-direct {p0}, Landroid/media/MediaSync;->native_release()V

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setAudioTrack(Landroid/media/AudioTrack;)V

    iput-object p1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaSync;->createAudioThread()V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/MediaSync$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v2, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_0

    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    monitor-exit v2

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0

    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setOnErrorListener(Landroid/media/MediaSync$OnErrorListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/MediaSync$OnErrorListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v2, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_0

    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    monitor-exit v2

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    goto :goto_0

    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setPlaybackParams(Landroid/media/PlaybackParams;)F

    move-result v0

    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSyncParams(Landroid/media/SyncParams;)V
    .locals 4
    .param p1, "params"    # Landroid/media/SyncParams;

    .prologue
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSyncParams(Landroid/media/SyncParams;)F

    move-result v0

    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

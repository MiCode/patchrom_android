.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCodec:Landroid/media/MediaCodec;

.field final synthetic this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .locals 0
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    return-void
.end method

.method private handleCallback(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .local v0, "index":I
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$300(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/media/MediaCodec;->access$400(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    # invokes: Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    invoke-static {v2, v4, v0}, Landroid/media/MediaCodec;->access$500(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "index":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    .restart local v0    # "index":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$300(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/media/MediaCodec;->access$600(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    # invokes: Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    invoke-static {v2, v4, v0, v1}, Landroid/media/MediaCodec;->access$700(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .end local v0    # "index":I
    .end local v1    # "info":Landroid/media/MediaCodec$BufferInfo;
    :pswitch_2
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v5, Landroid/media/MediaFormat;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v5, v2}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec$Callback;

    # setter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v1, v0}, Landroid/media/MediaCodec;->access$002(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/MediaCodec;->access$100(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-media-time-us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "mediaTimeUs":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-system-nano"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "systemNano":Ljava/lang/Object;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;
    invoke-static {v0}, Landroid/media/MediaCodec;->access$200(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v10

    goto :goto_0

    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "mediaTimeUs":Ljava/lang/Object;
    .end local v9    # "systemNano":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6    # "i":I
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "mediaTimeUs":Ljava/lang/Object;
    .restart local v9    # "systemNano":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;
    invoke-static {v0}, Landroid/media/MediaCodec;->access$200(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    check-cast v8, Ljava/lang/Long;

    .end local v8    # "mediaTimeUs":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast v9, Ljava/lang/Long;

    .end local v9    # "systemNano":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

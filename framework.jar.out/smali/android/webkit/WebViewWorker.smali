.class final Landroid/webkit/WebViewWorker;
.super Landroid/os/Handler;
.source "WebViewWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewWorker$CacheData;,
        Landroid/webkit/WebViewWorker$CacheEncoding;,
        Landroid/webkit/WebViewWorker$CacheSaveData;,
        Landroid/webkit/WebViewWorker$CacheCreateData;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_TRANSACTION_TICKER_INTERVAL:I = 0xea60

.field static final MSG_ADD_HTTPLOADER:I = 0x66

.field static final MSG_ADD_STREAMLOADER:I = 0x65

.field static final MSG_APPEND_CACHE:I = 0x69

.field static final MSG_CACHE_TRANSACTION_TICKER:I = 0x6e

.field static final MSG_CLEAR_CACHE:I = 0x6d

.field static final MSG_CREATE_CACHE:I = 0x67

.field static final MSG_PAUSE_CACHE_TRANSACTION:I = 0x6f

.field static final MSG_REMOVE_CACHE:I = 0x6b

.field static final MSG_RESUME_CACHE_TRANSACTION:I = 0x70

.field static final MSG_SAVE_CACHE:I = 0x6a

.field static final MSG_TRIM_CACHE:I = 0x6c

.field static final MSG_UPDATE_CACHE_ENCODING:I = 0x68

.field private static final THREAD_NAME:Ljava/lang/String; = "WebViewWorkerThread"

.field private static mCacheResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/webkit/LoadListener;",
            "Landroid/webkit/CacheManager$CacheResult;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheTickersBlocked:Z

.field private static sWorkerHandler:Landroid/webkit/WebViewWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    const-class v0, Landroid/webkit/WebViewWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    .line 98
    sput-boolean v1, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method

.method static declared-synchronized getHandler()Landroid/webkit/WebViewWorker;
    .locals 4

    .prologue
    .line 81
    const-class v2, Landroid/webkit/WebViewWorker;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;

    if-nez v1, :cond_0

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WebViewWorkerThread"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Landroid/webkit/WebViewWorker;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/webkit/WebViewWorker;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;

    .line 88
    :cond_0
    sget-object v1, Landroid/webkit/WebViewWorker;->sWorkerHandler:Landroid/webkit/WebViewWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/32 v2, 0xea60

    const/16 v1, 0x6e

    const/4 v6, 0x0

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/webkit/StreamLoader;

    .line 119
    .local v11, loader:Landroid/webkit/StreamLoader;
    invoke-virtual {v11}, Landroid/webkit/StreamLoader;->load()V

    goto :goto_0

    .line 123
    .end local v11           #loader:Landroid/webkit/StreamLoader;
    :pswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/webkit/FrameLoader;

    .line 124
    .local v11, loader:Landroid/webkit/FrameLoader;
    invoke-virtual {v11}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    goto :goto_0

    .line 128
    .end local v11           #loader:Landroid/webkit/FrameLoader;
    :pswitch_2
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebViewWorker$CacheCreateData;

    .line 130
    .local v8, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    iget-object v0, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    iget v1, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    iget-object v2, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    iget-object v3, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    iget-wide v4, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v7

    .line 133
    .local v7, cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v7, :cond_2

    .line 134
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    .end local v7           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :pswitch_3
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebViewWorker$CacheEncoding;

    .line 143
    .local v8, data:Landroid/webkit/WebViewWorker$CacheEncoding;
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CacheManager$CacheResult;

    .line 145
    .restart local v7       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v7, :cond_0

    .line 146
    iget-object v0, v8, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    iput-object v0, v7, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 151
    .end local v7           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheEncoding;
    :pswitch_4
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebViewWorker$CacheData;

    .line 153
    .local v8, data:Landroid/webkit/WebViewWorker$CacheData;
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CacheManager$CacheResult;

    .line 155
    .restart local v7       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v7, :cond_5

    .line 156
    iget-wide v0, v7, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iget-object v2, v8, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget v2, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v7, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 157
    iget-wide v0, v7, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 158
    invoke-static {v7}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    .line 159
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    :goto_1
    iget-object v0, v8, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto/16 :goto_0

    .line 162
    :cond_6
    :try_start_0
    iget-object v0, v7, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget-object v1, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v2, 0x0

    iget-object v3, v8, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    iget v3, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v9

    .line 165
    .local v9, e:Ljava/io/IOException;
    invoke-static {v7}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    .line 166
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    .end local v7           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheData;
    .end local v9           #e:Ljava/io/IOException;
    :pswitch_5
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :cond_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebViewWorker$CacheSaveData;

    .line 176
    .local v8, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CacheManager$CacheResult;

    .line 178
    .restart local v7       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v7, :cond_0

    .line 179
    iget-object v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    iget-wide v1, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    invoke-static {v0, v1, v2, v7}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 180
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    iget-object v1, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    .end local v7           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :pswitch_6
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_8
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/webkit/LoadListener;

    .line 187
    .local v10, listener:Landroid/webkit/LoadListener;
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CacheManager$CacheResult;

    .line 188
    .restart local v7       #cache:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v7, :cond_0

    .line 189
    invoke-static {v7}, Landroid/webkit/CacheManager;->cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z

    .line 190
    sget-object v0, Landroid/webkit/WebViewWorker;->mCacheResultMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 195
    .end local v7           #cache:Landroid/webkit/CacheManager$CacheResult;
    .end local v10           #listener:Landroid/webkit/LoadListener;
    :pswitch_7
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_9
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    goto/16 :goto_0

    .line 200
    :pswitch_8
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_a
    invoke-static {}, Landroid/webkit/CacheManager;->clearCache()V

    goto/16 :goto_0

    .line 205
    :pswitch_9
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_b
    sget-boolean v0, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Landroid/webkit/CacheManager;->endTransaction()Z

    .line 208
    invoke-static {}, Landroid/webkit/CacheManager;->startTransaction()Z

    .line 209
    invoke-virtual {p0, v1, v2, v3}, Landroid/webkit/WebViewWorker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 215
    :pswitch_a
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_c
    invoke-static {}, Landroid/webkit/CacheManager;->disableTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    .line 218
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    goto/16 :goto_0

    .line 223
    :pswitch_b
    sget-boolean v0, Landroid/webkit/WebViewWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_d
    invoke-static {}, Landroid/webkit/CacheManager;->enableTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sput-boolean v6, Landroid/webkit/WebViewWorker;->mCacheTickersBlocked:Z

    .line 226
    invoke-virtual {p0, v1, v2, v3}, Landroid/webkit/WebViewWorker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.class public final Landroid/webkit/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebStorage$Origin;,
        Landroid/webkit/WebStorage$QuotaUpdater;
    }
.end annotation


# static fields
.field private static final CALLBACK:Ljava/lang/String; = "callback"

.field static final DELETE_ALL:I = 0x3

.field static final DELETE_ORIGIN:I = 0x2

.field static final GET_ORIGINS:I = 0x4

.field static final GET_QUOTA_ORIGIN:I = 0x6

.field static final GET_USAGE_ORIGIN:I = 0x5

.field private static final ORIGIN:Ljava/lang/String; = "origin"

.field private static final ORIGINS:Ljava/lang/String; = "origins"

.field private static final QUOTA:Ljava/lang/String; = "quota"

.field static final RETURN_ORIGINS:I = 0x0

.field static final RETURN_QUOTA_ORIGIN:I = 0x2

.field static final RETURN_USAGE_ORIGIN:I = 0x1

.field static final SET_QUOTA_ORIGIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "webstorage"

.field static final UPDATE:I = 0x0

.field private static final USAGE:Ljava/lang/String; = "usage"

.field private static sWebStorage:Landroid/webkit/WebStorage;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOrigins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Landroid/webkit/WebStorage;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/webkit/WebStorage;->nativeDeleteOrigin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Landroid/webkit/WebStorage;->nativeDeleteAllData()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebStorage;->postUIMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Landroid/webkit/WebStorage;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/webkit/WebStorage;

    invoke-direct {v0}, Landroid/webkit/WebStorage;-><init>()V

    sput-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    .line 397
    :cond_0
    sget-object v0, Landroid/webkit/WebStorage;->sWebStorage:Landroid/webkit/WebStorage;

    return-object v0
.end method

.method private static native nativeDeleteAllData()V
.end method

.method private static native nativeDeleteOrigin(Ljava/lang/String;)V
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private static native nativeGetQuotaForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeGetUsageForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeSetAppCacheMaximumSize(J)V
.end method

.method private static native nativeSetQuotaForOrigin(Ljava/lang/String;J)V
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUIMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 384
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    :cond_0
    return-void
.end method

.method private syncValues()V
    .locals 9

    .prologue
    .line 417
    invoke-static {}, Landroid/webkit/WebStorage;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v8

    .line 418
    .local v8, tmp:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    .line 419
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, origin:Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebStorage$Origin;

    invoke-static {v1}, Landroid/webkit/WebStorage;->nativeGetQuotaForOrigin(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Landroid/webkit/WebStorage;->nativeGetUsageForOrigin(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJLandroid/webkit/WebStorage$1;)V

    .line 423
    .local v0, website:Landroid/webkit/WebStorage$Origin;
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    .end local v0           #website:Landroid/webkit/WebStorage$Origin;
    .end local v1           #origin:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/webkit/WebStorage$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebStorage$2;-><init>(Landroid/webkit/WebStorage;)V

    iput-object v0, p0, Landroid/webkit/WebStorage;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createUIHandler()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/webkit/WebStorage$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebStorage$1;-><init>(Landroid/webkit/WebStorage;)V

    iput-object v0, p0, Landroid/webkit/WebStorage;->mUIHandler:Landroid/os/Handler;

    .line 162
    :cond_0
    return-void
.end method

.method public deleteAllData()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Landroid/webkit/WebStorage;->nativeDeleteAllData()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 3
    .parameter "origin"

    .prologue
    const/4 v2, 0x0

    .line 341
    if-eqz p1, :cond_0

    .line 342
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {p1}, Landroid/webkit/WebStorage;->nativeDeleteOrigin(Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x2

    new-instance v1, Landroid/webkit/WebStorage$Origin;

    invoke-direct {v1, p1, v2}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;Landroid/webkit/WebStorage$1;)V

    invoke-static {v2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    if-eqz p1, :cond_0

    .line 256
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 258
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method getOriginsSync()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/webkit/WebStorage;->update()V

    .line 272
    iget-object v0, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 5
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 304
    if-nez p2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 307
    :cond_0
    if-nez p1, :cond_1

    .line 308
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_1
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 313
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebStorage$Origin;

    .line 314
    .local v1, website:Landroid/webkit/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    .end local v1           #website:Landroid/webkit/WebStorage$Origin;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v0, values:Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const/4 v2, 0x6

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 5
    .parameter "origin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 281
    if-nez p2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    if-nez p1, :cond_1

    .line 285
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v2, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 290
    iget-object v2, p0, Landroid/webkit/WebStorage;->mOrigins:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebStorage$Origin;

    .line 291
    .local v1, website:Landroid/webkit/WebStorage$Origin;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    .end local v1           #website:Landroid/webkit/WebStorage$Origin;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v0, values:Ljava/util/HashMap;
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v2, 0x5

    invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setAppCacheMaximumSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 368
    invoke-static {p1, p2}, Landroid/webkit/WebStorage;->nativeSetAppCacheMaximumSize(J)V

    .line 369
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 3
    .parameter "origin"
    .parameter "quota"

    .prologue
    const/4 v2, 0x0

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {p1, p2, p3}, Landroid/webkit/WebStorage;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x1

    new-instance v1, Landroid/webkit/WebStorage$Origin;

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JLandroid/webkit/WebStorage$1;)V

    invoke-static {v2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Landroid/webkit/WebStorage;->syncValues()V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebStorage;->postMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/android/okhttp/OkCacheContainer;
.implements Ljava/io/Closeable;


# instance fields
.field private final delegate:Lcom/android/okhttp/AndroidShimResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/AndroidShimResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/AndroidShimResponseCache;

    .prologue
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    .prologue
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/http/HttpResponseCache;

    .end local v0    # "installed":Ljava/net/ResponseCache;
    :goto_0
    return-object v0

    .restart local v0    # "installed":Ljava/net/ResponseCache;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v6, Landroid/net/http/HttpResponseCache;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .local v1, "installed":Ljava/net/ResponseCache;
    instance-of v5, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v5, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/net/http/HttpResponseCache;

    move-object v2, v0

    .local v2, "installedResponseCache":Landroid/net/http/HttpResponseCache;
    iget-object v4, v2, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    .local v4, "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    invoke-virtual {v4, p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->isEquivalent(Ljava/io/File;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .end local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    :goto_0
    monitor-exit v6

    return-object v2

    .restart local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    .end local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;

    move-result-object v4

    .restart local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v4}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/AndroidShimResponseCache;)V

    .local v3, "newResponseCache":Landroid/net/http/HttpResponseCache;
    invoke-static {v3}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .end local v1    # "installed":Ljava/net/ResponseCache;
    .end local v3    # "newResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->delete()V

    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/AndroidShimResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v1}, Lcom/android/okhttp/AndroidShimResponseCache;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE_RECHECK:J = 0xea60L

.field private static final STANDARD_ESS:Z = true


# instance fields
.field private final mANQPCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSweep:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    return-void
.end method


# virtual methods
.method public clear(ZZ)V
    .locals 12
    .param p1, "all"    # Z
    .param p2, "debug"    # Z

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v7

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    iget-wide v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    .local v2, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retired "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2    # "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    :cond_5
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last sweep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v2, 0x1

    # invokes: Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->access$000(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/ANQPData;->isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 10
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->access$000(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-direct {v5, p1, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BSSID %012x already in cache: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x1

    # invokes: Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->access$000(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

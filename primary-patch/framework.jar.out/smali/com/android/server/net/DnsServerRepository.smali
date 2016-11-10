.class Lcom/android/server/net/DnsServerRepository;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# static fields
.field public static final NUM_CURRENT_SERVERS:I = 0x3

.field public static final NUM_SERVERS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "DnsServerRepository"


# instance fields
.field private mAllServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    return-void
.end method

.method private declared-synchronized updateCurrentServers()Z
    .locals 10

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    const/4 v0, 0x0

    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    const/16 v7, 0xc

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/DnsServerEntry;

    iget-wide v8, v7, Lcom/android/server/net/DnsServerEntry;->expiry:J

    cmp-long v7, v8, v4

    if-gez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/net/DnsServerEntry;

    .local v6, "removed":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v6    # "removed":Lcom/android/server/net/DnsServerEntry;
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/DnsServerEntry;

    .local v1, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v1, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    or-int/2addr v0, v7

    goto :goto_1

    .end local v1    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_2
    monitor-exit p0

    return v0

    .end local v0    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized updateExistingEntry(Ljava/net/InetAddress;J)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "expiry"    # J

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/DnsServerEntry;

    .local v0, "existing":Lcom/android/server/net/DnsServerEntry;
    if-eqz v0, :cond_0

    iput-wide p2, v0, Lcom/android/server/net/DnsServerEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "existing":Lcom/android/server/net/DnsServerEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addServers(J[Ljava/lang/String;)Z
    .locals 15
    .param p1, "lifetime"    # J
    .param p3, "addresses"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    const-wide/16 v12, 0x3e8

    mul-long v12, v12, p1

    add-long v6, v10, v12

    .local v6, "expiry":J
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v1, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "addressString":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "address":Ljava/net/InetAddress;
    :try_start_2
    invoke-direct {p0, v0, v6, v7}, Lcom/android/server/net/DnsServerRepository;->updateExistingEntry(Ljava/net/InetAddress;J)Z

    move-result v9

    if-nez v9, :cond_0

    cmp-long v9, v6, v10

    if-lez v9, :cond_0

    new-instance v3, Lcom/android/server/net/DnsServerEntry;

    invoke-direct {v3, v0, v6, v7}, Lcom/android/server/net/DnsServerEntry;-><init>(Ljava/net/InetAddress;J)V

    .local v3, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v9, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v3    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .end local v1    # "addressString":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v9, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/net/DnsServerRepository;->updateCurrentServers()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    monitor-exit p0

    return v9

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "expiry":J
    .end local v8    # "len$":I
    .end local v10    # "now":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setDnsServersOn(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

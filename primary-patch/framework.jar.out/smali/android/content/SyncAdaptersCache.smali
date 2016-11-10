.class public Landroid/content/SyncAdaptersCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "SyncAdaptersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdaptersCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_NAME:Ljava/lang/String; = "sync-adapter"

.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final SERVICE_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;


# instance fields
.field private mAuthorityToSyncAdapters:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/SyncAdaptersCache$MySerializer;

    invoke-direct {v0}, Landroid/content/SyncAdaptersCache$MySerializer;-><init>()V

    sput-object v0, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "android.content.SyncAdapter"

    const-string v3, "android.content.SyncAdapter"

    const-string v4, "sync-adapter"

    sget-object v5, Landroid/content/SyncAdaptersCache;->sSerializer:Landroid/content/SyncAdaptersCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    iget-object v7, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .local v0, "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .restart local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    monitor-exit v7

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v4

    .local v4, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncAdapterType;

    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .local v5, "syncAdapterPackages":[Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    goto :goto_0
.end method

.method protected onServicesChangedLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .local v0, "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    return-void

    .end local v0    # "adapterMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/content/SyncAdaptersCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/content/SyncAdaptersCache;->mAuthorityToSyncAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onUserRemoved(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    sget-object v0, Lcom/android/internal/R$styleable;->SyncAdapter:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "authority":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "accountType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .local v3, "userVisible":Z
    const/4 v0, 0x4

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .local v4, "supportsUploading":Z
    const/4 v0, 0x6

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .local v5, "isAlwaysSyncable":Z
    const/4 v0, 0x5

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .local v6, "allowParallelSyncs":Z
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "settingsActivity":Ljava/lang/String;
    new-instance v0, Landroid/content/SyncAdapterType;

    invoke-direct/range {v0 .. v7}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "userVisible":Z
    .end local v4    # "supportsUploading":Z
    .end local v5    # "isAlwaysSyncable":Z
    .end local v6    # "allowParallelSyncs":Z
    .end local v7    # "settingsActivity":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/SyncAdaptersCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(ILjava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;
    .locals 11
    .parameter "userId"
    .parameter "packageName"
    .parameter "resId"
    .parameter "styleable"

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/WeakHashMap;

    .local v5, packages:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/android/server/AttributeCache$Package;>;"
    if-nez v5, :cond_0

    new-instance v5, Ljava/util/WeakHashMap;

    .end local v5           #packages:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/android/server/AttributeCache$Package;>;"
    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    .restart local v5       #packages:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/android/server/AttributeCache$Package;>;"
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v5, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Package;

    .local v6, pkg:Lcom/android/server/AttributeCache$Package;
    const/4 v4, 0x0

    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v2, 0x0

    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_1

    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v4, Ljava/util/HashMap;

    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    check-cast v2, Lcom/android/server/AttributeCache$Entry;

    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v2

    :goto_0
    return-object v7

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p2, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #context:Landroid/content/Context;
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v5           #packages:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/android/server/AttributeCache$Package;>;"
    .end local v6           #pkg:Lcom/android/server/AttributeCache$Package;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .restart local v5       #packages:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/android/server/AttributeCache$Package;>;"
    .restart local v6       #pkg:Lcom/android/server/AttributeCache$Package;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    .end local v6           #pkg:Lcom/android/server/AttributeCache$Package;
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .restart local v6       #pkg:Lcom/android/server/AttributeCache$Package;
    invoke-virtual {v5, p2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #context:Landroid/content/Context;
    :cond_3
    move-object v3, v2

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .local v3, ent:Lcom/android/server/AttributeCache$Entry;
    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<[ILcom/android/server/AttributeCache$Entry;>;"
    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    new-instance v2, Lcom/android/server/AttributeCache$Entry;

    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v9, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v9, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    :try_start_5
    invoke-virtual {v4, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    monitor-exit p0

    move-object v7, v2

    goto :goto_0

    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    .restart local v3       #ent:Lcom/android/server/AttributeCache$Entry;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUser(I)V
    .locals 1
    .parameter "userId"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, changes:I
    const v1, -0x400000a1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #changes:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public Lcom/android/server/pm/KeySetManager;
.super Ljava/lang/Object;
.source "KeySetManager.java"


# static fields
.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field private static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManager"

.field private static lastIssuedKeyId:J

.field private static lastIssuedKeySetId:J


# instance fields
.field private final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockObject:Ljava/lang/Object;

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packages:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    return-void
.end method

.method private addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Landroid/content/pm/KeySet;"
        }
    .end annotation

    .prologue
    .local p1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Provided keys cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .local v0, addedKeyIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    .local v6, k:Ljava/security/PublicKey;
    invoke-direct {p0, v6}, Lcom/android/server/pm/KeySetManager;->addPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v4

    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4           #id:J
    .end local v6           #k:Ljava/security/PublicKey;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->getIdFromKeyIdsLocked(Ljava/util/Set;)J

    move-result-wide v1

    .local v1, existingKeySetId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/KeySet;

    :goto_1
    return-object v8

    :cond_2
    new-instance v7, Landroid/content/pm/KeySet;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-direct {v7, v8}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    .local v7, ks:Landroid/content/pm/KeySet;
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreeKeySetIDLocked()J

    move-result-wide v4

    .restart local v4       #id:J
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v8, v7

    goto :goto_1
.end method

.method private addPublicKeyLocked(Ljava/security/PublicKey;)J
    .locals 6
    .parameter "key"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdForPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v0

    .local v0, existingKeyId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .end local v0           #existingKeyId:J
    :goto_0
    return-wide v0

    .restart local v0       #existingKeyId:J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreePublicKeyIdLocked()J

    move-result-wide v2

    .local v2, id:J
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v0, v2

    goto :goto_0
.end method

.method private getFreeKeySetIDLocked()J
    .locals 4

    .prologue
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLocked()J
    .locals 4

    .prologue
    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLocked(Landroid/content/pm/KeySet;)J
    .locals 4
    .parameter "ks"

    .prologue
    const/4 v0, 0x0

    .local v0, keySetIndex:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/KeySet;

    .local v1, value:Landroid/content/pm/KeySet;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .end local v1           #value:Landroid/content/pm/KeySet;
    :goto_1
    return-wide v2

    .restart local v1       #value:Landroid/content/pm/KeySet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #value:Landroid/content/pm/KeySet;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private getIdForPublicKeyLocked(Ljava/security/PublicKey;)J
    .locals 6
    .parameter "k"

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .local v1, encodedPublicKey:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, publicKeyIndex:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .local v3, value:Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .local v0, encodedExistingKey:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .end local v0           #encodedExistingKey:Ljava/lang/String;
    .end local v3           #value:Ljava/security/PublicKey;
    :goto_1
    return-wide v4

    .restart local v0       #encodedExistingKey:Ljava/lang/String;
    .restart local v3       #value:Ljava/security/PublicKey;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #encodedExistingKey:Ljava/lang/String;
    .end local v3           #value:Ljava/security/PublicKey;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method private getIdFromKeyIdsLocked(Ljava/util/Set;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, publicKeyIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, keyMapIndex:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .end local v1           #value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    return-wide v2

    .restart local v1       #value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .local v6, p:Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unknown package"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Package has no keySet data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, knownKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_2

    aget-wide v3, v0, v1

    .local v3, ks:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #ks:J
    :cond_2
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-wide v3, v0, v1

    .restart local v3       #ks:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #ks:J
    :cond_3
    return-object v2
.end method


# virtual methods
.method public addDefinedKeySetToPackage(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"
    .parameter
    .parameter "alias"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v2

    .local v2, ks:Landroid/content/pm/KeySet;
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .local v3, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "Unknown package"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2           #ks:Landroid/content/pm/KeySet;
    .end local v3           #pkg:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #ks:Landroid/content/pm/KeySet;
    .restart local v3       #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    .local v0, id:J
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addSigningKeySetToPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 15
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, signingKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v12, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v7

    .local v7, ks:Landroid/content/pm/KeySet;
    invoke-direct {p0, v7}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v4

    .local v4, id:J
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .local v10, publicKeyIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v10, :cond_2

    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "Got invalid KeySet id"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v4           #id:J
    .end local v7           #ks:Landroid/content/pm/KeySet;
    .end local v10           #publicKeyIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v4       #id:J
    .restart local v7       #ks:Landroid/content/pm/KeySet;
    .restart local v10       #publicKeyIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .local v9, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v9, :cond_3

    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "No such package!"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    .local v1, arr$:[J
    array-length v8, v1

    .local v8, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v8, :cond_5

    aget-wide v13, v1, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .local v6, keySetID:Ljava/lang/Long;
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .local v2, definedKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #definedKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6           #keySetID:Ljava/lang/Long;
    :cond_5
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 17
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v14

    const/4 v11, 0x0

    .local v11, printedHeader:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, keySetPackage:Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_1
    if-nez v11, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const-string v13, "Key Set Manager:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .local v10, pkg:Lcom/android/server/pm/PackageSetting;
    const-string v13, "  ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v13, :cond_0

    const/4 v12, 0x0

    .local v12, printedLabel:Z
    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v12, :cond_4

    const-string v13, "      KeySets Aliases: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v13, 0x3d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #keySetPackage:Ljava/lang/String;
    .end local v10           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v12           #printedLabel:Z
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v2       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #keySetPackage:Ljava/lang/String;
    .restart local v10       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v12       #printedLabel:Z
    :cond_4
    :try_start_1
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    if-eqz v12, :cond_6

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    .local v1, arr$:[J
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v9, :cond_8

    aget-wide v6, v1, v5

    .local v6, keySetId:J
    if-nez v12, :cond_7

    const-string v13, "      Defined KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .end local v6           #keySetId:J
    :cond_8
    if-eqz v12, :cond_9

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v1

    array-length v9, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_b

    aget-wide v6, v1, v5

    .restart local v6       #keySetId:J
    if-nez v12, :cond_a

    const-string v13, "      Signing KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .end local v6           #keySetId:J
    :cond_b
    if-eqz v12, :cond_0

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #arr$:[J
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v5           #i$:I
    .end local v8           #keySetPackage:Ljava/lang/String;
    .end local v9           #len$:I
    .end local v10           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v12           #printedLabel:Z
    :cond_c
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getIdByKeySet(Landroid/content/pm/KeySet;)J
    .locals 4
    .parameter "ks"

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKeySetByAliasAndPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 6
    .parameter "packageName"
    .parameter "alias"

    .prologue
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, p:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Unknown package"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #p:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #p:Lcom/android/server/pm/PackageSetting;
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package has no keySet data"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .local v0, keySetId:J
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getKeySetById(J)Landroid/content/pm/KeySet;
    .locals 2
    .parameter "id"

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/KeySet;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSigningKeySetsByPackageName(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, signingKeySets:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .local v5, p:Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v9, "Unknown package"

    invoke-direct {v7, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v5           #p:Lcom/android/server/pm/PackageSetting;
    .end local v6           #signingKeySets:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v5       #p:Lcom/android/server/pm/PackageSetting;
    .restart local v6       #signingKeySets:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/pm/KeySet;>;"
    :cond_0
    :try_start_1
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Package has no keySet data"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-wide v2, v0, v1

    .local v2, l:J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #l:J
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6
.end method

.method public packageIsSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 6
    .parameter "packageName"
    .parameter "ks"

    .prologue
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Invalid package name"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #pkg:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Package has no KeySet data"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    .local v0, id:J
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method

.method readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, outerDepth:I
    const-wide/16 v0, 0x0

    .local v0, currentKeySetId:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    if-ne v6, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_3

    :cond_1
    if-eq v6, v10, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, tagName:Ljava/lang/String;
    const-string v7, "keyset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v8, Landroid/content/pm/KeySet;

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    invoke-direct {v8, v9}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v7, "key-id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v2

    .local v2, id:J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #id:J
    .end local v5           #tagName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .local v0, currentKeySetId:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, tagName:Ljava/lang/String;
    const-string v4, "keys"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    const-string v4, "keysets"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2           #tagName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v5, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, tagName:Ljava/lang/String;
    const-string v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const-string v3, "lastIssuedKeyId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    goto :goto_0

    :cond_3
    const-string v3, "lastIssuedKeySetId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    goto :goto_0

    .end local v1           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v5, "identifier"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, encodedID:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, identifier:J
    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, encodedPublicKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .local v4, pub:Ljava/security/PublicKey;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeAppKeySetData(Ljava/lang/String;)V
    .locals 14
    .parameter "packageName"

    .prologue
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .local v0, deletableKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, deletableKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .local v6, knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .local v7, ks:Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/Set;

    .restart local v6       #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_0

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v0           #deletableKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #deletableKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7           #ks:Ljava/lang/Long;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0       #deletableKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v1       #deletableKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, pkgName:Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-direct {p0, v9}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .local v5, knownKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v6, Ljava/util/HashSet;

    .end local v6           #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .restart local v6       #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .restart local v7       #ks:Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    check-cast v6, Ljava/util/Set;

    .restart local v6       #knownKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_3

    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #knownKeySets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v7           #ks:Ljava/lang/Long;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .restart local v7       #ks:Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .end local v7           #ks:Ljava/lang/Long;
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .local v4, keyId:Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .end local v4           #keyId:Ljava/lang/Long;
    :cond_6
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .restart local v9       #pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .local v8, p:Lcom/android/server/pm/PackageSetting;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .restart local v7       #ks:Ljava/lang/Long;
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeSigningKeySet(J)V

    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeDefinedKeySet(J)V

    goto :goto_4

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #ks:Ljava/lang/Long;
    .end local v8           #p:Lcom/android/server/pm/PackageSetting;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_8
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method writeKeySetManagerLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .local v5, keySetIndex:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .local v1, id:J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .local v6, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .local v3, keyId:J
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .end local v3           #keyId:J
    :cond_0
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:J
    .end local v6           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    .local v4, pKeyIndex:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .local v1, id:J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .local v3, key:Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/KeySetManager;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .local v0, encodedKey:Ljava/lang/String;
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #encodedKey:Ljava/lang/String;
    .end local v1           #id:J
    .end local v3           #key:Ljava/security/PublicKey;
    :cond_0
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

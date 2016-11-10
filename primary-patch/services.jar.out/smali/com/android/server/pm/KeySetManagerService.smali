.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$1;,
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/ArraySet",
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
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
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
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .prologue
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Cannot add an empty set of keys!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/ArraySet;-><init>(I)V

    .local v0, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v6

    .local v6, "kSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/PublicKey;

    invoke-direct {p0, v8}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v4

    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "id":J
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v2

    .local v2, "existingKeySetId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/KeySetHandle;

    .local v7, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v7}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    :goto_2
    return-object v7

    .end local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v4

    .restart local v4    # "id":J
    new-instance v7, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v7, v4, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .restart local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    const-string v4, "Cannot add null public key!"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .local v0, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    move-wide v2, v0

    .end local v0    # "id":J
    .local v2, "id":J
    :goto_0
    return-wide v2

    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v4, v0, v1, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v2, v0

    .end local v0    # "id":J
    .restart local v2    # "id":J
    goto :goto_0
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "numRefCounts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v2, :cond_0

    const-string v9, "KeySetManagerService"

    const-string v10, "Encountered non-existent key-set reference when reading settings"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    goto :goto_1

    .end local v2    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .local v6, "orphanedKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .local v3, "numKeySets":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v9}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "KeySetManagerService"

    const-string v10, "Encountered key-set w/out package references when reading settings"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .local v8, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v7

    .local v7, "pkSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v1, v7, :cond_3

    iget-object v10, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v9}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "j":I
    .end local v7    # "pkSize":I
    .end local v8    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "numOrphans":I
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_5

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    return-void
.end method

.method private decrementKeySetLPw(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .local v3, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "pkSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method private decrementPublicKeyLPw(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .local v0, "pk":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method private getFreeKeySetIDLPw()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .locals 4
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :goto_1
    return-wide v2

    .restart local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "k"    # Ljava/security/PublicKey;

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "publicKeyIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v3

    .local v3, "value":Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .local v0, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :goto_1
    return-wide v4

    .restart local v0    # "encodedExistingKey":Ljava/lang/String;
    .restart local v3    # "value":Ljava/security/PublicKey;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .locals 4
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
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_1
    return-wide v2

    .restart local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v6

    .local v6, "prevDefinedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .local v4, "newKeySetAliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "defMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .local v7, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_0

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_2

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v3

    .local v3, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v3}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v7    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .local v5, "prevDefSize":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public addScannedPackageLPw(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const-string v1, "Attempted to add null pkg to ksms."

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v2, "Attempted to add null pkg to ksms."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    .local v4, "signingKeySetId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v0

    .local v0, "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_0
    return-void

    .restart local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .end local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v1

    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v2

    .local v2, "id":J
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto :goto_0
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "uaSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public assertScannedPackageValid(Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Passed invalid package to keyset validation."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .local v3, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has invalid signing-key-set."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_3
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .local v1, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has null defined key set."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "defMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has null/no public keys for defined key-sets."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "defMapSize":I
    .end local v2    # "i":I
    :cond_8
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .local v4, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_a
    return-void
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    const/4 v15, 0x0

    .local v15, "printedHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "keySetPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    :cond_1
    if-nez v15, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const-string v17, "Key Set Manager:"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .local v14, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v17, "  ["

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "]"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v16, 0x0

    .local v16, "printedLabel":Z
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v16, :cond_4

    const-string v17, "      KeySets Aliases: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x1

    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v17, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    if-eqz v16, :cond_6

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    const/16 v16, 0x0

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v17

    if-eqz v17, :cond_8

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v3

    .local v3, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .local v4, "dksSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_8

    if-nez v16, :cond_7

    const-string v17, "      Defined KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x1

    :goto_4
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "dksSize":I
    .end local v7    # "i":I
    :cond_8
    if-eqz v16, :cond_9

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const/16 v16, 0x0

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v18

    .local v18, "signingKeySet":J
    const-string v17, "      Signing KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v17

    if-eqz v17, :cond_b

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v2

    .local v2, "arr$":[J
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v13, :cond_b

    aget-wide v10, v2, v9

    .local v10, "keySetId":J
    if-nez v16, :cond_a

    const-string v17, "      Upgrade KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x1

    :goto_6
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .end local v2    # "arr$":[J
    .end local v9    # "i$":I
    .end local v10    # "keySetId":J
    .end local v13    # "len$":I
    :cond_b
    if-eqz v16, :cond_0

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "keySetPackage":Ljava/lang/String;
    .end local v14    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "printedLabel":Z
    .end local v18    # "signingKeySet":J
    :cond_c
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, "keySetId":Ljava/lang/Long;
    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySet alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    goto :goto_0
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .locals 9
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .local v2, "pkIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .local v3, "pkSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    goto :goto_0
.end method

.method public isIdValidKeySetId(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    const-wide/16 v8, -0x1

    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Package has no KeySet data"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .local v0, "id":J
    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Package has no KeySet data"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .local v0, "id":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_0
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .local v3, "outerDepth":I
    const-wide/16 v0, 0x0

    .local v0, "currentKeySetId":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    if-ne v8, v11, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_3

    :cond_1
    if-eq v8, v11, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "tagName":Ljava/lang/String;
    const-string v9, "keyset"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "identifier"

    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v6, 0x0

    .local v6, "refCount":I
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v10, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v10, v0, v1, v6}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v6    # "refCount":I
    :cond_2
    const-string v9, "key-id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "identifier"

    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "id":J
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .local v0, "currentKeySetId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .local v3, "outerDepth":I
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "recordedVersionStr":Ljava/lang/String;
    if-nez v6, :cond_2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_0

    :cond_1
    iget-object v9, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v4}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "type":I
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "recordedVersion":I
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .restart local v8    # "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_8

    :cond_4
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "tagName":Ljava/lang/String;
    const-string v9, "keys"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_5
    const-string v9, "keysets"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_6
    const-string v9, "lastIssuedKeyId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_1

    :cond_7
    const-string v9, "lastIssuedKeySetId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    goto :goto_1

    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    .end local v5    # "recordedVersion":I
    :cond_9
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "encodedID":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "identifier":J
    const/4 v4, 0x0

    .local v4, "refCount":I
    const-string v1, "value"

    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .local v5, "pub":Ljava/security/PublicKey;
    if-eqz v5, :cond_0

    new-instance v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V

    .local v0, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .end local v0    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_0
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "does not have a corresponding entry in mPackages."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    .local v4, "signingKeySetId":J
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .local v0, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    iget-wide v2, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    iget-wide v2, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .local v1, "keySetIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .local v2, "id":J
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .local v6, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, "keyId":J
    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .end local v4    # "keyId":J
    :cond_0
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":J
    .end local v6    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .local v1, "pKeyIndex":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .local v2, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .local v4, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedKey":Ljava/lang/String;
    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_0
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

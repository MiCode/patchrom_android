.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# static fields
.field static final KEYSET_UNASSIGNED:J = -0x1L


# instance fields
.field private final mKeySetAliases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProperSigningKeySet:J

.field private mUpgradeKeySets:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/pm/PackageKeySetData;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    iget-wide v0, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iget-object v0, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method protected addDefinedKeySet(JLjava/lang/String;)V
    .locals 3
    .param p1, "ks"    # J
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addUpgradeKeySet(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, "ks":Ljava/lang/Long;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade keyset alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not refer to a defined keyset alias!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected addUpgradeKeySetById(J)V
    .locals 1
    .param p1, "ks"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void
.end method

.method protected getAliases()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected getProperSigningKeySet()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-wide v0
.end method

.method protected getUpgradeKeySets()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-object v0
.end method

.method protected isUsingDefinedKeySets()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUsingUpgradeKeySets()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeAllDefinedKeySets()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "aliasSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeAllUpgradeKeySets()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void
.end method

.method protected setAliases(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newAliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "newAliasSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setProperSigningKeySet(J)V
    .locals 1
    .param p1, "ks"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-void
.end method

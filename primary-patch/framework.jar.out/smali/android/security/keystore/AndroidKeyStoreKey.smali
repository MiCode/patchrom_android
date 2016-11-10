.class public Landroid/security/keystore/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    .local v0, "other":Landroid/security/keystore/AndroidKeyStoreKey;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0x1f

    .local v0, "prime":I
    const/4 v1, 0x1

    .local v1, "result":I
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

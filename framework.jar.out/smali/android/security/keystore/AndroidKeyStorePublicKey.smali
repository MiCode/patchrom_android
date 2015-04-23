.class public Landroid/security/keystore/AndroidKeyStorePublicKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "x509EncodedForm"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

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
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

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

    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .local v0, "other":Landroid/security/keystore/AndroidKeyStorePublicKey;
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v0, 0x1f

    .local v0, "prime":I
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->hashCode()I

    move-result v1

    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    return v1
.end method

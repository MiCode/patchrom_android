.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedCert"    # [B

    .prologue
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "encodedCert"    # [B

    .prologue
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NONE"

    aput-object v3, v2, v5

    const-string v3, "SHA-1"

    aput-object v3, v2, v6

    const-string v3, "SHA-224"

    aput-object v3, v2, v7

    const-string v3, "SHA-256"

    aput-object v3, v2, v8

    const-string v3, "SHA-384"

    aput-object v3, v2, v4

    const/4 v3, 0x5

    const-string v4, "SHA-512"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :goto_0
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_0
    const-string v2, "RSA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NONE"

    aput-object v3, v2, v5

    const-string v3, "MD5"

    aput-object v3, v2, v6

    const-string v3, "SHA-1"

    aput-object v3, v2, v7

    const-string v3, "SHA-224"

    aput-object v3, v2, v8

    const-string v3, "SHA-256"

    aput-object v3, v2, v4

    const/4 v3, 0x5

    const-string v4, "SHA-384"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SHA-512"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NoPadding"

    aput-object v3, v2, v5

    const-string v3, "PKCS1Padding"

    aput-object v3, v2, v6

    const-string v3, "OAEPPadding"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PKCS1"

    aput-object v3, v2, v5

    const-string v3, "PSS"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "rawAliases":[Ljava/lang/String;
    if-nez v6, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    array-length v7, v6

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .local v0, "alias":Ljava/lang/String;
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "idx":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_3

    :cond_2
    const-string v7, "AndroidKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 32
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, "flags":I
    if-nez p4, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v27

    .local v27, "spec":Landroid/security/keystore/KeyProtection;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_5

    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v27    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_2
    move-object/from16 v0, p4

    instance-of v2, v0, Landroid/security/KeyStoreParameter;

    if-eqz v2, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v27

    .restart local v27    # "spec":Landroid/security/keystore/KeyProtection;
    move-object/from16 v21, p4

    check-cast v21, Landroid/security/KeyStoreParameter;

    .local v21, "legacySpec":Landroid/security/KeyStoreParameter;
    invoke-virtual/range {v21 .. v21}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .end local v21    # "legacySpec":Landroid/security/KeyStoreParameter;
    .end local v27    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_3
    move-object/from16 v0, p4

    instance-of v2, v0, Landroid/security/keystore/KeyProtection;

    if-eqz v2, :cond_4

    move-object/from16 v27, p4

    check-cast v27, Landroid/security/keystore/KeyProtection;

    .restart local v27    # "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_0

    .end local v27    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_4
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Supported: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v5, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v5, Landroid/security/KeyStoreParameter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v27    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_5
    move-object/from16 v0, p3

    array-length v2, v0

    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    move-object/from16 v31, v0

    .local v31, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v15, v2, :cond_8

    const-string v2, "X.509"

    aget-object v3, p3, v15

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    aget-object v2, p3, v15

    instance-of v2, v2, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_7

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    aget-object v2, p3, v15

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v31, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v31, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .local v30, "userCertBytes":[B
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    move-object/from16 v0, v31

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v11, v2, [[B

    .local v11, "certsBytes":[[B
    const/16 v29, 0x0

    .local v29, "totalCertLength":I
    const/4 v15, 0x0

    :goto_2
    array-length v2, v11

    if-ge v15, v2, :cond_9

    add-int/lit8 v2, v15, 0x1

    :try_start_1
    aget-object v2, v31, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    aput-object v2, v11, v15

    aget-object v2, v11, v15

    array-length v2, v2
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v29, v29, v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v11    # "certsBytes":[[B
    .end local v29    # "totalCertLength":I
    .end local v30    # "userCertBytes":[B
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to encode certificate #0"

    invoke-direct {v2, v3, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v11    # "certsBytes":[[B
    .restart local v29    # "totalCertLength":I
    .restart local v30    # "userCertBytes":[B
    :catch_1
    move-exception v13

    .restart local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode certificate #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v13    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_9
    move/from16 v0, v29

    new-array v12, v0, [B

    .local v12, "chainBytes":[B
    const/16 v23, 0x0

    .local v23, "outputOffset":I
    const/4 v15, 0x0

    :goto_3
    array-length v2, v11

    if-ge v15, v2, :cond_b

    aget-object v2, v11, v15

    array-length v10, v2

    .local v10, "certLength":I
    aget-object v2, v11, v15

    const/4 v3, 0x0

    move/from16 v0, v23

    invoke-static {v2, v3, v12, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v23, v23, v10

    const/4 v2, 0x0

    aput-object v2, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v10    # "certLength":I
    .end local v11    # "certsBytes":[[B
    .end local v12    # "chainBytes":[B
    .end local v23    # "outputOffset":I
    .end local v29    # "totalCertLength":I
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "chainBytes":[B
    :cond_b
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v2, :cond_c

    move-object/from16 v2, p2

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v24

    .local v24, "pkeyAlias":Ljava/lang/String;
    :goto_4
    if-eqz v24, :cond_f

    const-string v2, "USRPKEY_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "USRPKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can only replace keys with same alias: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v18    # "keySubalias":Ljava/lang/String;
    .end local v24    # "pkeyAlias":Ljava/lang/String;
    :cond_c
    const/16 v24, 0x0

    .restart local v24    # "pkeyAlias":Ljava/lang/String;
    goto :goto_4

    .restart local v18    # "keySubalias":Ljava/lang/String;
    :cond_d
    const/16 v26, 0x0

    .local v26, "shouldReplacePrivateKey":Z
    const/4 v4, 0x0

    .local v4, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const/4 v6, 0x0

    .end local v18    # "keySubalias":Ljava/lang/String;
    .local v6, "pkcs8EncodedPrivateKeyBytes":[B
    :goto_5
    const/16 v28, 0x0

    .local v28, "success":Z
    if-eqz v26, :cond_16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v8, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v8}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v8, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v14

    .local v14, "errorCode":I
    const/4 v2, 0x1

    if-eq v14, v2, :cond_17

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to store private key"

    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v14    # "errorCode":I
    :catchall_0
    move-exception v2

    if-nez v28, :cond_e

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_e
    :goto_6
    throw v2

    .end local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v26    # "shouldReplacePrivateKey":Z
    .end local v28    # "success":Z
    :cond_f
    const/16 v26, 0x1

    .restart local v26    # "shouldReplacePrivateKey":Z
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v17

    .local v17, "keyFormat":Ljava/lang/String;
    if-eqz v17, :cond_10

    const-string v2, "PKCS#8"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported private key export format: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". Only private keys which export their key material in PKCS#8 format are"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " supported."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    .restart local v6    # "pkcs8EncodedPrivateKeyBytes":[B
    if-nez v6, :cond_12

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Private key did not export any key material"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .restart local v4    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const v2, 0x10000002

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v25

    .local v25, "purposes":I
    const v2, 0x20000001

    invoke-static/range {v25 .. v25}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x20000005

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_13
    const v2, 0x20000004

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v19

    .local v19, "keymasterEncryptionPaddings":[I
    and-int/lit8 v2, v25, 0x1

    if-eqz v2, :cond_15

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v9, v19

    .local v9, "arr$":[I
    array-length v0, v9

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    aget v20, v9, v16

    .local v20, "keymasterPadding":I
    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". See KeyProtection documentation."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v9    # "arr$":[I
    .end local v16    # "i$":I
    .end local v19    # "keymasterEncryptionPaddings":[I
    .end local v20    # "keymasterPadding":I
    .end local v22    # "len$":I
    .end local v25    # "purposes":I
    :catch_2
    move-exception v13

    .local v13, "e":Ljava/lang/RuntimeException;
    :goto_8
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "arr$":[I
    .restart local v16    # "i$":I
    .restart local v19    # "keymasterEncryptionPaddings":[I
    .restart local v20    # "keymasterPadding":I
    .restart local v22    # "len$":I
    .restart local v25    # "purposes":I
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .end local v9    # "arr$":[I
    .end local v16    # "i$":I
    .end local v20    # "keymasterPadding":I
    .end local v22    # "len$":I
    :cond_15
    const v2, 0x20000006

    :try_start_4
    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v2, 0x20000006

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v2

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v3

    invoke-static {v4, v2, v3}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    const v2, 0x60000190

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v2, 0x60000191

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v2, 0x60000192

    invoke-virtual/range {v27 .. v27}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_5

    .end local v19    # "keymasterEncryptionPaddings":[I
    .end local v25    # "purposes":I
    :catch_3
    move-exception v13

    goto :goto_8

    .end local v17    # "keyFormat":Ljava/lang/String;
    .restart local v28    # "success":Z
    :cond_16
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0, v5, v7}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v14

    .restart local v14    # "errorCode":I
    const/4 v2, 0x1

    if-eq v14, v2, :cond_18

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to store certificate #0"

    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v12, v5, v7}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v14

    const/4 v2, 0x1

    if-eq v14, v2, :cond_19

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to store certificate chain"

    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_19
    const/16 v28, 0x1

    if-nez v28, :cond_1a

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_1a
    :goto_9
    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    goto :goto_9

    .end local v14    # "errorCode":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    goto/16 :goto_6
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 25
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/security/keystore/KeyProtection;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported protection parameter class: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Supported: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v23, p3

    check-cast v23, Landroid/security/keystore/KeyProtection;

    .local v23, "params":Landroid/security/keystore/KeyProtection;
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v2, :cond_4

    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p2    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v3

    .local v3, "keyAliasInKeystore":Ljava/lang/String;
    if-nez v3, :cond_1

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "USRSKEY_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v2, "USRSKEY_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "keyEntryAlias":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " != "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-eqz v23, :cond_12

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v3    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v13    # "keyEntryAlias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_4
    if-nez v23, :cond_5

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v14

    .local v14, "keyExportFormat":Ljava/lang/String;
    if-nez v14, :cond_6

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "Only secret keys that export their key material are supported"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v2, "RAW"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported secret key material export format: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    .local v6, "keyMaterial":[B
    if-nez v6, :cond_8

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v15

    .local v15, "keymasterAlgorithm":I
    const v2, 0x10000002

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/16 v2, 0x80

    if-ne v15, v2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v20

    .local v20, "keymasterImpliedDigest":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    new-instance v2, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v15    # "keymasterAlgorithm":I
    .end local v20    # "keymasterImpliedDigest":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v10}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v15    # "keymasterAlgorithm":I
    .restart local v20    # "keymasterImpliedDigest":I
    :cond_9
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    aput v20, v18, v2

    .local v18, "keymasterDigests":[I
    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v19

    .local v19, "keymasterDigestsFromParams":[I
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    const/4 v2, 0x0

    aget v2, v19, v2

    move/from16 v0, v20

    if-eq v2, v0, :cond_c

    :cond_a
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported digests specification: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Only "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " supported for HMAC key algorithm "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v15    # "keymasterAlgorithm":I
    .end local v18    # "keymasterDigests":[I
    .end local v19    # "keymasterDigestsFromParams":[I
    .end local v20    # "keymasterImpliedDigest":I
    :catch_1
    move-exception v10

    goto :goto_0

    .restart local v15    # "keymasterAlgorithm":I
    :cond_b
    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v18

    .restart local v18    # "keymasterDigests":[I
    :cond_c
    :goto_1
    const v2, 0x20000005

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v24

    .local v24, "purposes":I
    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v17

    .local v17, "keymasterBlockModes":[I
    and-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_f

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v9, v17

    .local v9, "arr$":[I
    array-length v0, v9

    move/from16 v22, v0

    .local v22, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_f

    aget v16, v9, v12

    .local v16, "keymasterBlockMode":I
    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". See KeyProtection documentation."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v9    # "arr$":[I
    .end local v12    # "i$":I
    .end local v16    # "keymasterBlockMode":I
    .end local v17    # "keymasterBlockModes":[I
    .end local v18    # "keymasterDigests":[I
    .end local v22    # "len$":I
    .end local v24    # "purposes":I
    :cond_d
    sget-object v18, Llibcore/util/EmptyArray;->INT:[I

    .restart local v18    # "keymasterDigests":[I
    goto :goto_1

    .restart local v9    # "arr$":[I
    .restart local v12    # "i$":I
    .restart local v16    # "keymasterBlockMode":I
    .restart local v17    # "keymasterBlockModes":[I
    .restart local v22    # "len$":I
    .restart local v24    # "purposes":I
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v9    # "arr$":[I
    .end local v12    # "i$":I
    .end local v16    # "keymasterBlockMode":I
    .end local v22    # "len$":I
    :cond_f
    const v2, 0x20000001

    invoke-static/range {v24 .. v24}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v2, 0x20000004

    move-object/from16 v0, v17

    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_10

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v5, "Signature paddings not supported for symmetric keys"

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v21

    .local v21, "keymasterPaddings":[I
    const v2, 0x20000006

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-static {v4, v2, v5}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v15, v0, v1}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    const v2, 0x60000190

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v2, 0x60000191

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v2, 0x60000192

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    and-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_11

    invoke-virtual/range {v23 .. v23}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-nez v2, :cond_11

    const v2, 0x70000007

    invoke-virtual {v4, v2}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRSKEY_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "keyAliasInKeystore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v5, 0x3

    const/4 v7, 0x0

    new-instance v8, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v8}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    .local v11, "errorCode":I
    const/4 v2, 0x1

    if-eq v11, v2, :cond_12

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v4    # "args":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "keyMaterial":[B
    .end local v11    # "errorCode":I
    .end local v14    # "keyExportFormat":Ljava/lang/String;
    .end local v15    # "keymasterAlgorithm":I
    .end local v17    # "keymasterBlockModes":[I
    .end local v18    # "keymasterDigests":[I
    .end local v21    # "keymasterPaddings":[I
    .end local v24    # "purposes":I
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_12
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v0, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "encodedCert":[B
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v10, 0x0

    if-nez p1, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    const-string v11, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v0, v10

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, "targetCertBytes":[B
    if-nez v9, :cond_2

    move-object v0, v10

    goto :goto_0

    .end local v9    # "targetCertBytes":[B
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    move-object v0, v10

    goto :goto_0

    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v9    # "targetCertBytes":[B
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .local v8, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "certAliases":[Ljava/lang/String;
    if-eqz v3, :cond_5

    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v0, v1, v6

    .local v0, "alias":Ljava/lang/String;
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, "certBytes":[B
    if-nez v4, :cond_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_5
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "caAliases":[Ljava/lang/String;
    if-eqz v3, :cond_8

    move-object v1, v2

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_8

    aget-object v0, v1, v6

    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .restart local v4    # "certBytes":[B
    if-eqz v4, :cond_6

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_8
    move-object v0, v10

    goto/16 :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v2

    .end local v0    # "privateKeyAlias":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRSKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "secretKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    goto :goto_0

    .end local v1    # "secretKeyAlias":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "encoded":[B
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "entry == null"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v3, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .local v2, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .end local v2    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :goto_0
    return-void

    :cond_1
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_2
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    .local v1, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    .end local v1    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_0
    return-void

    .restart local p2    # "key":Ljava/security/Key;
    :cond_1
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    check-cast p2, Ljavax/crypto/SecretKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    .restart local p2    # "key":Ljava/security/Key;
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

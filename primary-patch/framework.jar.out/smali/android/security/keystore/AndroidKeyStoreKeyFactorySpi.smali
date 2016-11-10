.class public Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "AndroidKeyStoreKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .local p2, "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    const-string v6, "key == null"

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v5, :cond_1

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-nez v5, :cond_1

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". This KeyFactory supports only Android Keystore asymmetric keys"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-nez p2, :cond_2

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    const-string v6, "keySpecClass == null"

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-class v5, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v5, :cond_3

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". KeyInfo can be obtained only for Android Keystore private keys"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    check-cast p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    .local v2, "keyAliasInKeystore":Ljava/lang/String;
    const-string v5, "USRPKEY_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "USRPKEY_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "entryAlias":Ljava/lang/String;
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v5, v1, v2}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Landroid/security/keystore/KeyInfo;

    move-result-object v3

    .end local v1    # "entryAlias":Ljava/lang/String;
    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .local v3, "result":Ljava/security/spec/KeySpec;, "TT;"
    :goto_0
    return-object v3

    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .restart local v2    # "keyAliasInKeystore":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid key alias: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_5
    const-class v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-nez v5, :cond_6

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". X509EncodedKeySpec can be obtained only for Android Keystore public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keys"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto :goto_0

    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .restart local p1    # "key":Ljava/security/Key;
    :cond_7
    const-class v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_8

    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    const-string v6, "Key material export of Android Keystore private keys is not supported"

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    const-string v6, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    const-class v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    if-eqz v5, :cond_a

    move-object v4, p1

    check-cast v4, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    .local v4, "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v4    # "rsaKey":Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
    :cond_a
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Obtaining RSAPublicKeySpec not supported for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_b

    const-string v5, "private"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " key"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    const-string v5, "public"

    goto :goto_1

    :cond_c
    const-class v5, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    if-eqz v5, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    .local v0, "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .end local v0    # "ecKey":Landroid/security/keystore/AndroidKeyStoreECPublicKey;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_d
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Obtaining ECPublicKeySpec not supported for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v5, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_e

    const-string v5, "private"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " key"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_e
    const-string v5, "public"

    goto :goto_2

    :cond_f
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method

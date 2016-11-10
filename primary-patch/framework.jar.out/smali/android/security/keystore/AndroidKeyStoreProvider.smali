.class public Landroid/security/keystore/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "AndroidKeyStore"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Android KeyStore security provider"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "KeyStore.AndroidKeyStore"

    const-string v1, "android.security.keystore.AndroidKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.EC"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.RSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EC"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "RSA"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "KeyGenerator.AES"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA1"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA224"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA256"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA384"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA512"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA224"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA384"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 4
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/ECKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    :goto_0
    return-object v1

    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/RSAKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0

    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "publicKey":Ljava/security/PublicKey;
    const-string v3, "EC"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .end local v2    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v3, p0, v2}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V

    :goto_0
    return-object v3

    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Invalid X.509 encoding of public key"

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v2    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    const-string v3, "RSA"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .end local v2    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v3, p0, v2}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V

    goto :goto_0

    .restart local v2    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p0, Ljava/security/Signature;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Crypto primitive not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    .local v0, "spi":Ljavax/crypto/MacSpi;
    goto :goto_0

    .end local v0    # "spi":Ljavax/crypto/MacSpi;
    :cond_2
    instance-of v1, p0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    .local v0, "spi":Ljavax/crypto/CipherSpi;
    goto :goto_0

    .end local v0    # "spi":Ljavax/crypto/CipherSpi;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported crypto primitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    check-cast v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v2

    return-wide v2
.end method

.method public static install()V
    .locals 7

    .prologue
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .local v3, "providers":[Ljava/security/Provider;
    const/4 v0, -0x1

    .local v0, "bcProviderPosition":I
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v2, v3, v1

    .local v2, "provider":Ljava/security/Provider;
    const-string v5, "BC"

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .end local v2    # "provider":Ljava/security/Provider;
    :cond_0
    new-instance v5, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v5}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v4, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v4}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    .local v4, "workaroundProvider":Ljava/security/Provider;
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    invoke-static {v4, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    :goto_1
    return-void

    .end local v4    # "workaroundProvider":Ljava/security/Provider;
    .restart local v2    # "provider":Ljava/security/Provider;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "provider":Ljava/security/Provider;
    .restart local v4    # "workaroundProvider":Ljava/security/Provider;
    :cond_2
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_1
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_1

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method public static loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 9
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "secretKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    new-instance v3, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v3}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v3, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v7, v7, v3}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .local v1, "errorCode":I
    const/4 v7, 0x1

    if-eq v1, v7, :cond_0

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Failed to obtain information about key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    :cond_0
    const v7, 0x10000002

    invoke-virtual {v3, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v4, :cond_1

    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const v7, 0x20000005

    invoke-virtual {v3, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v6

    .local v6, "keymasterDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, -0x1

    .local v5, "keymasterDigest":I
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v5}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "keyAlgorithmString":Ljava/lang/String;
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-direct {v7, p1, v2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .end local v2    # "keyAlgorithmString":Ljava/lang/String;
    .end local v5    # "keymasterDigest":I
    :cond_2
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5    # "keymasterDigest":I
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string v8, "Unsupported secret key type"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

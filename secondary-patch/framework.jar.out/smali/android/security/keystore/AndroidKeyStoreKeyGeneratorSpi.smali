.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;
    }
.end annotation


# instance fields
.field private final mDefaultKeySizeBits:I

.field protected mKeySizeBits:I

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private final mKeymasterDigest:I

.field private mKeymasterDigests:[I

.field private mKeymasterPaddings:[I

.field private mKeymasterPurposes:[I

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "defaultKeySizeBits"    # I

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterDigest"    # I
    .param p3, "defaultKeySizeBits"    # I

    .prologue
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    iput p3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest algorithm must be specified for HMAC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private resetAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 14

    .prologue
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .local v10, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-nez v10, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v12, "Not initialized"

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .local v2, "args":Landroid/security/keymaster/KeymasterArguments;
    const v0, 0x30000003

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    int-to-long v12, v12

    invoke-virtual {v2, v0, v12, v13}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    const v0, 0x10000002

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000001

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000004

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000006

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v0, 0x20000005

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v12

    invoke-static {v2, v0, v12}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    iget-object v13, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-static {v2, v0, v12, v13}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    const v0, 0x60000190

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v0, 0x60000191

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v0, 0x60000192

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v2, v0, v12}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x70000007

    invoke-virtual {v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v12, v12, 0x7

    div-int/lit8 v12, v12, 0x8

    invoke-static {v0, v12}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v3

    .local v3, "additionalEntropy":[B
    const/4 v4, 0x0

    .local v4, "flags":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRSKEY_"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v5, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v11, 0x0

    .local v11, "success":Z
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v7

    .local v7, "errorCode":I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Keystore operation failed"

    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "errorCode":I
    :catchall_0
    move-exception v0

    if-nez v11, :cond_2

    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_2
    throw v0

    .restart local v7    # "errorCode":I
    :cond_3
    :try_start_1
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v0, v12}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "keyAlgorithmJCA":Ljava/lang/String;
    :try_start_2
    new-instance v9, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-direct {v9, v1, v8}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v9, "result":Ljavax/crypto/SecretKey;
    const/4 v11, 0x1

    if-nez v11, :cond_4

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_4
    return-object v9

    .end local v8    # "keyAlgorithmJCA":Ljava/lang/String;
    .end local v9    # "result":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v0, Ljava/security/ProviderException;

    const-string v12, "Failed to obtain JCA secret key algorithm name"

    invoke-direct {v0, v12, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 13
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    const/4 v8, 0x0

    .local v8, "success":Z
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v9, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v9, :cond_2

    :cond_0
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot initialize without a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parameter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    if-nez v8, :cond_1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_1
    throw v9

    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v7, v0

    .local v7, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    const-string v10, "KeyStore entry alias not provided"

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v9

    :goto_0
    iput v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    if-gtz v9, :cond_5

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key size must be positive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    goto :goto_0

    :cond_5
    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    rem-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_6

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key size must be a multiple of 8: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v9

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_7

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    const-string v10, "Signature paddings not supported for symmetric key algorithms"

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v9, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :try_start_4
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    .local v1, "arr$":[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_9

    aget v4, v1, v3

    .local v4, "keymasterBlockMode":I
    invoke-static {v4}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". See "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " documentation."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v1    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "keymasterBlockMode":I
    .end local v6    # "len$":I
    :catch_1
    move-exception v9

    move-object v2, v9

    goto :goto_1

    .restart local v1    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "keymasterBlockMode":I
    .restart local v6    # "len$":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "keymasterBlockMode":I
    .end local v6    # "len$":I
    :cond_9
    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v10, 0x80

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    aput v11, v9, v10

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    .local v5, "keymasterDigestsFromSpec":[I
    array-length v9, v5

    if-ne v9, v12, :cond_a

    const/4 v9, 0x0

    aget v9, v5, v9

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    if-eq v9, v10, :cond_c

    :cond_a
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported digests specification: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v11}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " supported for this HMAC key algorithm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v5    # "keymasterDigestsFromSpec":[I
    :cond_b
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    :cond_c
    :goto_3
    new-instance v9, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v9}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v10

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v8, 0x1

    if-nez v8, :cond_d

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_d
    return-void

    :cond_e
    :try_start_5
    sget-object v9, Llibcore/util/EmptyArray;->INT:[I

    iput-object v9, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

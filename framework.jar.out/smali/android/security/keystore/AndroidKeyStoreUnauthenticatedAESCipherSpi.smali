.class Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mIvRequired:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I
    .param p3, "ivRequired"    # Z

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    iput-boolean p3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_1

    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_1
    return-void
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    .prologue
    const/16 v0, 0x10

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    add-int/lit8 v0, p1, 0x30

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    array-length v2, v2

    if-lez v2, :cond_0

    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .local v1, "params":Ljava/security/AlgorithmParameters;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to obtain AES AlgorithmParameters"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to initialize AES AlgorithmParameters with an IV"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_4

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "AES"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: AES"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Null IV in AlgorithmParameters"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_4
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only IvParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Null IV in IvParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "null"

    goto :goto_0

    :cond_1
    const-string v0, "AES"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    const v1, -0x6ffffc17

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object v0

    .local v0, "returnedIv":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v1, :cond_2

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v0, :cond_1

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use despite IV not being used by this transformation"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method

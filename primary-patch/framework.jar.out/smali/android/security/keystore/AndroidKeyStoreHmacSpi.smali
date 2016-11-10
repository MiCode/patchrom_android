.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .prologue
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .local v4, "keymasterArgs":Landroid/security/keymaster/KeymasterArguments;
    const v0, 0x10000002

    const/16 v1, 0x80

    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x300003eb

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    int-to-long v2, v1

    invoke-virtual {v4, v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v7

    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_2

    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget v2, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v6

    .local v6, "e":Ljava/security/InvalidKeyException;
    if-eqz v6, :cond_3

    throw v6

    :cond_3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_4

    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    goto/16 :goto_0
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p1    # "key":Ljava/security/Key;
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz p2, :cond_2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private resetAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private resetWhilePreservingInitState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 8

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .local v7, "result":[B
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-object v7

    .end local v7    # "result":[B
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/security/InvalidKeyException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to reinitialize MAC"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/security/KeyStoreException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    const/4 v0, 0x0

    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected engineReset()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .local v1, "output":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Update operation unexpectedly produced output"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "output":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to reinitialize MAC"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v1    # "output":[B
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .end local v0    # "operationToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getOperationHandle()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    return-wide v0
.end method

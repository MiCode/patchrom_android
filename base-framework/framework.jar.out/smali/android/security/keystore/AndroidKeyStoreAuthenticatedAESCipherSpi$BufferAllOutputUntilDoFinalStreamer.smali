.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferAllOutputUntilDoFinalStreamer"
.end annotation


# instance fields
.field private mBufferedOutput:Ljava/io/ByteArrayOutputStream;

.field private final mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mProducedOutputSizeBytes:J


# direct methods
.method private constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;)V
    .locals 1
    .param p1, "delegate"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .param p2, "x1"    # Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;)V

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "signature"    # [B
    .param p5, "additionalEntropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v7

    .local v7, "output":[B
    if-eqz v7, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .local v8, "result":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    array-length v2, v8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    return-object v8

    .end local v8    # "result":[B
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to buffer output"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mDelegate:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v2, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v1

    .local v1, "output":[B
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;->mBufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to buffer output"

    invoke-direct {v2, v3, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

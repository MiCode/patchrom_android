.class interface abstract Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationStreamer.java"


# virtual methods
.method public abstract doFinal([BII[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getConsumedInputSizeBytes()J
.end method

.method public abstract getProducedOutputSizeBytes()J
.end method

.method public abstract update([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation
.end method

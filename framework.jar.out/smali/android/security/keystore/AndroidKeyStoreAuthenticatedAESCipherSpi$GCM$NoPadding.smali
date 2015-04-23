.class public final Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final engineGetOutputSize(I)I
    .locals 8
    .param p1, "inputLen"    # I

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getTagLengthBits()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v2, v3, 0x8

    .local v2, "tagLengthBytes":I
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, p1

    add-long/2addr v4, v6

    int-to-long v6, v2

    add-long v0, v4, v6

    .local v0, "result":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    .end local v0    # "result":J
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, p1

    add-long/2addr v4, v6

    int-to-long v6, v2

    sub-long v0, v4, v6

    .restart local v0    # "result":J
    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    const v3, 0x7fffffff

    goto :goto_1

    :cond_2
    long-to-int v3, v0

    goto :goto_1
.end method

.method public bridge synthetic finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->finalize()V

    return-void
.end method

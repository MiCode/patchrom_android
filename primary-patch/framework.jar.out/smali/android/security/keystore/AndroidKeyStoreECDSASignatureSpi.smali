.class abstract Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$1;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA512;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA384;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA256;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA224;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA1;,
        Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$NONE;
    }
.end annotation


# instance fields
.field private mGroupSizeBits:I

.field private final mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    const v0, 0x10000002

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mKeymasterDigest:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    return-void
.end method

.method protected final getAdditionalEntropyAmountForSign()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final getGroupSizeBits()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    return v0
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 10
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const-string v4, "EC"

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported key algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Only"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6, v1}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .local v0, "errorCode":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4

    :cond_1
    const v4, 0x30000003

    invoke-virtual {v1, v4, v8, v9}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v2

    .local v2, "keySizeBits":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_2

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "Size of key not known"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bits"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    long-to-int v4, v2

    iput v4, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;->mGroupSizeBits:I

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method

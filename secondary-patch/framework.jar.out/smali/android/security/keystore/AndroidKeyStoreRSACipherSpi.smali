.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$PKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private final mKeymasterPadding:I

.field private mKeymasterPaddingOverride:I

.field private mModulusSizeBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterPadding"    # I

    .prologue
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 5
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    const/4 v4, -0x1

    const v2, 0x10000002

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPaddingOverride()I

    move-result v0

    .local v0, "keymasterPadding":I
    if-ne v0, v4, :cond_0

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    :cond_0
    const v2, 0x20000006

    invoke-virtual {p1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeymasterPurposeOverride()I

    move-result v1

    .local v1, "purposeOverride":I
    if-eq v1, v4, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    const v2, 0x20000005

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    :cond_2
    return-void
.end method

.method protected adjustConfigForEncryptingWithPrivateKey()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getModulusSizeBytes()I

    move-result v0

    return v0
.end method

.method protected final getKeymasterPaddingOverride()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return v0
.end method

.method protected final getModulusSizeBytes()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Unsupported key: null"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string v5, "RSA"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "RSA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_2

    move-object v4, p2

    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    .local v4, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :goto_0
    instance-of v5, v4, Ljava/security/PrivateKey;

    if-eqz v5, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA private keys cannot be used with opmode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_2
    instance-of v5, p2, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v5, :cond_3

    move-object v4, p2

    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    goto :goto_0

    .end local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_3
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported key type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v4    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :pswitch_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->adjustConfigForEncryptingWithPrivateKey()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA private keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and padding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only RSA public keys supported for this mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    packed-switch p1, :pswitch_data_1

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA public keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSA public keys cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->opmodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and padding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPadding:I

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Only RSA private keys supported for this opmode."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    :pswitch_2
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v1, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7, v1}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    .local v0, "errorCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    move-result-object v5

    throw v5

    :cond_6
    const v5, 0x30000003

    invoke-virtual {v1, v5, v8, v9}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedInt(IJ)J

    move-result-wide v2

    .local v2, "keySizeBits":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_7

    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Size of key not known"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_8

    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bits"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const-wide/16 v6, 0x7

    add-long/2addr v6, v2

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    return-void
.end method

.method protected final resetAll()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected final setKeymasterPaddingOverride(I)V
    .locals 0
    .param p1, "keymasterPadding"    # I

    .prologue
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->mKeymasterPaddingOverride:I

    return-void
.end method

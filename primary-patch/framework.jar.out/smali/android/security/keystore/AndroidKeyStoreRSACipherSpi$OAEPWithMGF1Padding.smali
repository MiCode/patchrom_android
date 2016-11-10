.class abstract Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.super Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OAEPWithMGF1Padding"
.end annotation


# static fields
.field private static final MGF_ALGORITGM_MGF1:Ljava/lang/String; = "MGF1"


# instance fields
.field private mDigestOutputSizeBytes:I

.field private mKeymasterDigest:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    const v0, 0x20000005

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    return-void
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 7

    .prologue
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    sget-object v5, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v6, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .local v2, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :try_start_0
    const-string v3, "OAEP"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Failed to obtain OAEP AlgorithmParameters"

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Failed to initialize OAEP AlgorithmParameters with an IV"

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    return-void
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
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    if-nez v1, :cond_1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAEP parameters required, but not provided in parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAEP parameters required, but not found in parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 13
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v10, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v10, :cond_1

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported parameter spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only OAEPParameterSpec supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    move-object v9, p1

    check-cast v9, Ljavax/crypto/spec/OAEPParameterSpec;

    .local v9, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    const-string v10, "MGF1"

    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported MGF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MGF1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    .local v1, "jcaDigest":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "keymasterDigest":I
    packed-switch v2, :pswitch_data_0

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported digest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v2    # "keymasterDigest":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported digest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "keymasterDigest":I
    :pswitch_0
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    .local v4, "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v4, :cond_3

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    const-string v11, "MGF parameters must be provided"

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    instance-of v10, v4, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v10, :cond_4

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported MGF parameters: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only MGF1ParameterSpec supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    move-object v5, v4

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .local v5, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    .local v3, "mgf1JcaDigest":Ljava/lang/String;
    const-string v10, "SHA-1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported MGF1 digest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "SHA-1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v6

    .local v6, "pSource":Ljavax/crypto/spec/PSource;
    instance-of v10, v6, Ljavax/crypto/spec/PSource$PSpecified;

    if-nez v10, :cond_6

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported source of encoding input P: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    move-object v7, v6

    check-cast v7, Ljavax/crypto/spec/PSource$PSpecified;

    .local v7, "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v7}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v8

    .local v8, "pSourceValue":[B
    if-eqz v8, :cond_7

    array-length v10, v8

    if-lez v10, :cond_7

    new-instance v10, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported source of encoding input P: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    invoke-static {v2}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    return-void
.end method

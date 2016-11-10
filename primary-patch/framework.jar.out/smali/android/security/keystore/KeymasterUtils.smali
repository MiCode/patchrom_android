.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .prologue
    const v4, 0x30000008

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v2, 0x20

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x60

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    :sswitch_1
    array-length v2, p3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Exactly one digest must be authorized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    aget v1, p3, v2

    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    .local v0, "digestOutputSizeBits":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    .locals 11
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "userAuthenticationRequired"    # Z
    .param p2, "userAuthenticationValidityDurationSeconds"    # I

    .prologue
    const v10, 0x100001f8

    const v9, -0x5ffffe0a

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    const v1, 0x700001f7

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    .local v2, "fingerprintOnlySid":J
    :goto_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v2    # "fingerprintOnlySid":J
    :cond_1
    move-wide v2, v6

    goto :goto_1

    .restart local v2    # "fingerprintOnlySid":J
    :cond_2
    invoke-static {v2, v3}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v10, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    goto :goto_0

    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "fingerprintOnlySid":J
    :cond_3
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v4

    .local v4, "rootSid":J
    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v6, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v10, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x300001f9

    int-to-long v6, p2

    invoke-virtual {p0, v1, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xe0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x100

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x180

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterBlockMode"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

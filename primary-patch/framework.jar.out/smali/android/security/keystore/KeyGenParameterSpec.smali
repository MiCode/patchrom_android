.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x23d19d43c00L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI)V
    .locals 3
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .param p5, "certificateSerialNumber"    # Ljava/math/BigInteger;
    .param p6, "certificateNotBefore"    # Ljava/util/Date;
    .param p7, "certificateNotAfter"    # Ljava/util/Date;
    .param p8, "keyValidityStart"    # Ljava/util/Date;
    .param p9, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p10, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p11, "purposes"    # I
    .param p12, "digests"    # [Ljava/lang/String;
    .param p13, "encryptionPaddings"    # [Ljava/lang/String;
    .param p14, "signaturePaddings"    # [Ljava/lang/String;
    .param p15, "blockModes"    # [Ljava/lang/String;
    .param p16, "randomizedEncryptionRequired"    # Z
    .param p17, "userAuthenticationRequired"    # Z
    .param p18, "userAuthenticationValidityDurationSeconds"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyStoreAlias must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    :cond_1
    if-nez p6, :cond_2

    sget-object p6, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    :cond_2
    if-nez p7, :cond_3

    sget-object p7, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    :cond_3
    if-nez p5, :cond_4

    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    :cond_4
    invoke-virtual {p7, p6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    iput-object p3, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p4, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    iput-object p5, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iput p11, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    move/from16 v0, p18

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

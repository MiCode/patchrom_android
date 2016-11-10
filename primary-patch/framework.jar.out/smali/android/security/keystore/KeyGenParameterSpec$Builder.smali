.class public final Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mCertificateNotAfter:Ljava/util/Date;

.field private mCertificateNotBefore:Ljava/util/Date;

.field private mCertificateSerialNumber:Ljava/math/BigInteger;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeySize:I

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "keystoreAlias"    # Ljava/lang/String;
    .param p2, "purposes"    # I

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    iput v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keystoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 20

    .prologue
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v19, v0

    invoke-direct/range {v1 .. v19}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI)V

    return-object v1
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    return-object p0
.end method

.method public setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    return-object p0
.end method

.method public setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    return-object p0
.end method

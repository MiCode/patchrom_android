.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "purposes"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyProtection;
    .locals 13

    .prologue
    new-instance v0, Landroid/security/keystore/KeyProtection;

    iget-object v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v3, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v4, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    iget-object v5, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    iget-object v6, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v7, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    iget-object v8, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    iget-boolean v9, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    iget-boolean v10, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    iget v11, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZILandroid/security/keystore/KeyProtection$1;)V

    return-object v0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
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
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    return-object p0
.end method

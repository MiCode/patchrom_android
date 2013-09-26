.class public Landroid/security/AndroidKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "AndroidKeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .parameter "context"
    .parameter "keyStoreAlias"
    .parameter "subjectDN"
    .parameter "serialNumber"
    .parameter "startDate"
    .parameter "endDate"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subjectDN == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p6, p5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate < startDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p1, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    iput-object p3, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iput-object p4, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    iput-object p5, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    iput-object p6, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/AndroidKeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

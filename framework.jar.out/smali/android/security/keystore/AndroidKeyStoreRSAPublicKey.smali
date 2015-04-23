.class public Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;

.field private final mPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v0, "X.509"

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .param p4, "publicExponent"    # Ljava/math/BigInteger;

    .prologue
    const-string v0, "RSA"

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->mPublicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

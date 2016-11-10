.class public Landroid/security/keystore/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;

.field private final mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/security/interfaces/ECPublicKey;

    .prologue
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    const-string v0, "X.509"

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

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

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

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

.method public constructor <init>(Ljava/lang/String;[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B
    .param p3, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p4, "w"    # Ljava/security/spec/ECPoint;

    .prologue
    const-string v0, "EC"

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    return-object v0
.end method

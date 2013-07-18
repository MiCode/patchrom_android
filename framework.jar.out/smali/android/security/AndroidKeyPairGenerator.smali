.class public Landroid/security/AndroidKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyPairGenerator.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyPairGenerator"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 14

    .prologue
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    if-nez v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must call initialize with an AndroidKeyPairGeneratorSpec first"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, alias:Ljava/lang/String;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, privateKeyAlias:Ljava/lang/String;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v8}, Landroid/security/KeyStore;->generate(Ljava/lang/String;)Z

    const-string v11, "keystore"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    move-result-object v5

    .local v5, engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    :try_start_0
    invoke-virtual {v5, v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, privKey:Ljava/security/PrivateKey;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v8}, Landroid/security/KeyStore;->getPubkey(Ljava/lang/String;)[B

    move-result-object v10

    .local v10, pubKeyBytes:[B
    :try_start_1
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .local v6, keyFact:Ljava/security/KeyFactory;
    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v11, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .local v9, pubKey:Ljava/security/PublicKey;
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .local v3, certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/AndroidKeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    const-string v11, "sha1WithRSA"

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .local v1, cert:Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .local v2, certBytes:[B
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t store certificate in AndroidKeyStore"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #certBytes:[B
    .end local v3           #certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .end local v6           #keyFact:Ljava/security/KeyFactory;
    .end local v7           #privKey:Ljava/security/PrivateKey;
    .end local v9           #pubKey:Ljava/security/PublicKey;
    .end local v10           #pubKeyBytes:[B
    :catch_0
    move-exception v4

    .local v4, e:Ljava/security/InvalidKeyException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Can\'t get key"

    invoke-direct {v11, v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .end local v4           #e:Ljava/security/InvalidKeyException;
    .restart local v7       #privKey:Ljava/security/PrivateKey;
    .restart local v10       #pubKeyBytes:[B
    :catch_1
    move-exception v4

    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t instantiate RSA key generator"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v4

    .local v4, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "keystore returned invalid key encoding"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .end local v4           #e:Ljava/security/spec/InvalidKeySpecException;
    .restart local v3       #certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .restart local v6       #keyFact:Ljava/security/KeyFactory;
    .restart local v9       #pubKey:Ljava/security/PublicKey;
    :catch_3
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t generate certificate"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v4

    .local v4, e:Ljava/security/cert/CertificateEncodingException;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t get encoding of certificate"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .end local v4           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v2       #certBytes:[B
    :cond_2
    new-instance v11, Ljava/security/KeyPair;

    invoke-direct {v11, v9, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v11
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .parameter "keysize"
    .parameter "random"

    .prologue
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot specify keysize with AndroidKeyPairGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "must supply params of type AndroidKeyPairGenericSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Landroid/security/AndroidKeyPairGeneratorSpec;

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "params must be of type AndroidKeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/security/AndroidKeyPairGeneratorSpec;

    .local v0, spec:Landroid/security/AndroidKeyPairGeneratorSpec;
    iput-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/AndroidKeyPairGeneratorSpec;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

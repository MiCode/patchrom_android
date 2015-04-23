.class public Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    .prologue
    const-string v0, "RSA"

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;->mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

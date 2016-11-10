.class Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
.super Landroid/security/keystore/DelegatingX509Certificate;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStoreX509Certificate"
.end annotation


# instance fields
.field private final mPrivateKeyAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "delegate"    # Ljava/security/cert/X509Certificate;

    .prologue
    invoke-direct {p0, p2}, Landroid/security/keystore/DelegatingX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/security/keystore/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .local v0, "original":Ljava/security/PublicKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    return-object v1
.end method

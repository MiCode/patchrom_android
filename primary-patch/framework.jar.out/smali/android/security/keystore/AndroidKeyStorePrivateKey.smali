.class public Landroid/security/keystore/AndroidKeyStorePrivateKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

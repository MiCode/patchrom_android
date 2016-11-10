.class abstract Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;
.super Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CBC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "keymasterPadding"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;-><init>(IIZ)V

    return-void
.end method

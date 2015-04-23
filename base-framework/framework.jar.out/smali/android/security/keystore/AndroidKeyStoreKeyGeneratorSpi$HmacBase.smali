.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacBase;
.super Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "HmacBase"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "keymasterDigest"    # I

    .prologue
    const/16 v0, 0x80

    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    return-void
.end method

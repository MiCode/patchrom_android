.class public Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;
.super Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;-><init>(I)V

    return-void
.end method

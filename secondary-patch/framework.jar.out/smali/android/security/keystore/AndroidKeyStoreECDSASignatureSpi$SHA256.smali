.class public final Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA256;
.super Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    return-void
.end method

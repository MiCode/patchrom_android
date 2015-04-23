.class public Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;
.super Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.source "AndroidKeyStoreHmacSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;-><init>(I)V

    return-void
.end method

.class public Landroid/security/keystore/AndroidKeyStoreECPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    const-string v0, "EC"

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

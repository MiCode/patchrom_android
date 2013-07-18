.class public Landroid/security/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStoreProvider"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "AndroidKeyStoreProvider"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "Android KeyStore security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "KeyStore.AndroidKeyStore"

    const-class v1, Landroid/security/AndroidKeyStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/security/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.AndroidKeyPairGenerator"

    const-class v1, Landroid/security/AndroidKeyPairGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/security/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

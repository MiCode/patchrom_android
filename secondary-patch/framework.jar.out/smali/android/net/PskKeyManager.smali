.class public abstract Landroid/net/PskKeyManager;
.super Ljava/lang/Object;
.source "PskKeyManager.java"

# interfaces
.implements Lcom/android/org/conscrypt/PSKKeyManager;


# static fields
.field public static final MAX_IDENTITY_HINT_LENGTH_BYTES:I = 0x80

.field public static final MAX_IDENTITY_LENGTH_BYTES:I = 0x80

.field public static final MAX_KEY_LENGTH_BYTES:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

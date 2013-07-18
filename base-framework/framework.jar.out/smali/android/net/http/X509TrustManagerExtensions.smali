.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field mDelegate:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .parameter "tm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    .end local p1
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    return-void

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tm is not a supported type of X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .parameter "host"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

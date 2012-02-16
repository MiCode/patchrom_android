.class public final Landroid/webkit/ClientCertRequestHandler;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mHandle:I

.field private final mHostAndPort:Ljava/lang/String;

.field private final mTable:Landroid/webkit/SslClientCertLookupTable;


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;ILjava/lang/String;Landroid/webkit/SslClientCertLookupTable;)V
    .locals 0
    .parameter "browserFrame"
    .parameter "handle"
    .parameter "host_and_port"
    .parameter "table"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 43
    iput p2, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    .line 44
    iput-object p3, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    .line 46
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v2, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/SslClientCertLookupTable;->Deny(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    move-object v0, v1

    check-cast v0, [[B

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 77
    return-void
.end method

.method public ignore()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    move-object v0, v1

    check-cast v0, [[B

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 69
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 7
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 55
    .local v2, privateKeyBytes:[B
    :try_start_0
    invoke-static {p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    .local v0, chainBytes:[[B
    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler;->mTable:Landroid/webkit/SslClientCertLookupTable;

    iget-object v4, p0, Landroid/webkit/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Landroid/webkit/SslClientCertLookupTable;->Allow(Ljava/lang/String;[B[[B)V

    .line 61
    iget-object v3, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 62
    .end local v0           #chainBytes:[[B
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    iget-object v5, p0, Landroid/webkit/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v6, p0, Landroid/webkit/ClientCertRequestHandler;->mHandle:I

    move-object v3, v4

    check-cast v3, [[B

    invoke-virtual {v5, v6, v4, v3}, Landroid/webkit/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    goto :goto_0
.end method

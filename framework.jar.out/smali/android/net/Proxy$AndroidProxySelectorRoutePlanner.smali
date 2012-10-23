.class Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
.super Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidProxySelectorRoutePlanner"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V
    .locals 0
    .parameter "schreg"
    .parameter "prosel"
    .parameter "context"

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    iput-object p3, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .locals 2
    .parameter
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .prologue
    .local p1, proxies:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    iget-object v0, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method protected determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;
    .locals 2
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    iget-object v0, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 4
    .parameter "target"
    .parameter "request"
    .parameter "context"

    .prologue
    iget-object v1, p0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .local v0, proxy:Lorg/apache/http/HttpHost;
    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v1, p1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/http/conn/routing/HttpRoute;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    goto :goto_0
.end method

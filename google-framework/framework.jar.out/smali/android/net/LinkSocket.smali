.class public Landroid/net/LinkSocket;
.super Ljava/net/Socket;
.source "LinkSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkSocket$LinkRequestReason;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string v0, "LinkSocket() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;)V
    .locals 1
    .parameter "notifier"

    .prologue
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string v0, "LinkSocket(notifier) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;Landroid/net/Proxy;)V
    .locals 1
    .parameter "notifier"
    .parameter "proxy"

    .prologue
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const-string v0, "LinkSocket(notifier, proxy) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "LinkSocket"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "bind(localAddr) EX throws IOException"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "bind is deprecated for LinkSocket"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "close() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "connect() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(I)V
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "connect(timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1
    .parameter "dstName"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "connect(dstName, dstPort, timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 1
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    const-string v0, "connect(dstName, dstPort, timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "connect(remoteAddr) EX DEPRECATED"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "connect(remoteAddr, timeout) EX DEPRECATED"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    const-string v0, "getCapabilities() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilities(Ljava/util/Set;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/LinkCapabilities;"
        }
    .end annotation

    .prologue
    .local p1, capabilities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "getCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    const-string v0, "LinkProperties() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    return-object v0
.end method

.method public getNeededCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    const-string v0, "getNeeds() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackedCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getTrackedCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public requestNewLink(Landroid/net/LinkSocket$LinkRequestReason;)V
    .locals 1
    .parameter "linkRequestReason"

    .prologue
    const-string v0, "requestNewLink(linkRequestReason) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setNeededCapabilities(Landroid/net/LinkCapabilities;)Z
    .locals 1
    .parameter "needs"

    .prologue
    const-string v0, "setNeeds() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setTrackedCapabilities(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, capabilities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "setTrackedCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    return-void
.end method

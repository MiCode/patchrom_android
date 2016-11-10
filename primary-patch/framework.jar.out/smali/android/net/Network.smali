.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNetwork:Lcom/android/okhttp/internal/Network;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    if-eqz v0, :cond_0

    const-string v0, "http.maxConnections"

    const-string v1, "5"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    const-string v0, "http.keepAliveDuration"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    new-instance v0, Landroid/net/Network$2;

    invoke-direct {v0}, Landroid/net/Network$2;-><init>()V

    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 1
    .param p1, "that"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method private maybeInitHttpClient()V
    .locals 6

    .prologue
    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/Network$1;

    invoke-direct {v0, p0}, Landroid/net/Network$1;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    :cond_0
    iget-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    sget v2, Landroid/net/Network;->httpMaxConnections:I

    sget-wide v4, Landroid/net/Network;->httpKeepAliveDurationMs:J

    invoke-direct {v0, v2, v4, v5}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bindSocket(Ljava/io/FileDescriptor;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .local v3, "peer":Ljava/net/SocketAddress;
    check-cast v3, Ljava/net/InetSocketAddress;

    .end local v3    # "peer":Ljava/net/SocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .local v2, "inetPeer":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Socket is connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "inetPeer":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->ENOTCONN:I

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4

    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Only AF_INET/AF_INET6 sockets supported"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    iget v5, p0, Landroid/net/Network;->netId:I

    invoke-static {v4, v5}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    move-result v1

    .local v1, "err":I
    if-eqz v1, :cond_1

    new-instance v4, Landroid/system/ErrnoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding socket to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    neg-int v6, v1

    invoke-direct {v4, v5, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v4

    throw v4

    :cond_1
    return-void
.end method

.method public bindSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bindSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/Network;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/Network;

    .local v0, "other":Landroid/net/Network;
    iget v2, p0, Landroid/net/Network;->netId:I

    iget v3, v0, Landroid/net/Network;->netId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkHandle()J
    .locals 6

    .prologue
    iget v2, p0, Landroid/net/Network;->netId:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/32 v0, 0xfacade

    .local v0, "HANDLE_MAGIC":J
    iget v2, p0, Landroid/net/Network;->netId:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xfacade

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/Network$NetworkBoundSocketFactory;

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-direct {v0, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "No ConnectivityManager yet constructed, please construct one"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v2

    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v1, 0x0

    .local v1, "proxy":Ljava/net/Proxy;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    :cond_1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "proxy is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0}, Landroid/net/Network;->maybeInitHttpClient()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .local v2, "protocol":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :goto_0
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v3

    iget-object v4, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    sget-object v3, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-object v4, p0, Landroid/net/Network;->mNetwork:Lcom/android/okhttp/internal/Network;

    invoke-virtual {v3, v0, v4}, Lcom/android/okhttp/internal/Internal;->setNetwork(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/Network;)V

    invoke-virtual {v1, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    return-object v3

    .end local v0    # "client":Lcom/android/okhttp/OkHttpClient;
    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :cond_1
    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    .restart local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    goto :goto_0

    .end local v1    # "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    :cond_2
    new-instance v3, Ljava/net/MalformedURLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URL or unrecognized protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

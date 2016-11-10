.class Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mTarget:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 5
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    instance-of v2, p2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :goto_1
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    :goto_2
    return-void

    .restart local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_1
    move-object v1, p2

    goto :goto_1

    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_2
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    const-string v2, "[%s]:%d"

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, "%s:%d"

    goto :goto_0
.end method

.method protected setupSocket(IIJJI)V
    .locals 5
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    # getter for: Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v0, v1, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    return-void
.end method

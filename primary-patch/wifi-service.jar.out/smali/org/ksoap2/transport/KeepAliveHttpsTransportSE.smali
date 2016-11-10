.class public Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;
.super Lorg/ksoap2/transport/HttpsTransportSE;
.source "KeepAliveHttpsTransportSE.java"


# instance fields
.field private final file:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ksoap2/transport/HttpsTransportSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object p1, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->host:Ljava/lang/String;

    iput p2, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->port:I

    iput-object p3, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->file:Ljava/lang/String;

    iput p4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    return-void
.end method


# virtual methods
.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;

    iget-object v1, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->host:Ljava/lang/String;

    iget v2, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->port:I

    iget-object v3, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->file:Ljava/lang/String;

    iget v4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method

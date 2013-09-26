.class final Landroid/net/ProxyProperties$1;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/ProxyProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, port:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, exclList:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, parsedExclList:[Ljava/lang/String;
    new-instance v0, Landroid/net/ProxyProperties;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V

    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyProperties;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/ProxyProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->newArray(I)[Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

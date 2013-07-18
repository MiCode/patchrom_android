.class final Landroid/net/wifi/HotspotClient$1;
.super Ljava/lang/Object;
.source "HotspotClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/HotspotClient;
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
        "Landroid/net/wifi/HotspotClient;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HotspotClient;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    new-instance v0, Landroid/net/wifi/HotspotClient;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-direct {v0, v2, v1}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    .local v0, result:Landroid/net/wifi/HotspotClient;
    return-object v0

    .end local v0           #result:Landroid/net/wifi/HotspotClient;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/HotspotClient$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HotspotClient;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/HotspotClient;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/wifi/HotspotClient;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/HotspotClient$1;->newArray(I)[Landroid/net/wifi/HotspotClient;

    move-result-object v0

    return-object v0
.end method

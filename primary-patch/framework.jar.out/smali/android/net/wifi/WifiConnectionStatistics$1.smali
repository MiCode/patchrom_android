.class final Landroid/net/wifi/WifiConnectionStatistics$1;
.super Ljava/lang/Object;
.source "WifiConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConnectionStatistics;
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
        "Landroid/net/wifi/WifiConnectionStatistics;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v6, Landroid/net/wifi/WifiConnectionStatistics;

    invoke-direct {v6}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    .local v6, "stats":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "n":I
    move v2, v1

    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "Key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "numConnection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "numUsage":I
    new-instance v5, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    invoke-direct {v5, v3, v4}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    .local v5, "st":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    iget-object v7, v6, Landroid/net/wifi/WifiConnectionStatistics;->untrustedNetworkHistory:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .end local v0    # "Key":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "numConnection":I
    .end local v4    # "numUsage":I
    .end local v5    # "st":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .restart local v1    # "n":I
    :cond_0
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/WifiConnectionStatistics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectionStatistics$1;->newArray(I)[Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    return-object v0
.end method

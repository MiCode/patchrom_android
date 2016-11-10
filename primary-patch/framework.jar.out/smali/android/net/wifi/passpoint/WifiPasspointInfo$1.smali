.class final Landroid/net/wifi/passpoint/WifiPasspointInfo$1;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointInfo;
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
        "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;

    invoke-direct {v5}, Landroid/net/wifi/passpoint/WifiPasspointInfo;-><init>()V

    .local v5, "p":Landroid/net/wifi/passpoint/WifiPasspointInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "n":I
    if-lez v3, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;-><init>()V

    .local v0, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    iput v3, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_3

    new-instance v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    invoke-direct {v7}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;-><init>()V

    .local v7, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v7    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_4

    new-instance v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    invoke-direct {v6}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;-><init>()V

    .local v6, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v6    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_5

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-direct {v8}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v3, :cond_7

    new-instance v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    invoke-direct {v2}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;-><init>()V

    .local v2, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    .end local v2    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    sget-object v8, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .local v4, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    iget-object v8, v5, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    .end local v4    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    :cond_8
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointInfo;

    move-result-object v0

    return-object v0
.end method

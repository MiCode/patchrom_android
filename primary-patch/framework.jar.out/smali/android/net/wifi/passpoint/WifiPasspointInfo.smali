.class public Landroid/net/wifi/passpoint/WifiPasspointInfo;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;
    }
.end annotation


# static fields
.field public static final ANQP_CAPABILITY:I = 0x1

.field public static final CELLULAR_NETWORK:I = 0x40

.field public static final CONNECTION_CAPABILITY:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_NAME:I = 0x80

.field public static final HOTSPOT_CAPABILITY:I = 0x100

.field public static final IP_ADDR_TYPE_AVAILABILITY:I = 0x10

.field public static final NAI_REALM:I = 0x20

.field public static final NETWORK_AUTH_TYPE:I = 0x4

.field public static final OPERATOR_FRIENDLY_NAME:I = 0x200

.field public static final OSU_PROVIDER:I = 0x1000

.field public static final PRESET_ALL:I = 0x1fff

.field public static final PRESET_CRED_MATCH:I = 0x1e1

.field public static final ROAMING_CONSORTIUM:I = 0x8

.field public static final VENUE_NAME:I = 0x2

.field public static final WAN_METRICS:I = 0x400


# instance fields
.field public bssid:Ljava/lang/String;

.field public cellularNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public connectionCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;",
            ">;"
        }
    .end annotation
.end field

.field public domainNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

.field public naiRealmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;",
            ">;"
        }
    .end annotation
.end field

.field public networkAuthTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;",
            ">;"
        }
    .end annotation
.end field

.field public operatorFriendlyName:Ljava/lang/String;

.field public osuProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public roamingConsortiumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public venueName:Ljava/lang/String;

.field public wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAnqpSubtypes(I)Ljava/lang/String;
    .locals 2
    .param p0, "mask"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "257,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "258,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "260,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "261,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "262,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "263,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "264,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "268,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "hs20:2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, "hs20:3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, "hs20:4,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "hs20:5,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "hs20:8,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .local v8, "sb":Ljava/lang/StringBuffer;
    const-string v9, "BSSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string v9, " venueName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    const-string v11, "\n"

    const-string v12, "\\n"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    if-eqz v9, :cond_1

    const-string v9, " networkAuthType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    .local v0, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    if-eqz v9, :cond_2

    const-string v9, " roamingConsortium: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "oi":Ljava/lang/String;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "oi":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    if-eqz v9, :cond_3

    const-string v9, " ipAddrTypeAvaibility: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    invoke-virtual {v10}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    if-eqz v9, :cond_4

    const-string v9, " naiRealm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    .local v7, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    :cond_4
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    if-eqz v9, :cond_5

    const-string v9, " cellularNetwork: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    .local v6, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    :cond_5
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    if-eqz v9, :cond_6

    const-string v9, " domainName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "fqdn":Ljava/lang/String;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .end local v1    # "fqdn":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    if-eqz v9, :cond_7

    const-string v9, " operatorFriendlyName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    if-eqz v9, :cond_8

    const-string v9, " wanMetrics: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    invoke-virtual {v10}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    if-eqz v9, :cond_9

    const-string v9, " connectionCapability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    .local v3, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    :cond_9
    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    if-eqz v9, :cond_a

    const-string v9, " osuProviderList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .local v5, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x0

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    if-nez v8, :cond_7

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    if-nez v8, :cond_8

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    if-nez v8, :cond_9

    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    if-nez v8, :cond_a

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    if-nez v8, :cond_b

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    if-nez v8, :cond_c

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    if-nez v8, :cond_d

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    if-nez v8, :cond_e

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    if-nez v8, :cond_f

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    return-void

    :cond_7
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    .local v0, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    iget v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "oi":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "oi":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    iget v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_a
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    .local v7, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    iget v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, v7, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    :cond_b
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    .local v6, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    iget-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    :cond_c
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "fqdn":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .end local v1    # "fqdn":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_d
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget-wide v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget-wide v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    iget v8, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_e
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    .local v3, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    iget v8, v3, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v3, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v3, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    :cond_f
    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .local v5, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    invoke-virtual {v5, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8
.end method

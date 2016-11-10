.class public Landroid/net/StaticIpConfiguration;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/StaticIpConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dnsServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public domains:Ljava/lang/String;

.field public gateway:Ljava/net/InetAddress;

.field public ipAddress:Landroid/net/LinkAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/StaticIpConfiguration$1;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;

    .prologue
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected static readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "s"    # Landroid/net/StaticIpConfiguration;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/net/StaticIpConfiguration;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/net/StaticIpConfiguration;

    .local v0, "other":Landroid/net/StaticIpConfiguration;
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/net/RouteInfo;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {v0, v3, v2, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .local v0, "connectedRoute":Landroid/net/RouteInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v0, v3}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-static {v3, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "connectedRoute":Landroid/net/RouteInfo;
    :cond_0
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/net/RouteInfo;

    check-cast v2, Landroid/net/IpPrefix;

    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-direct {v3, v2, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xd

    .local v0, "result":I
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x263

    mul-int/lit8 v3, v0, 0x2f

    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x2f

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x2f

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_2
    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "str":Ljava/lang/StringBuffer;
    const-string v3, "IP address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, "Gateway "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, " DNS servers: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "dnsServer":Ljava/net/InetAddress;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_2
    const-string v3, " ] Domains"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-static {p1, v2, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "dnsServer":Ljava/net/InetAddress;
    invoke-static {p1, v0, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    goto :goto_0

    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_0
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

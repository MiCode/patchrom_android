.class public Landroid/net/DhcpResults;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpResults;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpResults"


# instance fields
.field public leaseDuration:I

.field public final linkProperties:Landroid/net/LinkProperties;

.field public serverAddress:Ljava/net/InetAddress;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/DhcpResults$1;

    invoke-direct {v0}, Landroid/net/DhcpResults$1;-><init>()V

    sput-object v0, Landroid/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public constructor <init>(Landroid/net/DhcpResults;)V
    .locals 2
    .param p1, "source"    # Landroid/net/DhcpResults;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    iget-object v0, p1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iget v0, p1, Landroid/net/DhcpResults;->leaseDuration:I

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget-object v0, p1, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public addDns(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDns failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGateway(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    new-instance v2, Landroid/net/RouteInfo;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGateway failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addLinkAddress(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "addrString"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v2, "linkAddress":Landroid/net/LinkAddress;
    iget-object v4, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .local v3, "routeInfo":Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    const/4 v4, 0x0

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    .end local v3    # "routeInfo":Landroid/net/RouteInfo;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DhcpResults"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLinkAddress failed with addrString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iput-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iput-object v1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

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
    instance-of v3, p1, Landroid/net/DhcpResults;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/net/DhcpResults;

    .local v0, "target":Landroid/net/DhcpResults;
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    iget-object v4, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    iget-object v4, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    iget v3, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hasMeteredHint()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    const-string v1, "ANDROID_METERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 1
    .param p1, "domains"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method public setLeaseDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addrString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DhcpResults"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerAddress failed with addrString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVendorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, " DHCP server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " Vendor info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " lease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFromDhcpRequest(Landroid/net/DhcpResults;)V
    .locals 4
    .param p1, "orig"    # Landroid/net/DhcpResults;

    .prologue
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .local v2, "r":Landroid/net/RouteInfo;
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Landroid/net/RouteInfo;
    :cond_2
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "d":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1, p2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object v0, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method

.class public Lcom/android/server/net/BaseNetworkObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "BaseNetworkObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .prologue
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .locals 0
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    return-void
.end method

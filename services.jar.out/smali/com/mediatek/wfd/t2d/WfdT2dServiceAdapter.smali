.class public Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter;
.super Ljava/lang/Object;
.source "WfdT2dServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$IWfdT2dService;,
        Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createT2dService(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/media/RemoteDisplay;Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;)Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$IWfdT2dService;
    .locals 6
    .parameter "context"
    .parameter "manager"
    .parameter "channel"
    .parameter "remoteDisplay"
    .parameter "listener"

    .prologue
    new-instance v0, Lcom/mediatek/wfd/t2d/WfdT2dService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/wfd/t2d/WfdT2dService;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/media/RemoteDisplay;Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;)V

    .local v0, instance:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$IWfdT2dService;
    return-object v0
.end method

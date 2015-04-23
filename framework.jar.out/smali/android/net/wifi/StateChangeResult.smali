.class public Landroid/net/wifi/StateChangeResult;
.super Ljava/lang/Object;
.source "StateChangeResult.java"


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;

.field wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method constructor <init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    iput-object p2, p0, Landroid/net/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object p3, p0, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    iput p1, p0, Landroid/net/wifi/StateChangeResult;->networkId:I

    return-void
.end method

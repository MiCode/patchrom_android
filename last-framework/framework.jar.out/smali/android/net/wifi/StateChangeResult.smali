.class public Landroid/net/wifi/StateChangeResult;
.super Ljava/lang/Object;
.source "StateChangeResult.java"


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "state"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 28
    iput-object p2, p0, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    .line 29
    iput p1, p0, Landroid/net/wifi/StateChangeResult;->networkId:I

    .line 30
    return-void
.end method

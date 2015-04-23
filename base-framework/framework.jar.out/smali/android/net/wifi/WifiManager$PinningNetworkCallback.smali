.class Landroid/net/wifi/WifiManager$PinningNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinningNetworkCallback"
.end annotation


# instance fields
.field private mPinnedNetwork:Landroid/net/Network;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/WifiManager;
    .param p2, "x1"    # Landroid/net/wifi/WifiManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PinningNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;)V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$500()Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$500()Landroid/net/ConnectivityManager;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi alternate reality disabled on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    # invokes: Landroid/net/wifi/WifiManager;->unregisterPinningNetworkCallback()V
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$600(Landroid/net/wifi/WifiManager;)V

    :cond_0
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    # getter for: Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$500()Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    # getter for: Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$500()Landroid/net/ConnectivityManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi alternate reality enabled on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

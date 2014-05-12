.class Landroid/net/EthernetDataTracker$1;
.super Ljava/lang/Object;
.source "EthernetDataTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetDataTracker;->runDhcp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method constructor <init>(Landroid/net/EthernetDataTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .local v0, dhcpResults:Landroid/net/DhcpResults;
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Ethernet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP request error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    iget-object v3, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    iput-object v3, v2, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    iget-object v2, v2, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    iget-object v2, v2, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v2

    const/high16 v3, 0x7

    iget-object v4, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    iget-object v4, v4, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.class Lcom/android/server/wifi/WifiConfigStore$2;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;

.field final synthetic val$fqdn:Ljava/lang/String;

.field final synthetic val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$fqdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    # getter for: Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->access$200(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$homeSP:Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    # getter for: Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->access$200(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$2;->val$fqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->removeSP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$2;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write /data/misc/wifi/PerProviderSubscription.conf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/mediatek/agps/MtkAgpsManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .local v3, niData:[B
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->isGpsAvailable()Z
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "GPS settings is disabled by user, reject this WAP Push!!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    const-string v4, "wspHeaders"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .local v2, mHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "NI request(WapPush message) is rejected because wspHeaders are not found!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "X-Wap-Application-Id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, app_id:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "NI request(WapPush message) is rejected, because X-Wap-Application-Id is wrong !"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Application-Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; Expected Application-Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x-oma-application:ulp.ua"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #app_id:Ljava/lang/String;
    .end local v2           #mHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "received WapPush message data"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I
    invoke-static {v4, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v5, "Received null data in WapPush message"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$4;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: Received Wappsuh with unexpected intent action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

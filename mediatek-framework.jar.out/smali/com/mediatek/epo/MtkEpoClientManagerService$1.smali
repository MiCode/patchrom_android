.class Lcom/mediatek/epo/MtkEpoClientManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoClientManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "MTK_EPO_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    const-string v2, "timeout"

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeDownload()I
    invoke-static {v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$100(Lcom/mediatek/epo/MtkEpoClientManagerService;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    const-string v2, "connectivity change"

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$000(Lcom/mediatek/epo/MtkEpoClientManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$1;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->checkBeforeStartTimer()V
    invoke-static {v1}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$200(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    goto :goto_0
.end method

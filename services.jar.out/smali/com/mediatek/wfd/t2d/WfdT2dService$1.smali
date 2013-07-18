.class Lcom/mediatek/wfd/t2d/WfdT2dService$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdT2dService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/t2d/WfdT2dService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/t2d/WfdT2dService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/t2d/WfdT2dService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService$1;->this$0:Lcom/mediatek/wfd/t2d/WfdT2dService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "mediatek.nfc.handover.intent.action.WFD_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService$1;->this$0:Lcom/mediatek/wfd/t2d/WfdT2dService;

    #calls: Lcom/mediatek/wfd/t2d/WfdT2dService;->handleBroadcastT2d(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/wfd/t2d/WfdT2dService;->access$000(Lcom/mediatek/wfd/t2d/WfdT2dService;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

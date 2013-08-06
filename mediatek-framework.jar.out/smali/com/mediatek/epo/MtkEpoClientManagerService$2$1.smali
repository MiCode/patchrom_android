.class Lcom/mediatek/epo/MtkEpoClientManagerService$2$1;
.super Landroid/os/Handler;
.source "MtkEpoClientManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/epo/MtkEpoClientManagerService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/epo/MtkEpoClientManagerService$2;


# direct methods
.method constructor <init>(Lcom/mediatek/epo/MtkEpoClientManagerService$2;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$2$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManagerService$2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$2$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManagerService$2;

    iget-object v0, v0, Lcom/mediatek/epo/MtkEpoClientManagerService$2;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    #calls: Lcom/mediatek/epo/MtkEpoClientManagerService;->startEpoDownload()V
    invoke-static {v0}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$400(Lcom/mediatek/epo/MtkEpoClientManagerService;)V

    return-void
.end method

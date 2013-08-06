.class Lcom/mediatek/epo/MtkEpoClientManagerService$2;
.super Ljava/lang/Thread;
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
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$2;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManagerService$2;->this$0:Lcom/mediatek/epo/MtkEpoClientManagerService;

    new-instance v2, Lcom/mediatek/epo/MtkEpoClientManagerService$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/epo/MtkEpoClientManagerService$2$1;-><init>(Lcom/mediatek/epo/MtkEpoClientManagerService$2;Landroid/os/Looper;)V

    #setter for: Lcom/mediatek/epo/MtkEpoClientManagerService;->mDownloadHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/mediatek/epo/MtkEpoClientManagerService;->access$302(Lcom/mediatek/epo/MtkEpoClientManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.class Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;
.super Landroid/database/ContentObserver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "change"

    .prologue
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->isGpsAvailable()Z
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v0

    .local v0, status:Z
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Status in Settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    return-void
.end method

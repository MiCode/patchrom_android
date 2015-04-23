.class Landroid/net/EthernetManager$2;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Z)V
    .locals 5
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/EthernetManager$2;->this$0:Landroid/net/EthernetManager;

    # getter for: Landroid/net/EthernetManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/EthernetManager;->access$100(Landroid/net/EthernetManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

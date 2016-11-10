.class Landroid/net/EthernetManager$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    .local v1, "isAvailable":Z
    :goto_0
    iget-object v3, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    # getter for: Landroid/net/EthernetManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/net/EthernetManager;->access$000(Landroid/net/EthernetManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/EthernetManager$Listener;

    .local v2, "listener":Landroid/net/EthernetManager$Listener;
    invoke-interface {v2, v1}, Landroid/net/EthernetManager$Listener;->onAvailabilityChanged(Z)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isAvailable":Z
    .end local v2    # "listener":Landroid/net/EthernetManager$Listener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

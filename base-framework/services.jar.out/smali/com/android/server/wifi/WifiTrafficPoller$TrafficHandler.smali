.class Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    #setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$508(Lcom/android/server/wifi/WifiTrafficPoller;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #calls: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #calls: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    #getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

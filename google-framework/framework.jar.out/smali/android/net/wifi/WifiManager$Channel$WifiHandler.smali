.class Landroid/net/wifi/WifiManager$Channel$WifiHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$Channel;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, listener:Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .end local v0           #listener:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #listener:Ljava/lang/Object;
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    #getter for: Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;
    invoke-static {v2}, Landroid/net/wifi/WifiManager$Channel;->access$000(Landroid/net/wifi/WifiManager$Channel;)Landroid/net/wifi/WifiManager$ChannelListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    #getter for: Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;
    invoke-static {v2}, Landroid/net/wifi/WifiManager$Channel;->access$000(Landroid/net/wifi/WifiManager$Channel;)Landroid/net/wifi/WifiManager$ChannelListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/wifi/WifiManager$ChannelListener;->onChannelDisconnected()V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager$Channel;->access$002(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$ChannelListener;

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .restart local v0       #listener:Ljava/lang/Object;
    :sswitch_2
    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v0           #listener:Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .restart local v0       #listener:Ljava/lang/Object;
    :sswitch_3
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsResult;

    .local v1, result:Landroid/net/wifi/WpsResult;
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiManager$WpsListener;

    iget-object v3, v1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/net/wifi/WifiManager$WpsListener;->onStartSuccess(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    #getter for: Landroid/net/wifi/WifiManager$Channel;->mListenerMapLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/wifi/WifiManager$Channel;->access$100(Landroid/net/wifi/WifiManager$Channel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;->this$0:Landroid/net/wifi/WifiManager$Channel;

    #getter for: Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/net/wifi/WifiManager$Channel;->access$200(Landroid/net/wifi/WifiManager$Channel;)Landroid/util/SparseArray;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .end local v1           #result:Landroid/net/wifi/WpsResult;
    :sswitch_4
    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v0           #listener:Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$WpsListener;->onCompletion()V

    goto :goto_0

    .restart local v0       #listener:Ljava/lang/Object;
    :sswitch_5
    if-eqz v0, :cond_0

    check-cast v0, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/net/wifi/WifiManager$WpsListener;->onFailure(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x25002 -> :sswitch_1
        0x25003 -> :sswitch_2
        0x25005 -> :sswitch_1
        0x25006 -> :sswitch_2
        0x25008 -> :sswitch_1
        0x25009 -> :sswitch_2
        0x2500b -> :sswitch_3
        0x2500c -> :sswitch_5
        0x2500d -> :sswitch_4
        0x2500f -> :sswitch_1
        0x25010 -> :sswitch_2
        0x25012 -> :sswitch_1
        0x25013 -> :sswitch_2
    .end sparse-switch
.end method

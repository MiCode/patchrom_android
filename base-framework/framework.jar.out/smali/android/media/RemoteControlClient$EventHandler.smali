.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "rcc"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in RemoteControlClient handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1400(Landroid/media/RemoteControlClient;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1500(Landroid/media/RemoteControlClient;)V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_3
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    #calls: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;)V

    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_4
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/media/RemoteControlClient;->onNewInternalClientGen(Ljava/lang/Integer;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/RemoteControlClient;->access$1600(Landroid/media/RemoteControlClient;Ljava/lang/Integer;II)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V
    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->access$1700(Landroid/media/RemoteControlClient;I)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    #calls: Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v1, v0}, Landroid/media/RemoteControlClient;->access$1800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    #calls: Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v1, v0}, Landroid/media/RemoteControlClient;->access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

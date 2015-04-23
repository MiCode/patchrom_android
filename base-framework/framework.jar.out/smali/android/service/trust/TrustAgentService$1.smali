.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .local v0, "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v2

    .local v2, "result":Z
    iget-object v3, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    iget-object v5, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v5}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    # invokes: Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "data":Landroid/service/trust/TrustAgentService$ConfigurationData;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :pswitch_2
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v3}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

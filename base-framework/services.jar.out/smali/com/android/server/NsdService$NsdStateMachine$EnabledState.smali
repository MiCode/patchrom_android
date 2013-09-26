.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1
    .parameter "clientId"
    .parameter "globalId"
    .parameter "clientInfo"

    .prologue
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 3
    .parameter "clientInfo"

    .prologue
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 2
    .parameter "clientId"
    .parameter "globalId"
    .parameter "clientInfo"

    .prologue
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;Z)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1000(Lcom/android/server/NsdService;)Z

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->stopMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1100(Lcom/android/server/NsdService;)Z

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0x6000a

    const v11, 0x60007

    const v10, 0x60003

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x1

    .local v4, result:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1000(Lcom/android/server/NsdService;)Z

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->stopMDnsDaemon()Z
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1100(Lcom/android/server/NsdService;)Z

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #getter for: Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v7

    #calls: Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1500(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    const-string v6, "NsdService"

    const-string v7, "Discover services"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .local v5, servInfo:Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .local v0, clientInfo:Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    .local v3, id:I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z
    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->access$1700(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discover "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60002

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;I)Z

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v0           #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    .end local v3           #id:I
    .end local v5           #servInfo:Landroid/net/nsd/NsdServiceInfo;
    :sswitch_4
    const-string v6, "NsdService"

    const-string v7, "Stop service discovery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .restart local v0       #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    :try_start_0
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3       #id:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60008

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .end local v3           #id:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #id:I
    :cond_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v0           #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    .end local v3           #id:I
    :sswitch_5
    const-string v6, "NsdService"

    const-string v7, "Register service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .restart local v0       #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    .restart local v3       #id:I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    #calls: Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Register "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;I)Z

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v0           #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    .end local v3           #id:I
    :sswitch_6
    const-string v6, "NsdService"

    const-string v7, "unregister service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .restart local v0       #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    :try_start_1
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .restart local v3       #id:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000e

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .end local v3           #id:I
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #id:I
    :cond_7
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v0           #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    .end local v3           #id:I
    :sswitch_7
    const-string v6, "NsdService"

    const-string v7, "Resolve service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .restart local v5       #servInfo:Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .restart local v0       #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    #getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    const/4 v8, 0x3

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    .restart local v3       #id:I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #calls: Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    #setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    #calls: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v0           #clientInfo:Lcom/android/server/NsdService$ClientInfo;
    .end local v3           #id:I
    .end local v5           #servInfo:Landroid/net/nsd/NsdServiceInfo;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    .local v2, event:Lcom/android/server/NsdService$NativeEvent;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget v7, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/server/NsdService;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/NsdService;->access$2500(Lcom/android/server/NsdService;ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x60001 -> :sswitch_3
        0x60006 -> :sswitch_4
        0x60009 -> :sswitch_5
        0x6000c -> :sswitch_6
        0x60012 -> :sswitch_7
        0x60019 -> :sswitch_2
        0x6001a -> :sswitch_8
    .end sparse-switch
.end method

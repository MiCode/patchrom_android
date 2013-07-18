.class final Lcom/android/server/LocationManagerService$StatusUpdateTimer;
.super Landroid/os/CountDownTimer;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusUpdateTimer"
.end annotation


# static fields
.field private static final LOCATION_PROVIDER_STATUS_CHECK_INTERVAL:I = 0x7530


# instance fields
.field private final mStatusByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerStarted:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x7530

    iput-object p1, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->resetProviderStatus()V

    return-void
.end method

.method private onFinishLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const-string v9, "LocationManagerService"

    const-string v10, "status timer finished"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, removedProvides:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, provider:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, s:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v12, :cond_0

    iget-object v9, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removed provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, extras:Landroid/os/Bundle;
    invoke-interface {v4, v1}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v8

    .local v8, status:I
    invoke-virtual {p0, v5, v8}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->updateProviderStatus(Ljava/lang/String;I)V

    if-eq v8, v12, :cond_0

    iget-object v9, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .local v0, aReceiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v9, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update status of provider "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .end local v0           #aReceiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v5           #provider:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/Integer;
    .end local v8           #status:I
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5       #provider:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v5           #provider:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->shouldStop()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->start()Landroid/os/CountDownTimer;

    :goto_3
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->stopTimer()V

    goto :goto_3
.end method

.method private resetProviderStatus()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, provider:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1           #provider:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private shouldStop()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, t:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .local v0, aReceiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v6, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, provider:Ljava/lang/String;
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #aReceiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    const-string v6, "passive"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    const-string v0, "LocationManagerService"

    const-string v1, "cancel status update timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->resetProviderStatus()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isTimerStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    return v0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->onFinishLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    return-void
.end method

.method public startTimer()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    const-string v0, "LocationManagerService"

    const-string v1, "start update status timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateProviderStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "provider"
    .parameter "status"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mTimerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$StatusUpdateTimer;->mStatusByProvider:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

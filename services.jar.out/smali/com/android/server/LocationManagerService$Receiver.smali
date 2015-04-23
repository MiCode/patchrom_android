.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mPid:I

.field final mUid:I

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .locals 3
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .prologue
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    :goto_0
    # invokes: Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$700(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    iput p5, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iput p4, p0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iput-object p6, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p7, 0x0

    :cond_0
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    # getter for: Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p7, :cond_1

    new-instance p7, Landroid/os/WorkSource;

    .end local p7    # "workSource":Landroid/os/WorkSource;
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .restart local p7    # "workSource":Landroid/os/WorkSource;
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_2
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .locals 4
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationManagerService"

    const-string v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    goto :goto_1

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "locationChanged":Landroid/content/Intent;
    const-string v0, "location"

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    goto :goto_1
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    :goto_1
    move v0, v9

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    goto :goto_2

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "providerIntent":Landroid/content/Intent;
    const-string v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    goto :goto_2
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    goto :goto_1

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "statusChanged":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    goto :goto_1
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingIntent()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "s":Ljava/lang/StringBuilder;
    const-string v3, "Reciever["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v3, :cond_0

    const-string v3, " listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    const-string v3, " intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateMonitoring(Z)V
    .locals 12
    .param p1, "allow"    # Z

    .prologue
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    .local v5, "requestingLocation":Z
    const/4 v4, 0x0

    .local v4, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_3

    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .local v6, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v9, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    # invokes: Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .local v2, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_1
    if-eqz v3, :cond_2

    iget v8, v3, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    const/4 v4, 0x1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v6    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/16 v9, 0x29

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    iget-boolean v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .local v7, "wasHighPowerMonitoring":Z
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/16 v9, 0x2a

    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v8, v7, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "wasHighPowerMonitoring":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v6    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

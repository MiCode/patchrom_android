.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v13}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleDaemonConnected()V
    invoke-static {v13}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->isReady()Z
    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "MountService"

    const-string v14, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string v13, "MountService"

    const-string v14, "Running fstrim idle maintenance"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;J)J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static {v13}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static {v14}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->shouldBenchmark()Z
    invoke-static {v13}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v9

    .local v9, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v14

    const-string v15, "fstrim"

    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    if-eqz v9, :cond_2

    const-string v13, "dotrimbench"

    :goto_2
    aput-object v13, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    .local v3, "callback":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .end local v3    # "callback":Ljava/lang/Runnable;
    .end local v9    # "shouldBenchmark":Z
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Unable to record last fstrim!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string v13, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .local v7, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v13, "MountService"

    const-string v14, "Failed to run fstrim!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v7    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v9    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/storage/IMountShutdownObserver;

    .local v8, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v10, 0x0

    .local v10, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "shutdown"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v10

    :goto_4
    if-eqz v8, :cond_0

    if-eqz v10, :cond_3

    const/4 v13, 0x0

    :goto_5
    :try_start_4
    invoke-interface {v8, v13}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v13

    goto/16 :goto_0

    :cond_3
    const/4 v13, -0x1

    goto :goto_5

    .end local v8    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .end local v10    # "success":Z
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/storage/VolumeInfo;

    .local v12, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v13, v12}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring mount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " due to policy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "mount"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v12, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v12, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget v0, v12, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v13

    goto/16 :goto_0

    .end local v12    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/storage/StorageVolume;

    .local v11, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    .local v5, "envState":Ljava/lang/String;
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Volume "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " broadcasting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "storage_volume"

    invoke-virtual {v6, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v13, 0x4000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v2    # "action":Ljava/lang/String;
    .end local v5    # "envState":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v15, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v13, v6, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v10    # "success":Z
    :catch_4
    move-exception v13

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputServiceConnection"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v11, v13}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .local v8, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {p2 .. p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8, v11}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v11

    if-nez v11, :cond_0

    new-instance v11, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8, v11}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2202(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v13

    invoke-interface {v11, v13}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .local v9, "sessionToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    invoke-static {v11, v13, v9, v14}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    goto :goto_1

    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v9    # "sessionToken":Landroid/os/IBinder;
    .end local v10    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .restart local v8    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .restart local v10    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v11, "TvInputManagerService"

    const-string v13, "error in registerCallback"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .local v7, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v13

    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v14

    const/4 v15, 0x0

    # invokes: Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    invoke-static {v11, v10, v13, v14, v15}, Lcom/android/server/tv/TvInputManagerService;->access$6300(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    goto :goto_2

    .end local v7    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :cond_3
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v5

    .local v5, "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v4, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :try_start_4
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v11, "TvInputManagerService"

    const-string v13, "error in notifyHardwareAdded"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/tv/TvInputHardwareManager;->getHdmiDeviceList()Ljava/util/List;

    move-result-object v2

    .local v2, "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v1, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_start_6
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v11

    invoke-interface {v11, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v11, "TvInputManagerService"

    const-string v13, "error in notifyHdmiDeviceAdded"

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v1    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "hardwareInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :cond_5
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (actual)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1000(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3002(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3102(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Landroid/media/tv/ITvInputService;)Landroid/media/tv/ITvInputService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2202(Lcom/android/server/tv/TvInputManagerService$ServiceState;Lcom/android/server/tv/TvInputManagerService$ServiceCallback;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->access$6400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    :cond_1
    monitor-exit v3

    return-void

    .end local v0    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

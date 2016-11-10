.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_TV_INPUT:I = 0x3

.field private static final DO_ADD_HDMI_TV_INPUT:I = 0x5

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_TV_INPUT:I = 0x4

.field private static final DO_REMOVE_HDMI_TV_INPUT:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputService;
    .param p2, "x1"    # Landroid/media/tv/TvInputService$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private broadcastAddHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareTvInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastAddHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiTvInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastRemoveTvInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeTvInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveTvInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    # getter for: Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    const-string v17, "TvInputService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unhandled message code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputChannel;

    .local v4, "channel":Landroid/view/InputChannel;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    .local v3, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "inputId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v14

    .local v14, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v14, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v17, "TvInputService"

    const-string v18, "error in onSessionCreated"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v16, Landroid/media/tv/ITvInputSessionWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v4}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    .local v16, "stub":Landroid/media/tv/ITvInputSession;
    instance-of v0, v14, Landroid/media/tv/TvInputService$HardwareSession;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v13, v14

    check-cast v13, Landroid/media/tv/TvInputService$HardwareSession;

    .local v13, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v13}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v8

    .local v8, "hardwareInputId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z
    invoke-static {v0, v8}, Landroid/media/tv/TvInputService;->access$1800(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "TvInputService"

    const-string v18, "Hardware input id is not setup yet."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v14}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v17, "TvInputService"

    const-string v18, "error in onSessionCreated"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v17, "TvInputService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid hardware input id : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v0, v16

    # setter for: Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;
    invoke-static {v13, v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1502(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    # setter for: Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;
    invoke-static {v13, v3}, Landroid/media/tv/TvInputService$HardwareSession;->access$1602(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    # getter for: Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    # setter for: Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v13, v0}, Landroid/media/tv/TvInputService$HardwareSession;->access$1702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    const-string v18, "tv_input"

    invoke-virtual/range {v17 .. v18}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/tv/TvInputManager;

    .local v12, "manager":Landroid/media/tv/TvInputManager;
    # getter for: Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;
    invoke-static {v13}, Landroid/media/tv/TvInputService$HardwareSession;->access$1900(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v18, v0

    # getter for: Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v8, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v12    # "manager":Landroid/media/tv/TvInputManager;
    .end local v13    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :cond_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v15

    .local v15, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v14, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    # getter for: Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v4    # "channel":Landroid/view/InputChannel;
    .end local v10    # "inputId":Ljava/lang/String;
    .end local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v15    # "someArgs":Lcom/android/internal/os/SomeArgs;
    .end local v16    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v14, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v14, Landroid/media/tv/TvInputService$Session;

    .restart local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/tv/ITvInputSession;

    .restart local v16    # "stub":Landroid/media/tv/ITvInputSession;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    .restart local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Landroid/os/IBinder;

    .local v9, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, v16

    invoke-interface {v3, v0, v9}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    if-eqz v14, :cond_6

    # invokes: Landroid/media/tv/TvInputService$Session;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    invoke-static {v14, v3}, Landroid/media/tv/TvInputService$Session;->access$2000(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catch_2
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v17, "TvInputService"

    const-string v18, "error in onSessionCreated"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v9    # "hardwareSessionToken":Landroid/os/IBinder;
    .end local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v16    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/media/tv/TvInputHardwareInfo;

    .local v7, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    .local v11, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v11, :cond_0

    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V

    goto/16 :goto_0

    .end local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/media/tv/TvInputHardwareInfo;

    .restart local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "inputId":Ljava/lang/String;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveTvInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v10    # "inputId":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .local v5, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    .restart local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v11, :cond_0

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V

    goto/16 :goto_0

    .end local v5    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .restart local v5    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "inputId":Ljava/lang/String;
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveTvInput(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

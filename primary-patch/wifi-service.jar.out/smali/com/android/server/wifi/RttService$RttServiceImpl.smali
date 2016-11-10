.class Lcom/android/server/wifi/RttService$RttServiceImpl;
.super Landroid/net/wifi/IRttManager$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27300

.field private static final CMD_DRIVER_LOADED:I = 0x27300

.field private static final CMD_DRIVER_UNLOADED:I = 0x27301

.field private static final CMD_ISSUE_NEXT_REQUEST:I = 0x27302

.field private static final CMD_RTT_RESPONSE:I = 0x27303


# instance fields
.field private mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

.field final synthetic this$0:Lcom/android/server/wifi/RttService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->this$0:Lcom/android/server/wifi/RttService;

    invoke-direct {p0}, Landroid/net/wifi/IRttManager$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$2;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    iput-object p2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method enforcePermissionCheck(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    const/4 v3, -0x1

    iget v4, p1, Landroid/os/Message;->sendingUid:I

    const-string v5, "LocationRTT"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, -0x5

    const-string v2, "No params"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    .restart local v0    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Issued next RTT request with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    const-string v1, "RttService"

    const-string v2, "Fail to issue key at native layer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    const/4 v2, -0x1

    const-string v3, "Failed to start"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportFailed(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "RttService"

    const-string v2, "No more requests left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27202

    iput v2, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "android.net.wifi.RttManager.Description"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27203

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiRttService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mClientHandler:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;

    new-instance v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$1;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->start()V

    return-void
.end method

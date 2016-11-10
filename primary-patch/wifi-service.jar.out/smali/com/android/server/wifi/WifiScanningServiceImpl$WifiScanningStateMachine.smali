.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiScanningStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

.field private final mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

.field private final mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string v0, "WifiScanningService"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogRecSize(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogOnlyTransitions(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of clients : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v3, v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .local v0, "client":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v2, "------\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .end local v0    # "client":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "localLog : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$1600()Landroid/util/LocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    const v0, 0x27104

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    const v0, 0x27101

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    const v0, 0x27102

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    const v0, 0x27103

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    const v0, 0x27108

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    .prologue
    const v0, 0x27109

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    return-void
.end method

.method public onScanResultsAvailable()V
    .locals 1

    .prologue
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    return-void
.end method

.method public onScanStatus()V
    .locals 1

    .prologue
    const v0, 0x27100

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    return-void
.end method

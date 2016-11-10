.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    const/4 v1, 0x1

    return v1

    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->access$500(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v2, "could not get scan capabilities"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$800(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    const-string v2, "could not start HAL"

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$900(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v2, -0x1

    const-string v3, "not available"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x27000 -> :sswitch_2
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_2
        0x27004 -> :sswitch_2
        0x27006 -> :sswitch_2
        0x27007 -> :sswitch_2
        0x2700b -> :sswitch_2
        0x2700c -> :sswitch_2
        0x2700d -> :sswitch_2
        0x27015 -> :sswitch_2
        0x27016 -> :sswitch_2
        0x27100 -> :sswitch_0
        0x27101 -> :sswitch_0
        0x27106 -> :sswitch_1
    .end sparse-switch
.end method

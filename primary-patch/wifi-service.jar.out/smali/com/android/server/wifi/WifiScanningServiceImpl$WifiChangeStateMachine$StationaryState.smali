.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StationaryState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/net/wifi/ScanResult;

    check-cast v0, [Landroid/net/wifi/ScanResult;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->access$2500(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChange()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->access$2600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->access$2700(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PausedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

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
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1500(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Landroid/os/Message;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    # getter for: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$600(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->access$1400(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x27109
        :pswitch_0
    .end packed-switch
.end method

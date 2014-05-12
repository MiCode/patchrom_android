.class Lcom/android/server/wifi/WifiController$DeviceInactiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x26002 -> :sswitch_1
        0x26006 -> :sswitch_0
    .end sparse-switch
.end method

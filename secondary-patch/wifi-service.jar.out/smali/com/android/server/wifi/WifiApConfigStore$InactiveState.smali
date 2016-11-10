.class Lcom/android/server/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # setter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$002(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "WifiApConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to setup AP config without SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method

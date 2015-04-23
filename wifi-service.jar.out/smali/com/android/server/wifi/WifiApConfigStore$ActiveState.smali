.class Lcom/android/server/wifi/WifiApConfigStore$ActiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;-><init>(Lcom/android/server/wifi/WifiApConfigStore$ActiveState;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->access$500(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$600(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$700(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

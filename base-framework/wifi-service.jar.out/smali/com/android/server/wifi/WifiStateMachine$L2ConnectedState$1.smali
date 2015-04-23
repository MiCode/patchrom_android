.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/net/IpReachabilityMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "logMsg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20095

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.class Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UntrustedWifiNetworkFactory"
.end annotation


# instance fields
.field private mUntrustedReqCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "f"    # Landroid/net/NetworkCapabilities;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUntrustedReqCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    const/4 v2, 0x1

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->setAllowUntrustedConnections(Z)V

    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->mUntrustedReqCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->setAllowUntrustedConnections(Z)V

    :cond_0
    return-void
.end method

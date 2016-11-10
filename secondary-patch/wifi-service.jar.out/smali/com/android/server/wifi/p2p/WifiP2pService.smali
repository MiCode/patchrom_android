.class public final Lcom/android/server/wifi/p2p/WifiP2pService;
.super Lcom/android/server/SystemService;
.source "WifiP2pService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pService;->mImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pService;->mImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->connectivityServiceReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "WifiP2pService"

    const-string v1, "Registering wifip2p"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifip2p"

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pService;->mImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

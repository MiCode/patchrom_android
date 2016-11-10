.class public Lcom/android/server/wifi/WifiScanningService;
.super Lcom/android/server/SystemService;
.source "WifiScanningService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string v0, "WifiScanningService"

    const-string v1, "Creating wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    const-string v0, "WifiScanningService"

    const-string v1, "Registering wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->startService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const-string v0, "WifiScanningService"

    const-string v1, "Starting wifiscanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifiscanner"

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningService;->mImpl:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

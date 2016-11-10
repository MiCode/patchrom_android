.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(I)V

    return-void
.end method

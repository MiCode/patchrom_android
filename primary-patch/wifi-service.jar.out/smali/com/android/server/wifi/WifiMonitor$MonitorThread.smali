.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MonitorThread start with mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$600(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$600(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiMonitor"

    const-string v2, "MonitorThread exit because mConnected is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .local v0, "eventStr":Ljava/lang/String;
    const-string v1, "BSS-ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string v1, "BSS-REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$700(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/wifi/WifiMonitor;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiMonitor"

    const-string v2, "Disconnecting from the supplicant, no more events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

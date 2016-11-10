.class Lcom/android/server/wifi/WifiNative$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiNative$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v0, "WifiNative-HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for HAL events mWifiHalHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->access$000()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/wifi/WifiNative;->waitForHalEventNative()V
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->access$100()V

    return-void
.end method

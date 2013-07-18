.class Lcom/android/server/NetworkTimeUpdateService$4;
.super Ljava/lang/Thread;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$milliseconds:I

.field final synthetic val$timeoutMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->val$milliseconds:I

    iput-object p3, p0, Lcom/android/server/NetworkTimeUpdateService$4;->val$timeoutMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, isTimeout:Z
    :try_start_0
    iget v2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->val$milliseconds:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "NetworkTimeUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->val$timeoutMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #getter for: Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/NetworkTimeUpdateService;->access$600(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #getter for: Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v2}, Lcom/android/server/NetworkTimeUpdateService;->access$800(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    #getter for: Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v3}, Lcom/android/server/NetworkTimeUpdateService;->access$700(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService$4;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.class Lcom/android/server/PowerManagerService$8;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    #calls: Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
    invoke-static {v2, v0}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

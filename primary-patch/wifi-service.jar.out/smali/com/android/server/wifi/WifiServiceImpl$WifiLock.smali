.class Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
.super Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 0
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "ws"    # Landroid/os/WorkSource;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

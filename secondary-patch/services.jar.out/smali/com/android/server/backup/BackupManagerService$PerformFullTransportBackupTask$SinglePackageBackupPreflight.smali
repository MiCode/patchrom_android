.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
.implements Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupPreflight"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 2
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleTimeout()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x3eb

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public operationComplete(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v2

    .local v2, "token":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v2, v6, v7, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v5, "preflighting"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {p2, v2, v4}, Landroid/app/IBackupAgent;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .local v3, "totalSize":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    int-to-long v6, v3

    invoke-interface {v4, v6, v7}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "token":I
    .end local v3    # "totalSize":I
    .local v1, "result":I
    :goto_0
    return v1

    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception preflighting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3eb

    .restart local v1    # "result":I
    goto :goto_0
.end method

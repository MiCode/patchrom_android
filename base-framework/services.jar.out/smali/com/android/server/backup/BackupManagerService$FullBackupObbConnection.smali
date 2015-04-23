.class Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    return-void
.end method

.method private waitForConnection()V
    .locals 1

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .local v2, "success":Z
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    const/4 v1, 0x0

    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v3

    .local v3, "token":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v6, v7, v5}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v5, v6, v3, v7}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    # invokes: Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v4, v5, p2}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "token":I
    :cond_1
    :goto_0
    return v2

    .restart local v3    # "token":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "token":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to back up OBBs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_3
    const/4 v5, 0x1

    aget-object v5, v1, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_1
    throw v4

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public establish()V
    .locals 5

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.sharedstoragebackup"

    const-string v4, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore OBBs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

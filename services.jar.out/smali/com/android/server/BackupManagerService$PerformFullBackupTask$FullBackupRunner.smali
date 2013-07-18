.class Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ)V
    .locals 1
    .parameter
    .parameter "pack"
    .parameter "agent"
    .parameter "pipe"
    .parameter "token"
    .parameter "sendApk"
    .parameter "writeManifest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    iput-boolean p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mWriteManifest:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    :try_start_0
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .local v5, output:Landroid/app/backup/BackupDataOutput;
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mWriteManifest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    #calls: Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->access$900(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v4, v4, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #calls: Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    invoke-static {v0, v1, v5}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->access$1000(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5           #output:Landroid/app/backup/BackupDataOutput;
    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    :try_start_2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

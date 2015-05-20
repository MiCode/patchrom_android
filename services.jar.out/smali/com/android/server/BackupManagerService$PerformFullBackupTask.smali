.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Lcom/android/server/BackupManagerService$ObbServiceClient;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "curPassword"    # Ljava/lang/String;
    .param p8, "encryptPassword"    # Ljava/lang/String;
    .param p9, "doAllApps"    # Z
    .param p10, "doSystem"    # Z
    .param p11, "packages"    # [Ljava/lang/String;
    .param p12, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$ObbServiceClient;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    iput-boolean p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p8, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_0
    iput-object p12, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    return-void

    :cond_1
    iput-object p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to full backup agent : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    .local v3, "agent":Landroid/app/IBackupAgent;
    if-eqz v3, :cond_a

    const/4 v11, 0x0

    .local v11, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v8, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "isSharedStorage":Z
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v1, :cond_3

    if-nez v10, :cond_3

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    :cond_0
    const/4 v6, 0x1

    .local v6, "sendApk":Z
    :goto_0
    if-eqz v10, :cond_4

    const-string v1, "Shared storage"

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v5

    .local v5, "token":I
    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v1, 0x1

    aget-object v4, v11, v1

    if-nez v10, :cond_5

    const/4 v7, 0x1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ)V

    .local v0, "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v11, v1

    new-instance v12, Ljava/lang/Thread;

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v12, "t":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v2, 0x0

    aget-object v2, v11, v2

    # invokes: Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v1, v2, p2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup failed on package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_2

    const/4 v1, 0x0

    aget-object v1, v11, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v11, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "isSharedStorage":Z
    .end local v11    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v12    # "t":Ljava/lang/Thread;
    :cond_2
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    return-void

    .restart local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "isSharedStorage":Z
    .restart local v11    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "sendApk":Z
    :cond_4
    :try_start_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .restart local v5    # "token":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .restart local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v12    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Caught exception reading from agent"

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "isSharedStorage":Z
    .end local v12    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_2

    const/4 v1, 0x0

    aget-object v1, v11, v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_6
    const/4 v1, 0x1

    aget-object v1, v11, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v9

    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    :goto_6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v5    # "token":I
    .restart local v6    # "sendApk":Z
    .restart local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "isSharedStorage":Z
    .restart local v12    # "t":Ljava/lang/Thread;
    :cond_7
    :try_start_7
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full package backup success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .end local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v5    # "token":I
    .end local v6    # "sendApk":Z
    .end local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "isSharedStorage":Z
    .end local v12    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_8
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_9

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_8
    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_9
    :goto_7
    throw v1

    .end local v11    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_a
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to full agent for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .restart local v11    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v0    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v5    # "token":I
    .restart local v6    # "sendApk":Z
    .restart local v8    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "isSharedStorage":Z
    .restart local v12    # "t":Ljava/lang/Thread;
    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    goto :goto_6
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 23
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v17

    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v9

    .local v9, "checksumSalt":[B
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/16 v2, 0x400

    :try_start_0
    new-array v1, v2, [B

    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "eof":[B
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .locals 19
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .local v16, "obbDir":Ljava/io/File;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .local v17, "obbFiles":[Ljava/io/File;
    if-eqz v17, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .local v9, "obbDirName":Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, "arr$":[Ljava/io/File;
    array-length v14, v12

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v15, v12, v13

    .local v15, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "obb":Ljava/io/File;
    .end local v17    # "obbFiles":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .local v6, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .end local v3    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_3

    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v5, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-static {p2}, Lcom/android/server/BackupManagerService$Injector;->resetManifestFileModifiedTime(Ljava/io/File;)V

    return-void

    .end local v5    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "installerName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .end local v3    # "installerName":Ljava/lang/String;
    :cond_2
    const-string v8, "0"

    goto :goto_1

    :cond_3
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    const-string v23, "BackupManagerService"

    const-string v24, "--- Performing full-dataset backup ---"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, "packagesToBackup":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v16, Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    .local v16, "obbConnection":Lcom/android/server/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x40

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_1

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .local v21, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .end local v13    # "i":I
    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v22, v4, v14

    .local v22, "pkgName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "BackupManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", skipping"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v22    # "pkgName":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_5

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .restart local v21    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const v24, 0x8000

    and-int v23, v23, v24

    #if-eqz v23, :cond_3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "com.android.sharedstoragebackup"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    :cond_3
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v13, 0x0

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_7

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .restart local v21    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_7
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v18, "ofstream":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .local v19, "out":Ljava/io/OutputStream;
    const/16 v21, 0x0

    .restart local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_9

    const/4 v8, 0x1

    .local v8, "encrypting":Z
    :goto_5
    const/4 v5, 0x1

    .local v5, "compressing":Z
    move-object/from16 v9, v18

    .local v9, "finalOutput":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string v23, "BackupManagerService"

    const-string v24, "Backup password mismatch; aborting"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_8

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    .end local v5    # "compressing":Z
    .end local v8    # "encrypting":Z
    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    :goto_7
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_5

    .restart local v5    # "compressing":Z
    .restart local v8    # "encrypting":Z
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    :cond_a
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v23, 0x400

    move/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v12, "headerbuf":Ljava/lang/StringBuilder;
    const-string v23, "ANDROID BACKUP\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_d

    const-string v23, "\n1\n"

    :goto_8
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_e

    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    move-object v10, v9

    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .local v10, "finalOutput":Ljava/io/OutputStream;
    :goto_9
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .local v11, "header":[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v5, :cond_15

    new-instance v6, Ljava/util/zip/Deflater;

    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .local v6, "deflater":Ljava/util/zip/Deflater;
    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v9, v10, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v6    # "deflater":Ljava/util/zip/Deflater;
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    :goto_a
    move-object/from16 v19, v9

    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v23, v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v23, :cond_b

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.android.sharedstoragebackup"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_b
    :goto_b
    :try_start_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "N":I
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v3, :cond_12

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v17

    .local v17, "obbOkay":Z
    if-nez v17, :cond_11

    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failure writing OBB stack for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v3    # "N":I
    .end local v5    # "compressing":Z
    .end local v8    # "encrypting":Z
    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .end local v11    # "header":[B
    .end local v12    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v17    # "obbOkay":Z
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v23, "BackupManagerService"

    const-string v24, "App died during full backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_c

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_7

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v5    # "compressing":Z
    .restart local v8    # "encrypting":Z
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_d
    :try_start_f
    const-string v23, "\n0\n"
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_8

    :cond_e
    :try_start_10
    const-string v23, "none\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v10, v9

    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_9

    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :goto_e
    :try_start_11
    const-string v23, "BackupManagerService"

    const-string v24, "Unable to emit archive header"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_f

    :try_start_12
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_7

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "header":[B
    :catch_3
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15
    const-string v23, "BackupManagerService"

    const-string v24, "Unable to find shared-storage backup handler"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_b

    .end local v5    # "compressing":Z
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "encrypting":Z
    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .end local v11    # "header":[B
    .end local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_16
    const-string v23, "BackupManagerService"

    const-string v24, "Internal exception during full backup"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_10

    :try_start_17
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_7

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "N":I
    .restart local v5    # "compressing":Z
    .restart local v8    # "encrypting":Z
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "header":[B
    .restart local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    :cond_12
    :try_start_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_13

    :try_start_1b
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_7

    .end local v3    # "N":I
    .end local v5    # "compressing":Z
    .end local v8    # "encrypting":Z
    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .end local v11    # "header":[B
    .end local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_14

    :try_start_1e
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v23

    :catchall_1
    move-exception v23

    :try_start_21
    monitor-exit v24
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    throw v23

    :catchall_2
    move-exception v23

    :try_start_22
    monitor-exit v24
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    throw v23

    .local v7, "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v23

    :try_start_23
    monitor-exit v24
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    throw v23

    :catchall_4
    move-exception v23

    :try_start_24
    monitor-exit v24
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    throw v23

    .local v7, "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v23

    :try_start_25
    monitor-exit v24
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    throw v23

    :catchall_6
    move-exception v23

    :try_start_26
    monitor-exit v24
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    throw v23

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "compressing":Z
    .restart local v8    # "encrypting":Z
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    :catchall_7
    move-exception v23

    :try_start_27
    monitor-exit v24
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    throw v23

    :catchall_8
    move-exception v23

    :try_start_28
    monitor-exit v24
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    throw v23

    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_9
    move-exception v23

    :try_start_29
    monitor-exit v24
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    throw v23

    :catchall_a
    move-exception v23

    :try_start_2a
    monitor-exit v24
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    throw v23

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "N":I
    .restart local v11    # "header":[B
    :catchall_b
    move-exception v23

    :try_start_2b
    monitor-exit v24
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    throw v23

    :catchall_c
    move-exception v23

    :try_start_2c
    monitor-exit v24
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    throw v23

    :catch_5
    move-exception v23

    goto/16 :goto_11

    .end local v3    # "N":I
    .end local v11    # "header":[B
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v23

    goto/16 :goto_f

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v23

    goto/16 :goto_6

    .end local v5    # "compressing":Z
    .end local v8    # "encrypting":Z
    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v23

    goto/16 :goto_10

    .local v7, "e":Landroid/os/RemoteException;
    :catch_9
    move-exception v23

    goto/16 :goto_d

    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v24

    goto/16 :goto_12

    .restart local v5    # "compressing":Z
    .restart local v8    # "encrypting":Z
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_b
    move-exception v7

    move-object v9, v10

    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_e

    .end local v9    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "header":[B
    :cond_15
    move-object v9, v10

    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v9    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_a
.end method

.method sendEndBackup()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartBackup()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

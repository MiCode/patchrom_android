.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .parameter
    .parameter "stats"
    .parameter "observer"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 3

    .prologue
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method handleStartCopy()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v12, v12, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    #calls: Lcom/android/server/pm/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    invoke-static {v10, v12, v13}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    .local v8, mounted:Z
    :goto_0
    if-eqz v8, :cond_1

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, externalCacheDir:Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v1

    .local v1, externalCacheSize:J
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iput-wide v1, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .local v3, externalDataDir:Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, externalDataSize:J
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sub-long/2addr v4, v1

    :cond_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iput-wide v4, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .local v6, externalMediaDir:Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v10, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .local v7, externalObbDir:Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v10, Landroid/content/pm/PackageStats;->externalObbSize:J

    .end local v0           #externalCacheDir:Ljava/io/File;
    .end local v1           #externalCacheSize:J
    .end local v3           #externalDataDir:Ljava/io/File;
    .end local v4           #externalDataSize:J
    .end local v6           #externalMediaDir:Ljava/io/File;
    .end local v7           #externalObbDir:Ljava/io/File;
    :cond_1
    return-void

    .end local v8           #mounted:Z
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .local v9, status:Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "mounted_ro"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    const/4 v8, 0x1

    .restart local v8       #mounted:Z
    :goto_1
    goto/16 :goto_0

    .end local v8           #mounted:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field volatile mService:Lcom/android/server/backup/BackupManagerService;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "backup-suppress"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    const-string v1, "ro.backup.disable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_0
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    :cond_0
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 2
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "BackupManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method endFullBackup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->endFullBackup()V

    :cond_0
    return-void
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/backup/BackupManagerService;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasBackupPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(I)V
    .locals 3
    .param p1, "whichUser"    # I

    .prologue
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_1

    const-string v0, "BackupManagerService"

    const-string v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackupServiceActive(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public opComplete(IJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opComplete(IJ)V

    :cond_0
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoRestore(Z)V
    .locals 1
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(Z)V

    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackupProvisioned(Z)V
    .locals 1
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupProvisioned(Z)V

    :cond_0
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "makeActive"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "caller":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No permission to configure backup activity"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v2, :cond_2

    const-string v2, "BackupManagerService"

    const-string v3, "Backup/restore not supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    move-result v2

    if-eq p2, v2, :cond_3

    const-string v3, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Making backup "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_4

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "active in user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    new-instance v2, Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    const-string v2, "in"

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

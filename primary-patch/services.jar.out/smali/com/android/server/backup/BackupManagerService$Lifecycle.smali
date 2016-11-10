.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x258

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v2, v2, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "r":Landroid/content/ContentResolver;
    const-string v2, "backup_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .local v0, "areEnabled":Z
    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

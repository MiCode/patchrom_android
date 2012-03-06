.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String; = "/data/data/com.android.settings/files"

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "/data/system/wallpaper_info.xml"

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String; = "/data/system"

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .parameter "output"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    const-string v3, "/data/system"

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    const-string v3, "/data/data/com.android.settings/files"

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 86
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 60
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    aput-object v2, v0, v3

    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v2, v0, v4

    .line 61
    .local v0, files:[Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    .end local v0           #files:[Ljava/lang/String;
    const-string v2, "/data/system/wallpaper_info.xml"

    aput-object v2, v0, v3

    .line 67
    .restart local v0       #files:[Ljava/lang/String;
    :cond_0
    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v3, p0, v0}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 69
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 75
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "/data/data/com.android.settings/files/wallpaper"

    aput-object v5, v4, v6

    const-string v5, "/data/system/wallpaper_info.xml"

    aput-object v5, v4, v7

    invoke-direct {v3, p0, v4}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 94
    const-string v2, "system_files"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "/data/data/com.android.settings/files/wallpaper"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 98
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 100
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    .line 102
    .local v1, wallpaper:Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "SystemBackupAgent"

    const-string v3, "restore failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 108
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 13
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "path"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v11, 0x0

    .line 121
    .local v11, restoredWallpaper:Z
    const/4 v9, 0x0

    .line 123
    .local v9, outFile:Ljava/io/File;
    const-string v1, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    new-instance v9, Ljava/io/File;

    .end local v9           #outFile:Ljava/io/File;
    const-string v1, "/data/system/wallpaper_info.xml"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v9       #outFile:Ljava/io/File;
    const/4 v11, 0x1

    .line 134
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 135
    :try_start_0
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unrecognized system file: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    .line 137
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 139
    if-eqz v11, :cond_2

    .line 140
    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    check-cast v12, Lcom/android/server/WallpaperManagerService;

    .line 143
    .local v12, wallpaper:Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v12}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v12           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_2
    :goto_1
    return-void

    .line 127
    :cond_3
    const-string v1, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v9, Ljava/io/File;

    .end local v9           #outFile:Ljava/io/File;
    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v9       #outFile:Ljava/io/File;
    const/4 v11, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v10

    .line 146
    .local v10, e:Ljava/io/IOException;
    if-eqz v11, :cond_2

    .line 148
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 149
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/wallpaper_info.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$1;,
        Landroid/app/backup/BackupAgent$FailRunnable;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupAgent"

.field public static final TYPE_DIRECTORY:I = 0x2

.field public static final TYPE_EOF:I = 0x0

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_SYMLINK:I = 0x3


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Landroid/app/backup/BackupAgent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/backup/BackupAgent;

    .prologue
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method private applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domainToken"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "includeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p4, "filterSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "includeFile":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    goto :goto_0
.end method

.method private isFileEligibleForRestore(Ljava/io/File;)Z
    .locals 12
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v0

    .local v0, "bs":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "BackupXmlParserLogging"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "BackupXmlParserLogging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRestoreFile \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" : fullBackupContent not enabled for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v7, 0x0

    .local v7, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, "excludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "destinationCanonicalPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v4}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "BackupXmlParserLogging"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "BackupXmlParserLogging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRestoreFile: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\": listed in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " excludes; skipping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "BackupXmlParserLogging"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "BackupXmlParserLogging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRestoreFile \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" : Exception trying to parse fullBackupContent xml file!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Aborting onRestoreFile."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v5, 0x0

    .local v5, "explicitlyIncluded":Z
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .local v2, "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v2}, Landroid/app/backup/BackupAgent;->isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z

    move-result v9

    or-int/2addr v5, v9

    if-eqz v5, :cond_3

    .end local v2    # "domainIncludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    if-nez v5, :cond_5

    const-string v9, "BackupXmlParserLogging"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "BackupXmlParserLogging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRestoreFile: Trying to restore \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" but it isn\'t specified"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the included files; skipping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "explicitlyIncluded":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private isFileSpecifiedInPathList(Ljava/io/File;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "canonicalPathList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "canonicalPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "fileFromList":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "fileFromList":Ljava/io/File;
    :goto_0
    return v3

    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v1    # "fileFromList":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "fileFromList":Ljava/io/File;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private waitForSharedPrefs()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v1, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .local v1, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v2, v1, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 19
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    const/4 v12, 0x0

    .local v12, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    .local v16, "mainDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    .local v14, "filesDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    .local v17, "nbFilesDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .local v10, "dbDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    .local v18, "spDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .local v8, "cacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .local v9, "codeCacheDir":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v15, 0x0

    .local v15, "libDir":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .local v13, "efLocation":Ljava/io/File;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .end local v13    # "efLocation":Ljava/io/File;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "BackupAgent"

    const-string v3, "lib, cache, code_cache, and no_backup files are not backed up"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "codeCacheDir":Ljava/lang/String;
    .end local v10    # "dbDir":Ljava/lang/String;
    .end local v14    # "filesDir":Ljava/lang/String;
    .end local v15    # "libDir":Ljava/lang/String;
    .end local v16    # "mainDir":Ljava/lang/String;
    .end local v17    # "nbFilesDir":Ljava/lang/String;
    .end local v18    # "spDir":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "codeCacheDir":Ljava/lang/String;
    .restart local v10    # "dbDir":Ljava/lang/String;
    .restart local v14    # "filesDir":Ljava/lang/String;
    .restart local v16    # "mainDir":Ljava/lang/String;
    .restart local v17    # "nbFilesDir":Ljava/lang/String;
    .restart local v18    # "spDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto :goto_0

    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "codeCacheDir":Ljava/lang/String;
    .end local v10    # "dbDir":Ljava/lang/String;
    .end local v14    # "filesDir":Ljava/lang/String;
    .end local v16    # "mainDir":Ljava/lang/String;
    .end local v17    # "nbFilesDir":Ljava/lang/String;
    .end local v18    # "spDir":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    const-string v1, "BackupAgent"

    const-string v3, "Unable to obtain canonical paths"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v11    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "codeCacheDir":Ljava/lang/String;
    .restart local v10    # "dbDir":Ljava/lang/String;
    .restart local v14    # "filesDir":Ljava/lang/String;
    .restart local v15    # "libDir":Ljava/lang/String;
    .restart local v16    # "mainDir":Ljava/lang/String;
    .restart local v17    # "nbFilesDir":Ljava/lang/String;
    .restart local v18    # "spDir":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .local v4, "rootpath":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "db"

    .local v2, "domain":Ljava/lang/String;
    move-object v4, v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto :goto_1

    .end local v2    # "domain":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "sp"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v18

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "f"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v14

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "r"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v16

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v2, "ef"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v12

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_8
    const-string v1, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is in an unsupported location; skipping"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "startingPath"    # Ljava/lang/String;
    .param p6, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "manifestExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "systemExcludes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "domainPath":Ljava/lang/String;
    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, "rootFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .local v15, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .local v11, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .local v5, "filePath":Ljava/lang/String;
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    invoke-static {v5}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v16

    .local v16, "stat":Landroid/system/StructStat;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/app/backup/BackupAgentInjector;->shouldSkip(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, v16

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .local v8, "contents":[Ljava/io/File;
    if-eqz v8, :cond_5

    move-object v7, v8

    .local v7, "arr$":[Ljava/io/File;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_5

    aget-object v10, v7, v12

    .local v10, "entry":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v8    # "contents":[Ljava/io/File;
    .end local v10    # "entry":Ljava/io/File;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    const-string v1, "BackupXmlParserLogging"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BackupXmlParserLogging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error canonicalizing path of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .local v9, "e":Landroid/system/ErrnoException;
    const-string v1, "BackupXmlParserLogging"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BackupXmlParserLogging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error scanning file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v9    # "e":Landroid/system/ErrnoException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v16    # "stat":Landroid/system/StructStat;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto/16 :goto_0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 20
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v9

    .local v9, "backupScheme":Landroid/app/backup/FullBackup$BackupScheme;
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->isFullBackupContentEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;

    move-result-object v4

    .local v4, "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v9}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    .local v18, "rootDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .local v15, "filesDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    .local v17, "nobackupDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    .local v12, "databaseDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v19

    .local v19, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .local v10, "cacheDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .local v11, "codeCacheDir":Ljava/lang/String;
    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    .local v16, "libDir":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .local v6, "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v3, "r"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-string v3, "f"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-string v3, "db"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-string v3, "sp"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .local v14, "efLocation":Ljava/io/File;
    if-eqz v14, :cond_0

    const-string v3, "ef"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/backup/BackupAgent;->applyXmlFiltersAndDoFullBackupForDomain(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/app/backup/FullBackupDataOutput;)V

    goto/16 :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "traversalExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "databaseDir":Ljava/lang/String;
    .end local v14    # "efLocation":Ljava/io/File;
    .end local v15    # "filesDir":Ljava/lang/String;
    .end local v16    # "libDir":Ljava/lang/String;
    .end local v17    # "nobackupDir":Ljava/lang/String;
    .end local v18    # "rootDir":Ljava/lang/String;
    .end local v19    # "sharedPrefsDir":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "BackupXmlParserLogging"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BackupXmlParserLogging"

    const-string v3, "Exception trying to parse fullBackupContent xml file! Aborting full backup."

    invoke-static {v1, v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "cacheDir":Ljava/lang/String;
    .restart local v11    # "codeCacheDir":Ljava/lang/String;
    .restart local v12    # "databaseDir":Ljava/lang/String;
    .restart local v15    # "filesDir":Ljava/lang/String;
    .restart local v17    # "nobackupDir":Ljava/lang/String;
    .restart local v18    # "rootDir":Ljava/lang/String;
    .restart local v19    # "sharedPrefsDir":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "manifestIncludeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "manifestExcludeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "cacheDir":Ljava/lang/String;
    .end local v11    # "codeCacheDir":Ljava/lang/String;
    .end local v12    # "databaseDir":Ljava/lang/String;
    .end local v15    # "filesDir":Ljava/lang/String;
    .end local v17    # "nobackupDir":Ljava/lang/String;
    .end local v18    # "rootDir":Ljava/lang/String;
    .end local v19    # "sharedPrefsDir":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public abstract onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 19
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v17, 0x0

    .local v17, "basePath":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/app/backup/FullBackup;->getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/app/backup/FullBackup$BackupScheme;->tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "ef"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 p7, -0x1

    :cond_0
    if-eqz v17, :cond_1

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "outFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    .local v18, "outPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v7, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .end local v6    # "outFile":Ljava/io/File;
    .end local v18    # "outPath":Ljava/lang/String;
    :goto_0
    return-void

    :cond_1
    const/16 v16, 0x0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v8 .. v16}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 10
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p4}, Landroid/app/backup/BackupAgent;->isFileEligibleForRestore(Ljava/io/File;)Z

    move-result v9

    .local v9, "accept":Z
    if-eqz v9, :cond_0

    move-object v8, p4

    :goto_0
    move-object v0, p1

    move-wide v1, p2

    move v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onRestoreFinished()V
    .locals 0

    .prologue
    return-void
.end method

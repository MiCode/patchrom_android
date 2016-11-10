.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "daily"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    const-string v3, "weekly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string v3, "monthly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    const-string v3, "yearly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x3

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentFingerprint":Ljava/lang/String;
    iput-boolean v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    iput-boolean v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "buildFingerprint":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v9, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-eq v4, v11, :cond_3

    const-string v7, "UsageStatsDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading from version "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    :cond_3
    if-ne v4, v11, :cond_4

    iget-boolean v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v7, :cond_5

    :cond_4
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_5

    if-eqz v9, :cond_9

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_5
    :goto_1
    return-void

    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "version":I
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .restart local v4    # "version":I
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "version":I
    :catch_2
    move-exception v2

    goto :goto_2

    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_3
    if-eqz v3, :cond_7

    if-eqz v8, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_4
    :try_start_9
    throw v7

    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "version":I
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_6
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to write new version"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_9
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    :catch_7
    move-exception v7

    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v8

    move-object v9, v7

    move-object v7, v8

    :goto_5
    if-eqz v5, :cond_a

    if-eqz v9, :cond_b

    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_a
    :goto_6
    :try_start_e
    throw v7

    :catch_8
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_6

    :catchall_2
    move-exception v7

    goto :goto_5

    .end local v4    # "version":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v7

    move-object v8, v9

    goto :goto_3
.end method

.method private doUpgradeLocked(I)V
    .locals 8
    .param p1, "thisVersion"    # I

    .prologue
    const/4 v6, 0x2

    if-ge p1, v6, :cond_1

    const-string v6, "UsageStatsDatabase"

    const-string v7, "Deleting all usage stats files"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFilesLocked()V
    .locals 12

    .prologue
    new-instance v2, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .local v2, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v9, v9

    if-ge v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v10, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v10}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v10, v9, v6

    :goto_1
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v9, v9, v6

    invoke-virtual {v9, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_1

    move-object v1, v5

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v4, v1, v7

    .local v4, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v0, "af":Landroid/util/AtomicFile;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/app/usage/TimeSparseArray;->clear()V

    goto :goto_1

    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to index file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v5    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 13
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_2

    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v4, Ljava/io/File;

    .end local v4    # "f":Ljava/io/File;
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".bak"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "f":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .local v2, "beginTime":J
    :goto_1
    cmp-long v9, v2, p1

    if-gez v9, :cond_1

    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2    # "beginTime":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-wide/16 v2, 0x0

    .restart local v2    # "beginTime":J
    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "beginTime":J
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .locals 14
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v13, 0x0

    aget-object v4, v9, v13

    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .local v3, "fileCount":I
    const/4 v6, -0x1

    .local v6, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_1

    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v13, "-c"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .local v7, "start":I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v10

    :goto_1
    return v9

    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    move v5, v7

    :goto_2
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_4

    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-static {v9, v8}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    :try_start_2
    monitor-exit v12

    move v9, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    const-string v10, "Failed to check-in"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v12

    move v9, v11

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_4
    move v5, v7

    :goto_3
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_6

    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-c"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "checkedInFile":Ljava/io/File;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "UsageStatsDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to mark file "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " as checked-in"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    move v9, v10

    goto/16 :goto_1

    :cond_5
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v0    # "checkedInFile":Ljava/io/File;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_6
    monitor-exit v12

    move v9, v10

    goto/16 :goto_1

    .end local v3    # "fileCount":I
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "i":I
    .end local v6    # "lastCheckin":I
    .end local v7    # "start":I
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_0
    move-exception v9

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9
.end method

.method public findBestFitBucket(JJ)I
    .locals 13
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .prologue
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v0, -0x1

    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    .local v6, "smallestDiff":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v4

    .local v4, "index":I
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    .local v5, "size":I
    if-ltz v4, :cond_0

    if-ge v4, v5, :cond_0

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .local v2, "diff":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-wide v6, v2

    move v0, v1

    .end local v2    # "diff":J
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_1
    monitor-exit v9

    return v0

    .end local v1    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 8
    .param p1, "intervalType"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-lt p1, v6, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad interval type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .local v2, "fileCount":I
    if-nez v2, :cond_2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v6, "UsageStatsDatabase"

    const-string v7, "Failed to read usage stats file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getLatestUsageStatsBeginTime(I)J
    .locals 5
    .param p1, "intervalType"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    .local v0, "statsFileCount":I
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    monitor-exit v4

    :goto_0
    return-wide v2

    :cond_2
    const-wide/16 v2, -0x1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public init(J)V
    .locals 13
    .param p1, "currentTimeMillis"    # J

    .prologue
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v0, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v7

    .local v7, "startIndex":I
    if-gez v7, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .local v2, "fileCount":I
    move v4, v7

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_2

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "fileCount":I
    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "i":I
    .end local v7    # "startIndex":I
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method isFirstUpdate()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .locals 21
    .param p1, "timeDiffMillis"    # J

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .local v11, "logBuilder":Ljava/lang/StringBuilder;
    const-string v16, "Time changed by "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .local v6, "filesDeleted":I
    const/4 v7, 0x0

    .local v7, "filesMoved":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v2, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v5, v2, v9

    .local v5, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .local v4, "fileCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v18

    add-long v14, v18, p1

    .local v14, "newTime":J
    const-wide/16 v18, 0x0

    cmp-long v16, v14, v18

    if-gez v16, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .local v13, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v18, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_1
    new-instance v12, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, "newFile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_2

    .end local v2    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v6    # "filesDeleted":I
    .end local v7    # "filesMoved":I
    .end local v8    # "i":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "newFile":Ljava/io/File;
    .end local v13    # "newName":Ljava/lang/String;
    .end local v14    # "newTime":J
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .restart local v2    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v6    # "filesDeleted":I
    .restart local v7    # "filesMoved":I
    .restart local v8    # "i":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->clear()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v8    # "i":I
    :cond_3
    const-string v16, " files deleted: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v16, " files moved: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v16, "UsageStatsDatabase"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v8    # "i":I
    .restart local v14    # "newTime":J
    :catch_0
    move-exception v16

    goto/16 :goto_3
.end method

.method public prune(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x7

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad interval type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_2

    new-instance v0, Landroid/util/AtomicFile;

    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 14
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v11

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-lt p1, v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad interval type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v10, p1

    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    if-gtz v10, :cond_2

    const/4 v7, 0x0

    monitor-exit v11

    :goto_0
    return-object v7

    :cond_2
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v8

    .local v8, "startIndex":I
    if-gez v8, :cond_3

    const/4 v8, 0x0

    :cond_3
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v3

    .local v3, "endIndex":I
    if-gez v3, :cond_4

    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v12

    cmp-long v10, v12, p4

    if-nez v10, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_5

    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_0

    :cond_5
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    .local v5, "i":I
    :goto_1
    if-gt v5, v3, :cond_7

    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v4, "f":Landroid/util/AtomicFile;
    :try_start_2
    invoke-static {v4, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v10, p2, v12

    if-gez v10, :cond_6

    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v10, "UsageStatsDatabase"

    const-string v12, "Failed to read usage stats file"

    invoke-static {v10, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "f":Landroid/util/AtomicFile;
    :cond_7
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

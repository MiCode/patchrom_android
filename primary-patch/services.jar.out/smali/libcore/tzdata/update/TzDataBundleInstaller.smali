.class public final Llibcore/tzdata/update/TzDataBundleInstaller;
.super Ljava/lang/Object;
.source "TzDataBundleInstaller.java"


# static fields
.field static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final installDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "installDir"    # Ljava/io/File;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    iput-object p2, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    return-void
.end method

.method private checkBundleFilesExist(Ljava/io/File;)Z
    .locals 3
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string v1, "Verifying bundle contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tzdata_version"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "checksums"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tzdata"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icu/icu_tzdata.dat"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Llibcore/tzdata/update/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unpackBundle([BLjava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "content"    # [B
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpacking update content to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Llibcore/tzdata/update/ConfigBundle;

    invoke-direct {v0, p1}, Llibcore/tzdata/update/ConfigBundle;-><init>([B)V

    .local v0, "bundle":Llibcore/tzdata/update/ConfigBundle;
    invoke-virtual {v0, p2}, Llibcore/tzdata/update/ConfigBundle;->extractTo(Ljava/io/File;)V

    return-object p2
.end method

.method private verifySystemChecksums(Ljava/io/File;)Z
    .locals 14
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string v12, "Verifying system file checksums"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v11, "checksums"

    invoke-direct {v2, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "checksumsFile":Ljava/io/File;
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "line":Ljava/lang/String;
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "delimiterPos":I
    if-lez v3, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v3, v11, :cond_2

    :cond_1
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad checksum entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .local v6, "expectedChecksum":J
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": file not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .end local v3    # "delimiterPos":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    :goto_0
    return v11

    .restart local v3    # "delimiterPos":I
    .restart local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid checksum value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "expectedChecksum":J
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Llibcore/tzdata/update/FileUtils;->calculateChecksum(Ljava/io/File;)J

    move-result-wide v0

    .local v0, "actualChecksum":J
    cmp-long v11, v0, v6

    if-eqz v11, :cond_0

    iget-object v11, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": required="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actual="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0

    .end local v0    # "actualChecksum":J
    .end local v3    # "delimiterPos":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    goto :goto_0
.end method


# virtual methods
.method public install([B)Z
    .locals 7
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string v6, "old"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "oldTzDataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string v6, "current"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "currentTzDataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->installDir:Ljava/io/File;

    const-string v6, "working"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "workingDir":Ljava/io/File;
    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string v6, "Applying time zone update"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Llibcore/tzdata/update/TzDataBundleInstaller;->unpackBundle([BLjava/io/File;)Ljava/io/File;

    move-result-object v2

    .local v2, "unpackedContentDir":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->checkBundleFilesExist(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string v6, "Update not applied: Bundle is missing files"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    :goto_0
    return v4

    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->verifySystemChecksums(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v4, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update applied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successfully created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v5, p0, Llibcore/tzdata/update/TzDataBundleInstaller;->logTag:Ljava/lang/String;

    const-string v6, "Update not applied: System checksum did not match"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-direct {p0, v1}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    invoke-direct {p0, v2}, Llibcore/tzdata/update/TzDataBundleInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v4
.end method

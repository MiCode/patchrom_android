.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Writer;,
        Lcom/android/internal/util/FileRotator$Reader;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDeleteAgeMillis:J

.field private final mPrefix:Ljava/lang/String;

.field private final mRotateAgeMillis:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 13
    .parameter "basePath"
    .parameter "prefix"
    .parameter "rotateAgeMillis"
    .parameter "deleteAgeMillis"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    iput-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v7, v2, v5

    .local v7, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v9, ".backup"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v3, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, backupFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ".backup"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, file:Ljava/io/File;
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .end local v3           #backupFile:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :cond_2
    const-string v9, ".no_backup"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v8, noBackupFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ".no_backup"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v4           #file:Ljava/io/File;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #noBackupFile:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private getActiveName(J)Ljava/lang/String;
    .locals 10
    .parameter "currentTimeMillis"

    .prologue
    const/4 v5, 0x0

    .local v5, oldestActiveName:Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    .local v6, oldestActiveStart:J
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v2, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v8, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_0

    iget-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    move-object v5, v4

    iget-wide v6, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    goto :goto_1

    .end local v4           #name:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .end local v5           #oldestActiveName:Ljava/lang/String;
    :goto_2
    return-object v5

    .restart local v5       #oldestActiveName:Ljava/lang/String;
    :cond_3
    iput-wide p1, v2, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, v2, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v2}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private static readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .locals 3
    .parameter "file"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/IOException;

    .end local p0
    throw p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .locals 6
    .parameter "rewriter"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, backupFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .end local v0           #backupFile:Ljava/io/File;
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".no_backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #backupFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :try_start_1
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .restart local v2       #t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {v2}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 3
    .parameter "file"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .locals 1
    .parameter "reader"
    .parameter "writer"
    .parameter "currentTimeMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    return-void
.end method

.method public deleteAll()V
    .locals 7

    .prologue
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v2, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dumpAll(Ljava/io/OutputStream;)V
    .locals 10
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v8, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v9}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v4, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    .local v7, name:Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v2, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v5, v8}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #is:Ljava/io/FileInputStream;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #info:Lcom/android/internal/util/FileRotator$FileInfo;
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v6           #len$:I
    .end local v7           #name:Ljava/lang/String;
    :catchall_1
    move-exception v9

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #info:Lcom/android/internal/util/FileRotator$FileInfo;
    .restart local v6       #len$:I
    :cond_1
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public maybeRotate(J)V
    .locals 13
    .parameter "currentTimeMillis"

    .prologue
    iget-wide v11, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v9, p1, v11

    .local v9, rotateBefore:J
    iget-wide v11, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v1, p1, v11

    .local v1, deleteBefore:J
    new-instance v6, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v6, v11}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v6, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v8, v0, v5

    .local v8, name:Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v11, v6, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v11, v11, v9

    if-gtz v11, :cond_0

    iput-wide p1, v6, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v4, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, file:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v6}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, destFile:Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .end local v3           #destFile:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :cond_2
    iget-wide v11, v6, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v11, v11, v1

    if-gtz v11, :cond_0

    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v4, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v4           #file:Ljava/io/File;
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .locals 8
    .parameter "reader"
    .parameter "matchStartMillis"
    .parameter "matchEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v3, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v3, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide v6, v3, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v6, v6, p4

    if-gtz v6, :cond_0

    iget-wide v6, v3, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v6, p2, v6

    if-gtz v6, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-static {v1, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    goto :goto_1

    .end local v1           #file:Ljava/io/File;
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .locals 1
    .parameter "rewriter"
    .parameter "currentTimeMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object v0

    .local v0, activeName:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    return-void
.end method

.method public rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .locals 6
    .parameter "rewriter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v2, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .local v2, info:Lcom/android/internal/util/FileRotator$FileInfo;
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    goto :goto_1

    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

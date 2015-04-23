.class public final Llibcore/tzdata/update/ConfigBundle;
.super Ljava/lang/Object;
.source "ConfigBundle.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CHECKSUMS_FILE_NAME:Ljava/lang/String; = "checksums"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field public static final TZ_DATA_VERSION_FILE_NAME:Ljava/lang/String; = "tzdata_version"

.field public static final ZONEINFO_FILE_NAME:Ljava/lang/String; = "tzdata"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    invoke-static {p1, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .local v7, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v8, 0x2000

    :try_start_0
    new-array v0, v8, [B

    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-static {p1, v5}, Llibcore/tzdata/update/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .local v3, "entryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v3, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryFile":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    move-object v10, v8

    move-object v8, v9

    :goto_1
    if-eqz v7, :cond_1

    if-eqz v10, :cond_c

    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_2
    throw v8

    .restart local v0    # "buffer":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    :goto_3
    :try_start_4
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .end local v1    # "count":I
    :catch_1
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v9, :cond_8

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    :goto_5
    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v8

    goto :goto_1

    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_6

    if-eqz v10, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_6
    :goto_6
    if-eqz p2, :cond_0

    :try_start_a
    invoke-static {v3}, Llibcore/tzdata/update/FileUtils;->makeWorldReadable(Ljava/io/File;)V

    goto :goto_0

    :catch_2
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .end local v1    # "count":I
    :catch_3
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    .end local v3    # "entryFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    if-eqz v10, :cond_b

    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    :goto_7
    return-void

    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_7

    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catch_5
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_2

    .restart local v0    # "buffer":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "name":Ljava/lang/String;
    :catchall_3
    move-exception v8

    move-object v9, v10

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Llibcore/tzdata/update/ConfigBundle;

    .local v0, "that":Llibcore/tzdata/update/ConfigBundle;
    iget-object v3, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    iget-object v4, v0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public extractTo(Ljava/io/File;)V
    .locals 2
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Llibcore/tzdata/update/ConfigBundle;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    return-void
.end method

.method public getBundleBytes()[B
    .locals 1

    .prologue
    iget-object v0, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    return-object v0
.end method

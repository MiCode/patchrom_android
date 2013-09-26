.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .local v1, checkSummer:Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .local v2, cis:Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2           #cis:Ljava/util/zip/CheckedInputStream;
    .local v3, cis:Ljava/util/zip/CheckedInputStream;
    const/16 v4, 0x80

    :try_start_1
    new-array v0, v4, [B

    .local v0, buf:[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-wide v4

    .end local v0           #buf:[B
    .end local v3           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v2       #cis:Ljava/util/zip/CheckedInputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    throw v4

    .end local v2           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v0       #buf:[B
    .restart local v3       #cis:Ljava/util/zip/CheckedInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0           #buf:[B
    .end local v3           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v2       #cis:Ljava/util/zip/CheckedInputStream;
    :catch_1
    move-exception v5

    goto :goto_2

    .end local v2           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v3       #cis:Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v2       #cis:Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    :goto_2
    return v4

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_1
    move-exception v6

    goto :goto_1

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
    .locals 1
    .parameter "path"
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    invoke-static {p0, p1}, Landroid/os/FileUtils;->getFileStatusNative(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    return v0
.end method

.method private static native getFileStatusNative(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .local v7, size:J
    if-gtz p1, :cond_0

    cmp-long v10, v7, v11

    if-lez v10, :cond_6

    if-nez p1, :cond_6

    :cond_0
    cmp-long v10, v7, v11

    if-lez v10, :cond_2

    if-eqz p1, :cond_1

    int-to-long v10, p1

    cmp-long v10, v7, v10

    if-gez v10, :cond_2

    :cond_1
    long-to-int p1, v7

    :cond_2
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .local v1, data:[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, length:I
    if-gtz v5, :cond_3

    const-string v10, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local v5           #length:I
    :goto_0
    return-object v10

    .restart local v5       #length:I
    :cond_3
    if-gt v5, p1, :cond_4

    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_5
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .end local v1           #data:[B
    .end local v5           #length:I
    :cond_6
    if-gez p1, :cond_f

    const/4 v6, 0x0

    .local v6, rolled:Z
    const/4 v3, 0x0

    .local v3, last:[B
    const/4 v1, 0x0

    .restart local v1       #data:[B
    :cond_7
    if-eqz v3, :cond_8

    const/4 v6, 0x1

    :cond_8
    move-object v9, v3

    .local v9, tmp:[B
    move-object v3, v1

    move-object v1, v9

    if-nez v1, :cond_9

    neg-int v10, p1

    :try_start_4
    new-array v1, v10, [B

    :cond_9
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    array-length v10, v1

    if-eq v4, v10, :cond_7

    if-nez v3, :cond_a

    if-gtz v4, :cond_a

    const-string v10, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_a
    if-nez v3, :cond_b

    :try_start_5
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_b
    if-lez v4, :cond_c

    const/4 v6, 0x1

    const/4 v10, 0x0

    :try_start_6
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    if-eqz p2, :cond_d

    if-nez v6, :cond_e

    :cond_d
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_e
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .end local v1           #data:[B
    .end local v3           #last:[B
    .end local v4           #len:I
    .end local v6           #rolled:Z
    .end local v9           #tmp:[B
    :cond_f
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .restart local v1       #data:[B
    :cond_10
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .restart local v4       #len:I
    if-lez v4, :cond_11

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_11
    array-length v10, v1

    if-eq v4, v10, :cond_10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .end local v0           #contents:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v4           #len:I
    .end local v7           #size:J
    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v10
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method

.method public static native setUMask(I)I
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .local v0, out:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .parameter "stream"

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

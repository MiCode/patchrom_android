.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$1;,
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .locals 2
    .param p0, "extendedMetadata"    # [B

    .prologue
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$1;)V

    return-object v0
.end method

.method private static quietlyDispose(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static quietlyDispose(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static readBytes(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .local v1, "data":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_0

    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    return-object v1

    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    throw v2

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

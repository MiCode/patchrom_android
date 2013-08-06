.class public Lcom/mediatek/dcfdecoder/DcfDecoder;
.super Ljava/lang/Object;
.source "DcfDecoder.java"

# interfaces
.implements Lcom/mediatek/common/dcfdecoder/IDcfDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "DRM/DcfDecoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "dcfdecoderjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, filepath:Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: find null ContentResolver!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: find null uri!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, uriStr:Ljava/lang/String;
    if-nez v9, :cond_2

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: convert Uri object to String failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto :goto_0

    :cond_2
    const-string v0, "content://media"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v0, "DRM/DcfDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilepathFromUri: no cursor returned for Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v11, v0, :cond_6

    const-string v0, "DRM/DcfDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilepathFromUri: record number in returned cursor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    goto :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_7
    :goto_1
    if-nez v8, :cond_c

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: the uri does not starts with file://, return null Bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto/16 :goto_0

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_8
    :try_start_3
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "getFilepathFromUri: move to first record of cursor failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v10

    goto/16 :goto_0

    :catch_0
    move-exception v7

    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v0, "DRM/DcfDecoder"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .end local v6           #c:Landroid/database/Cursor;
    :cond_b
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    :cond_c
    move-object v0, v8

    goto/16 :goto_0
.end method

.method private native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method private native nativeDecryptFile(Ljava/lang/String;Z)[B
.end method

.method private native nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method private native nativeForceDecryptFile(Ljava/lang/String;Z)[B
.end method


# virtual methods
.method public decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pathName"
    .parameter "opts"
    .parameter "consume"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "decodeFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cr"
    .parameter "uri"
    .parameter "opts"
    .parameter "consume"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, filepath:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "DRM/DcfDecoder"

    const-string v2, "decodeUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decryptFile(Ljava/lang/String;Z)[B
    .locals 2
    .parameter "pathName"
    .parameter "consume"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "decryptFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method public decryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
    .locals 3
    .parameter "cr"
    .parameter "uri"
    .parameter "consume"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, filepath:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "DRM/DcfDecoder"

    const-string v2, "decryptUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method public forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pathName"
    .parameter "opts"
    .parameter "consume"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "forceDecodeFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cr"
    .parameter "uri"
    .parameter "opts"
    .parameter "consume"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, filepath:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "DRM/DcfDecoder"

    const-string v2, "forceDecodeUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 2
    .parameter "pathName"
    .parameter "consume"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "DRM/DcfDecoder"

    const-string v1, "forceDecryptFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method public forceDecryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
    .locals 3
    .parameter "cr"
    .parameter "uri"
    .parameter "consume"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .local v0, filepath:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "DRM/DcfDecoder"

    const-string v2, "forceDecryptUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

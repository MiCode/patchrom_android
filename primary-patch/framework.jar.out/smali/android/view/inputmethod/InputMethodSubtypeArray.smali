.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0
.end method

.method private static compress([B)[B
    .locals 9
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :cond_1
    :goto_1
    return-object v4

    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_2
    if-eqz v1, :cond_2

    if-eqz v6, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_3
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "InputMethodSubtypeArray"

    const-string v6, "Failed to compress the data."

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v6, v5

    goto :goto_2

    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    :catch_4
    move-exception v4

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_4
    if-eqz v3, :cond_5

    if-eqz v6, :cond_6

    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_5
    :goto_5
    :try_start_d
    throw v4

    :catch_5
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_3

    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v4

    move-object v6, v5

    goto :goto_4
.end method

.method private static decompress([BI)[B
    .locals 13
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .prologue
    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x0

    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v6, "unzipper":Ljava/util/zip/GZIPInputStream;
    const/4 v10, 0x0

    :try_start_2
    new-array v4, p1, [B

    .local v4, "result":[B
    const/4 v5, 0x0

    .local v5, "totalReadBytes":I
    :goto_0
    array-length v11, v4

    if-ge v5, v11, :cond_0

    array-length v11, v4

    sub-int v3, v11, v5

    .local v3, "restBytes":I
    invoke-virtual {v6, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v2

    .local v2, "readBytes":I
    if-gez v2, :cond_4

    .end local v2    # "readBytes":I
    .end local v3    # "restBytes":I
    :cond_0
    if-eq p1, v5, :cond_8

    if-eqz v6, :cond_1

    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v8, :cond_7

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v4, v8

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_3
    :goto_3
    return-object v4

    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "readBytes":I
    .restart local v3    # "restBytes":I
    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_4
    add-int/2addr v5, v2

    goto :goto_0

    .end local v2    # "readBytes":I
    .end local v3    # "restBytes":I
    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_4
    if-eqz v1, :cond_5

    if-eqz v10, :cond_e

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to decompress the data."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_6
    :try_start_9
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v9

    move-object v10, v8

    goto :goto_4

    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    if-eqz v8, :cond_a

    :try_start_b
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_9
    :goto_6
    if-eqz v1, :cond_3

    if-eqz v8, :cond_b

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    :catch_4
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :cond_b
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_3

    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    :catch_6
    move-exception v9

    :try_start_10
    throw v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_7
    if-eqz v6, :cond_c

    if-eqz v10, :cond_d

    :try_start_11
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :goto_8
    :try_start_12
    throw v9

    :catch_7
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_5

    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v9

    move-object v10, v8

    goto :goto_7
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v0, 0x0

    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .end local v0    # "decompressedData":[B
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    aget-object v2, v1, p1

    return-object v2

    .restart local v0    # "decompressedData":[B
    :cond_4
    :try_start_1
    const-string v2, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .end local v0    # "decompressedData":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .local v0, "compressedData":[B
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .local v2, "decompressedSize":I
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    .local v1, "decompressedData":[B
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v2, -0x1

    const-string v3, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .end local v1    # "decompressedData":[B
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .restart local v1    # "decompressedData":[B
    :cond_3
    :try_start_1
    array-length v2, v1

    goto :goto_1

    .end local v1    # "decompressedData":[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

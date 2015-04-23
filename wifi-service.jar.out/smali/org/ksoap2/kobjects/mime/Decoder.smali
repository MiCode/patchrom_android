.class public Lorg/ksoap2/kobjects/mime/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field boundary:Ljava/lang/String;

.field buf:[C

.field characterEncoding:Ljava/lang/String;

.field consumed:Z

.field eof:Z

.field header:Ljava/util/Hashtable;

.field is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_bound"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ksoap2/kobjects/mime/Decoder;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_bound"    # Ljava/lang/String;
    .param p3, "characterEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x100

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    iput-object p3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->eof:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    iput-boolean v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    return-void
.end method

.method public static getHeaderElements(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 10
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3b

    const/16 v8, 0x22

    const/4 v7, -0x1

    const-string v1, ""

    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "pos":I
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .local v4, "result":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lt v3, v2, :cond_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "cut":I
    if-ne v0, v7, :cond_3

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End quote expected in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x2

    if-ge v3, v2, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_6

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "; expected in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "cut":I
    :cond_4
    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .restart local v0    # "cut":I
    if-ne v0, v7, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    :cond_6
    const/16 v5, 0x3d

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    goto/16 :goto_0
.end method

.method private final readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "cnt":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "i":I
    if-ne v2, v7, :cond_1

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_1
    if-eq v2, v7, :cond_2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_3
    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    array-length v4, v4

    if-lt v0, v4, :cond_4

    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .local v3, "tmp":[C
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    iget-object v5, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    .end local v3    # "tmp":[C
    :cond_4
    iget-object v4, p0, Lorg/ksoap2/kobjects/mime/Decoder;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cnt":I
    .local v1, "cnt":I
    int-to-char v5, v2

    aput-char v5, v4, v0

    move v0, v1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/ksoap2/kobjects/mime/Decoder;->header:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/kobjects/mime/Decoder;->header:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public readContent()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/ksoap2/kobjects/mime/Decoder;->readContent(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .local v1, "result":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field content: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lorg/ksoap2/kobjects/mime/Decoder;->characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public readContent(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v9, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    if-eqz v9, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Content already consumed!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const-string v5, ""

    .local v5, "line":Ljava/lang/String;
    const-string v9, "Content-Type"

    invoke-virtual {p0, v9}, Lorg/ksoap2/kobjects/mime/Decoder;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "contentType":Ljava/lang/String;
    const-string v9, "base64"

    const-string v10, "Content-Transfer-Encoding"

    invoke-virtual {p0, v10}, Lorg/ksoap2/kobjects/mime/Decoder;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unexpected EOF"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v8, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const-string v8, "--"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lorg/ksoap2/kobjects/mime/Decoder;->eof:Z

    :cond_2
    iput-boolean v7, p0, Lorg/ksoap2/kobjects/mime/Decoder;->consumed:Z

    return-void

    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-static {v5, p1}, Lorg/ksoap2/kobjects/base64/Base64;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/ksoap2/kobjects/mime/Decoder;->boundary:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "deli":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "match":I
    :cond_5
    :goto_2
    iget-object v9, p0, Lorg/ksoap2/kobjects/mime/Decoder;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "i":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_6

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected EOF"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    int-to-char v9, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v6, v9, :cond_5

    invoke-direct {p0}, Lorg/ksoap2/kobjects/mime/Decoder;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    if-lez v6, :cond_9

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v6, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    int-to-char v9, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_a

    move v6, v7

    .end local v4    # "j":I
    :cond_9
    :goto_4
    if-nez v6, :cond_5

    int-to-byte v9, v3

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .restart local v4    # "j":I
    :cond_a
    move v6, v8

    goto :goto_4
.end method

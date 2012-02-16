.class public Lcom/android/internal/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mBuffer:[B

.field private mLineFinished:Z

.field private final mStream:Ljava/io/InputStream;

.field private mTail:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "stream"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    .line 48
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    .line 51
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 52
    return-void
.end method

.method private consumeBuf(I)V
    .locals 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 79
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    .line 82
    :cond_0
    return-void
.end method

.method private fillBuf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    sub-int v0, v2, v3

    .line 59
    .local v0, length:I
    if-nez v0, :cond_0

    .line 60
    new-instance v2, Ljava/io/IOException;

    const-string v3, "attempting to fill already-full buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    iget v4, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 64
    .local v1, read:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 65
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    .line 67
    :cond_1
    return v1
.end method

.method private invalidLong(I)Ljava/lang/NumberFormatException;
    .locals 6
    .parameter "tokenIndex"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nextTokenIndex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "no tokens remaining on current line"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, i:I
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v1, v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v0, v2, v1

    .line 98
    .local v0, b:B
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 103
    :cond_2
    return v1

    .line 102
    :cond_3
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0           #b:B
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v2

    if-gtz v2, :cond_1

    .line 108
    new-instance v2, Ljava/io/IOException;

    const-string v3, "end of stream while looking for token boundary"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/util/ProcFileReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 198
    return-void
.end method

.method public finishLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/util/ProcFileReader;->mLineFinished:Z

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, i:I
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-ge v0, v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 133
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->fillBuf()I

    move-result v1

    if-gtz v1, :cond_1

    .line 139
    new-instance v1, Ljava/io/IOException;

    const-string v2, "end of stream while looking for line boundary"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/util/ProcFileReader;->mTail:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v0

    .line 190
    .local v0, value:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "parsed value larger than integer"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public nextLong()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 156
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v7

    .line 157
    .local v7, tokenIndex:I
    iget-object v9, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v9, v9, v8

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_1

    move v2, v1

    .line 160
    .local v2, negative:Z
    :goto_0
    const-wide/16 v5, 0x0

    .line 161
    .local v5, result:J
    if-eqz v2, :cond_2

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_5

    .line 162
    iget-object v8, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    aget-byte v8, v8, v1

    add-int/lit8 v0, v8, -0x30

    .line 163
    .local v0, digit:I
    if-ltz v0, :cond_0

    const/16 v8, 0x9

    if-le v0, v8, :cond_3

    .line 164
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .end local v0           #digit:I
    .end local v1           #i:I
    .end local v2           #negative:Z
    .end local v5           #result:J
    :cond_1
    move v2, v8

    .line 157
    goto :goto_0

    .restart local v2       #negative:Z
    .restart local v5       #result:J
    :cond_2
    move v1, v8

    .line 161
    goto :goto_1

    .line 169
    .restart local v0       #digit:I
    .restart local v1       #i:I
    :cond_3
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v5

    int-to-long v10, v0

    sub-long v3, v8, v10

    .line 170
    .local v3, next:J
    cmp-long v8, v3, v5

    if-lez v8, :cond_4

    .line 171
    invoke-direct {p0, v7}, Lcom/android/internal/util/ProcFileReader;->invalidLong(I)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 173
    :cond_4
    move-wide v5, v3

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v0           #digit:I
    .end local v3           #next:J
    :cond_5
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 177
    if-eqz v2, :cond_6

    .end local v5           #result:J
    :goto_2
    return-wide v5

    .restart local v5       #result:J
    :cond_6
    neg-long v5, v5

    goto :goto_2
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/util/ProcFileReader;->nextTokenIndex()I

    move-result v1

    .line 147
    .local v1, tokenIndex:I
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/util/ProcFileReader;->mBuffer:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 148
    .local v0, s:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/util/ProcFileReader;->consumeBuf(I)V

    .line 149
    return-object v0
.end method

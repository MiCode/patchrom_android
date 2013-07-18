.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCurrent:[C

.field private mEmptyLine:Z

.field private final mIndent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "indent"

    .prologue
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    return-void
.end method

.method private writeIndent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:[C

    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public write([CII)V
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    add-int v0, p2, p3

    .local v0, bufferEnd:I
    move v4, p2

    .local v4, lineStart:I
    move v2, p2

    .local v2, lineEnd:I
    move v3, v2

    .end local v2           #lineEnd:I
    .local v3, lineEnd:I
    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    .end local v3           #lineEnd:I
    .restart local v2       #lineEnd:I
    aget-char v1, p1, v3

    .local v1, ch:C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->writeIndent()V

    sub-int v5, v2, v4

    invoke-super {p0, p1, v4, v5}, Ljava/io/PrintWriter;->write([CII)V

    move v4, v2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    :cond_0
    move v3, v2

    .end local v2           #lineEnd:I
    .restart local v3       #lineEnd:I
    goto :goto_0

    .end local v1           #ch:C
    :cond_1
    if-eq v4, v3, :cond_2

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->writeIndent()V

    sub-int v5, v3, v4

    invoke-super {p0, p1, v4, v5}, Ljava/io/PrintWriter;->write([CII)V

    :cond_2
    return-void
.end method

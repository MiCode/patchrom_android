.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCurrent:Ljava/lang/String;

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

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:Ljava/lang/String;

    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:Ljava/lang/String;

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

.method public println()V
    .locals 1

    .prologue
    invoke-super {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrent:Ljava/lang/String;

    invoke-super {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    return-void
.end method

.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 4
    .param p1, "shiftedOffset"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getBeginning(IZ)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    .prologue
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getEnd(IZ)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    .prologue
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 3
    .param p1, "shiftedOffset"    # I

    .prologue
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "codePoint":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 2
    .param p1, "shiftedOffset"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "codePoint":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPunctuation(I)Z
    .locals 2
    .param p1, "cp"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .local v0, "type":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPunctuationEndBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPunctuationStartBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public following(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .local v0, "shiftedOffset":I
    :cond_0
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getNextWordEndOnTwoWordBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevWordBeginningOnTwoWordsBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public getPunctuationBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public getPunctuationEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public isAfterPunctuation(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v1, p1, v2

    .local v1, "shiftedOffset":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .local v0, "codePoint":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v2

    .end local v0    # "codePoint":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBoundary(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    return v1
.end method

.method public isOnPunctuation(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v1, p1, v2

    .local v1, "shiftedOffset":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, "codePoint":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    move-result v2

    .end local v0    # "codePoint":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nextBoundary(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .local v0, "shiftedOffset":I
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public preceding(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .local v0, "shiftedOffset":I
    :cond_0
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public prevBoundary(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v1, -0x1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .local v0, "shiftedOffset":I
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, p3, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "windowEnd":I
    instance-of v1, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/text/SpannableStringBuilder;

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void

    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    goto :goto_0
.end method

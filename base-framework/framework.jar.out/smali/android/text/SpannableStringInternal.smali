.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object; = null

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne p3, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    .local v3, initial:I
    new-array v7, v3, [Ljava/lang/Object;

    iput-object v7, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    mul-int/lit8 v7, v3, 0x3

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    instance-of v7, p1, Landroid/text/Spanned;

    if-eqz v7, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/text/Spanned;

    .local v4, sp:Landroid/text/Spanned;
    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .local v5, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_3

    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, st:I
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .local v0, en:I
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .local v1, fl:I
    if-ge v6, p2, :cond_0

    move v6, p2

    :cond_0
    if-le v0, p3, :cond_1

    move v0, p3

    :cond_1
    aget-object v7, v5, v2

    sub-int v8, v6, p2

    sub-int v9, v0, p2

    invoke-virtual {p0, v7, v8, v9, v1}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v2           #i:I
    .end local v3           #initial:I
    .end local v4           #sp:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    .end local v6           #st:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .restart local v3       #initial:I
    :cond_3
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .parameter "operation"
    .parameter "start"
    .parameter "end"

    .prologue
    if-ge p3, p2, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .local v0, len:I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .local v9, recip:[Landroid/text/SpanWatcher;
    array-length v8, v9

    .local v8, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    move-object v1, p0

    check-cast v1, Landroid/text/Spannable;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .local v2, recip:[Landroid/text/SpanWatcher;
    array-length v1, v2

    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    move-object v3, p0

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getChars(II[CI)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 18
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .local v2, count:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v12, spanCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v15, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v4, data:[I
    const/4 v10, 0x0

    .local v10, ret:[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, ret1:Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    move v3, v2

    .end local v2           #count:I
    .end local v11           #ret1:Ljava/lang/Object;
    .local v3, count:I
    :goto_0
    if-ge v5, v12, :cond_a

    if-eqz p3, :cond_0

    aget-object v16, v15, v5

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_0

    :cond_0
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x0

    aget v14, v4, v16

    .local v14, spanStart:I
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v13, v4, v16

    .local v13, spanEnd:I
    move/from16 v0, p2

    if-le v14, v0, :cond_1

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_2

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_2
    if-eq v14, v13, :cond_4

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_4

    move/from16 v0, p2

    if-ne v14, v0, :cond_3

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_3
    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_4
    if-nez v3, :cond_5

    aget-object v11, v15, v5

    .restart local v11       #ret1:Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .end local v2           #count:I
    .end local v11           #ret1:Ljava/lang/Object;
    .restart local v3       #count:I
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    sub-int v16, v12, v5

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v10, v16

    check-cast v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v10, v16

    :cond_6
    mul-int/lit8 v16, v5, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v4, v16

    const/high16 v17, 0xff

    and-int v9, v16, v17

    .local v9, prio:I
    if-eqz v9, :cond_9

    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v3, :cond_7

    aget-object v16, v10, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v16

    const/high16 v17, 0xff

    and-int v8, v16, v17

    .local v8, p:I
    if-le v9, v8, :cond_8

    .end local v8           #p:I
    :cond_7
    add-int/lit8 v16, v6, 0x1

    sub-int v17, v3, v6

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v6, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v16, v15, v5

    aput-object v16, v10, v6

    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    goto/16 :goto_1

    .end local v2           #count:I
    .restart local v3       #count:I
    .restart local v8       #p:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6           #j:I
    .end local v8           #p:I
    :cond_9
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    aget-object v16, v15, v5

    aput-object v16, v10, v3

    goto/16 :goto_1

    .end local v2           #count:I
    .end local v9           #prio:I
    .end local v13           #spanEnd:I
    .end local v14           #spanStart:I
    .restart local v3       #count:I
    :cond_a
    if-nez v3, :cond_b

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    :goto_3
    return-object v16

    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_c

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v10, v16

    check-cast v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v10, v16

    move-object/from16 v16, v10

    check-cast v16, [Ljava/lang/Object;

    goto :goto_3

    :cond_c
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v3, v0, :cond_d

    move-object/from16 v16, v10

    check-cast v16, [Ljava/lang/Object;

    goto :goto_3

    :cond_d
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v7, v16

    check-cast v7, [Ljava/lang/Object;

    .local v7, nret:[Ljava/lang/Object;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v0, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v7, [Ljava/lang/Object;

    .end local v7           #nret:[Ljava/lang/Object;
    move-object/from16 v16, v7

    goto :goto_3
.end method

.method public final length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v4, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v1, data:[I
    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    .local v5, st:I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    .local v2, en:I
    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move p2, v5

    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move p2, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #en:I
    .end local v5           #st:I
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 10
    .parameter "what"

    .prologue
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v1, count:I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .local v6, spans:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v2, data:[I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    aget-object v7, v6, v3

    if-ne v7, p1, :cond_1

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .local v5, ostart:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .local v4, oend:I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .local v0, c:I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .end local v0           #c:I
    .end local v4           #oend:I
    .end local v5           #ostart:I
    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 19
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    move/from16 v7, p2

    .local v7, nstart:I
    move/from16 v8, p3

    .local v8, nend:I
    const-string v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v3, p4, 0x33

    const/16 v4, 0x33

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v9

    .local v9, c:C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PARAGRAPH span must start at paragraph boundary ("

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " follows "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v9           #c:C
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_1

    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v9

    .restart local v9       #c:C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PARAGRAPH span must end at paragraph boundary ("

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " follows "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v9           #c:C
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .local v16, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .local v11, data:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_4

    aget-object v3, v16, v12

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_3

    mul-int/lit8 v3, v12, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v5, v11, v3

    .local v5, ostart:I
    mul-int/lit8 v3, v12, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v6, v11, v3

    .local v6, oend:I
    mul-int/lit8 v3, v12, 0x3

    add-int/lit8 v3, v3, 0x0

    aput p2, v11, v3

    mul-int/lit8 v3, v12, 0x3

    add-int/lit8 v3, v3, 0x1

    aput p3, v11, v3

    mul-int/lit8 v3, v12, 0x3

    add-int/lit8 v3, v3, 0x2

    aput p4, v11, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .end local v5           #ostart:I
    .end local v6           #oend:I
    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v14

    .local v14, newsize:I
    new-array v15, v14, [Ljava/lang/Object;

    .local v15, newtags:[Ljava/lang/Object;
    mul-int/lit8 v3, v14, 0x3

    new-array v13, v3, [I

    .local v13, newdata:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v4, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .end local v13           #newdata:[I
    .end local v14           #newsize:I
    .end local v15           #newtags:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x0

    aput p2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    aput p3, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aput p4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method

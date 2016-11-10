.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mLeftIndents:[I

.field mLocale:Ljava/util/Locale;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    # invokes: Landroid/text/StaticLayout;->nNewBuilder()J
    invoke-static {}, Landroid/text/StaticLayout;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    return-void
.end method

.method static synthetic access$1000(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$900(Landroid/text/StaticLayout$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/StaticLayout$Builder;

    .prologue
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .prologue
    const/4 v2, 0x0

    sget-object v1, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    new-instance v0, Landroid/text/StaticLayout$Builder;

    .end local v0    # "b":Landroid/text/StaticLayout$Builder;
    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    .restart local v0    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 2
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)J

    move-result-wide v4

    # invokes: Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V
    invoke-static {v0, v1, v2, v4, v5}, Landroid/text/StaticLayout;->access$300(JLjava/lang/String;J)V

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    :cond_0
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F

    .prologue
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$500(JII[F)V

    return-void
.end method

.method addReplacementRun(IIF)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "width"    # F

    .prologue
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->access$600(JIIF)V

    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "isRtl"    # Z

    .prologue
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    move v6, p2

    move v7, p3

    move v8, p4

    # invokes: Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F
    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->access$400(JJJIIZ)F

    move-result v0

    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .locals 2

    .prologue
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V

    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFreeBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$800(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nFinishBuilder(J)V
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->access$100(J)V

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 8
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .prologue
    const/4 v6, 0x0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    if-nez p1, :cond_0

    move v2, v6

    .local v2, "leftLen":I
    :goto_0
    if-nez p2, :cond_1

    move v4, v6

    .local v4, "rightLen":I
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v1, v7, [I

    .local v1, "indents":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v7, v1

    if-ge v0, v7, :cond_4

    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    .local v3, "leftMargin":I
    :goto_3
    if-ge v0, v4, :cond_3

    aget v5, p2, v0

    .local v5, "rightMargin":I
    :goto_4
    add-int v7, v3, v5

    aput v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "indents":[I
    .end local v2    # "leftLen":I
    .end local v3    # "leftMargin":I
    .end local v4    # "rightLen":I
    .end local v5    # "rightMargin":I
    :cond_0
    array-length v2, p1

    goto :goto_0

    .restart local v2    # "leftLen":I
    :cond_1
    array-length v4, p2

    goto :goto_1

    .restart local v0    # "i":I
    .restart local v1    # "indents":[I
    .restart local v4    # "rightLen":I
    :cond_2
    move v3, v6

    goto :goto_3

    .restart local v3    # "leftMargin":I
    :cond_3
    move v5, v6

    goto :goto_4

    .end local v3    # "leftMargin":I
    :cond_4
    iget-wide v6, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    # invokes: Landroid/text/StaticLayout;->nSetIndents(J[I)V
    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->access$200(J[I)V

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    :cond_0
    return-object p0
.end method

.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p13, "ellipsizedWidth"    # I

    .prologue
    if-nez p12, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    if-eqz p12, :cond_4

    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    if-eqz p12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p13

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p12

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p12, :cond_5

    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .local v18, "start":[I
    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    aput v3, v18, v2

    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .local v11, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v18, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    const/4 v2, 0x2

    aput v11, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    check-cast v16, Landroid/text/Spannable;

    .local v16, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_2

    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/text/DynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .local v0, "line":I
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v2, v3

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_0

    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    const/16 v1, 0x190

    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    if-gez v1, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 35
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    .local v29, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .local v20, "len":I
    const/16 v32, 0xa

    add-int/lit8 v33, p2, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    .local v14, "find":I
    if-gez v14, :cond_4

    const/4 v14, 0x0

    :goto_1
    sub-int v10, p2, v14

    .local v10, "diff":I
    add-int p3, p3, v10

    add-int p4, p4, v10

    sub-int p2, p2, v10

    const/16 v32, 0xa

    add-int v33, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v21

    .local v21, "look":I
    if-gez v21, :cond_5

    move/from16 v21, v20

    :goto_2
    add-int v32, p2, p4

    sub-int v8, v21, v32

    .local v8, "change":I
    add-int p3, p3, v8

    add-int p4, p4, v8

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v25, v29

    check-cast v25, Landroid/text/Spanned;

    .local v25, "sp":Landroid/text/Spanned;
    :cond_1
    const/4 v5, 0x0

    .local v5, "again":Z
    add-int v32, p2, p4

    const-class v33, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    .local v15, "force":[Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .local v26, "st":I
    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .local v11, "en":I
    move/from16 v0, v26

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    const/4 v5, 0x1

    sub-int v10, p2, v26

    add-int p3, p3, v10

    add-int p4, p4, v10

    sub-int p2, p2, v10

    :cond_2
    add-int v32, p2, p4

    move/from16 v0, v32

    if-le v11, v0, :cond_3

    const/4 v5, 0x1

    add-int v32, p2, p4

    sub-int v10, v11, v32

    add-int p3, p3, v10

    add-int p4, p4, v10

    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v5    # "again":Z
    .end local v8    # "change":I
    .end local v10    # "diff":I
    .end local v11    # "en":I
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v21    # "look":I
    .end local v25    # "sp":Landroid/text/Spanned;
    .end local v26    # "st":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .restart local v10    # "diff":I
    .restart local v21    # "look":I
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .restart local v5    # "again":Z
    .restart local v8    # "change":I
    .restart local v15    # "force":[Ljava/lang/Object;
    .restart local v17    # "i":I
    .restart local v25    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v5, :cond_1

    .end local v5    # "again":Z
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v25    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v27

    .local v27, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v28

    .local v28, "startv":I
    add-int v32, p2, p3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v12

    .local v12, "endline":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v12

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v13

    .local v13, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v32

    move/from16 v0, v32

    if-ne v12, v0, :cond_10

    const/16 v19, 0x1

    .local v19, "islast":Z
    :goto_4
    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v33

    :try_start_0
    sget-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .local v24, "reflowed":Landroid/text/StaticLayout;
    sget-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .local v6, "b":Landroid/text/StaticLayout$Builder;
    const/16 v32, 0x0

    sput-object v32, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    const/16 v32, 0x0

    sput-object v32, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v24, :cond_9

    new-instance v24, Landroid/text/StaticLayout;

    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    add-int v32, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v34

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    :cond_9
    add-int v32, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v22

    .local v22, "n":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    add-int v33, p2, p4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    add-int/lit8 v22, v22, -0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v16

    .local v16, "ht":I
    const/16 v31, 0x0

    .local v31, "toppad":I
    const/4 v7, 0x0

    .local v7, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    if-nez v27, :cond_b

    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    sub-int v16, v16, v31

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    if-eqz v19, :cond_c

    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    add-int v16, v16, v7

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sub-int v34, p4, p3

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v34, v28, v13

    add-int v34, v34, v16

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_11

    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, "ints":[I
    const/16 v32, 0x4

    const/high16 v33, -0x80000000

    aput v33, v18, v32

    :goto_5
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .local v23, "objects":[Landroid/text/Layout$Directions;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v34

    shl-int/lit8 v34, v34, 0x1e

    or-int v34, v34, v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v32

    if-eqz v32, :cond_12

    const/high16 v32, 0x20000000

    :goto_7
    or-int v32, v32, v34

    aput v32, v18, v33

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v32

    add-int v30, v32, v28

    .local v30, "top":I
    if-lez v17, :cond_d

    sub-int v30, v30, v31

    :cond_d
    const/16 v32, 0x1

    aput v30, v18, v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v9

    .local v9, "desc":I
    add-int/lit8 v32, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    add-int/2addr v9, v7

    :cond_e
    const/16 v32, 0x2

    aput v9, v18, v32

    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v33

    aput-object v33, v23, v32

    const/16 v32, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v33

    aput v33, v18, v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    const/16 v32, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v33

    aput v33, v18, v32

    const/16 v32, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v33

    aput v33, v18, v32

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .end local v6    # "b":Landroid/text/StaticLayout$Builder;
    .end local v7    # "botpad":I
    .end local v9    # "desc":I
    .end local v16    # "ht":I
    .end local v17    # "i":I
    .end local v18    # "ints":[I
    .end local v19    # "islast":Z
    .end local v22    # "n":I
    .end local v23    # "objects":[Landroid/text/Layout$Directions;
    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    .end local v30    # "top":I
    .end local v31    # "toppad":I
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_4

    .restart local v19    # "islast":Z
    :catchall_0
    move-exception v32

    :try_start_1
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v32

    .restart local v6    # "b":Landroid/text/StaticLayout$Builder;
    .restart local v7    # "botpad":I
    .restart local v16    # "ht":I
    .restart local v22    # "n":I
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    .restart local v31    # "toppad":I
    :cond_11
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "ints":[I
    goto/16 :goto_5

    .restart local v17    # "i":I
    .restart local v23    # "objects":[Landroid/text/Layout$Directions;
    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v32, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v33

    :try_start_2
    sput-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    monitor-exit v33

    goto/16 :goto_0

    :catchall_1
    move-exception v32

    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v32
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return-void
.end method

.method updateBlocks(III)V
    .locals 24
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, -0x1

    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    move v11, v12

    :cond_2
    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    move v13, v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v14, v19, v13

    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_9

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    .local v9, "createBlockBefore":Z
    :goto_4
    if-lez p3, :cond_b

    const/4 v7, 0x1

    .local v7, "createBlock":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .local v8, "createBlockAfter":Z
    :goto_6
    const/16 v17, 0x0

    .local v17, "numAddedBlocks":I
    if-eqz v9, :cond_4

    add-int/lit8 v17, v17, 0x1

    :cond_4
    if-eqz v7, :cond_5

    add-int/lit8 v17, v17, 0x1

    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v17, v17, 0x1

    :cond_6
    sub-int v19, v13, v11

    add-int/lit8 v18, v19, 0x1

    .local v18, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    add-int v19, v19, v17

    sub-int v16, v19, v18

    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_0

    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v17    # "numAddedBlocks":I
    .end local v18    # "numRemovedBlocks":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .restart local v14    # "lastBlockEndLine":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    aget v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .restart local v9    # "createBlockBefore":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .restart local v7    # "createBlock":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v17    # "numAddedBlocks":I
    .restart local v18    # "numRemovedBlocks":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .local v4, "blockEndLines":[I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [I

    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int v19, p2, p1

    add-int/lit8 v19, v19, 0x1

    sub-int v10, p3, v19

    .local v10, "deltaLines":I
    if-eqz v10, :cond_f

    add-int v15, v11, v17

    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v20, v19, v12

    add-int v20, v20, v10

    aput v20, v19, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_7

    .restart local v10    # "deltaLines":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .restart local v15    # "newFirstChangedBlock":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move v5, v11

    .local v5, "blockIndex":I
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    aput v20, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    add-int/lit8 v5, v5, 0x1

    :cond_11
    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, p1, p3

    add-int/lit8 v20, v20, -0x1

    aput v20, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    add-int/lit8 v5, v5, 0x1

    :cond_12
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, v14, v10

    aput v20, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    goto/16 :goto_0
.end method

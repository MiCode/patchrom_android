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
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mInts:Landroid/text/PackedIntVector;

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
    .locals 2

    .prologue
    .line 491
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 493
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 47
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

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 61
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

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 78
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 97
    if-nez p10, :cond_2

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

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 105
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 107
    if-eqz p10, :cond_4

    .line 108
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 109
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 110
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 117
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 119
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 129
    if-eqz p10, :cond_0

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 132
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 133
    move/from16 v0, p11

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 134
    move-object/from16 v0, p10

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 144
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p10, :cond_5

    .line 145
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 146
    .local v18, start:[I
    const/4 v2, 0x3

    const/high16 v3, -0x8000

    aput v3, v18, v2

    .line 151
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 153
    .local v12, dirs:[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 154
    .local v14, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 155
    .local v10, asc:I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 157
    .local v11, desc:I
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v18, v2

    .line 158
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 159
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 162
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 169
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 171
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 173
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 176
    check-cast v16, Landroid/text/Spannable;

    .line 177
    .local v16, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 178
    .local v17, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 179
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 97
    .end local v10           #asc:I
    .end local v11           #desc:I
    .end local v12           #dirs:[Landroid/text/Layout$Directions;
    .end local v14           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18           #start:[I
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

    .line 112
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 113
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 148
    :cond_5
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18       #start:[I
    goto/16 :goto_2

    .line 181
    .restart local v10       #asc:I
    .restart local v11       #desc:I
    .restart local v12       #dirs:[Landroid/text/Layout$Directions;
    .restart local v14       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15       #i:I
    .restart local v16       #sp:Landroid/text/Spannable;
    .restart local v17       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 185
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 39
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 364
    :goto_0
    return-void

    .line 191
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 192
    .local v3, text:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v29

    .line 196
    .local v29, len:I
    const/16 v4, 0xa

    add-int/lit8 v5, p2, -0x1

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v23

    .line 197
    .local v23, find:I
    if-gez v23, :cond_4

    .line 198
    const/16 v23, 0x0

    .line 203
    :goto_1
    sub-int v19, p2, v23

    .line 204
    .local v19, diff:I
    add-int p3, p3, v19

    .line 205
    add-int p4, p4, v19

    .line 206
    sub-int p2, p2, v19

    .line 211
    const/16 v4, 0xa

    add-int v5, p2, p4

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v30

    .line 212
    .local v30, look:I
    if-gez v30, :cond_5

    .line 213
    move/from16 v30, v29

    .line 217
    :goto_2
    add-int v4, p2, p4

    sub-int v17, v30, v4

    .line 218
    .local v17, change:I
    add-int p3, p3, v17

    .line 219
    add-int p4, p4, v17

    .line 223
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    move-object/from16 v33, v3

    .line 224
    check-cast v33, Landroid/text/Spanned;

    .line 228
    .local v33, sp:Landroid/text/Spanned;
    :cond_1
    const/4 v15, 0x0

    .line 230
    .local v15, again:Z
    add-int v4, p2, p4

    const-class v5, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v33

    move/from16 v1, p2

    invoke-interface {v0, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    .line 233
    .local v24, force:[Ljava/lang/Object;
    const/16 v26, 0x0

    .local v26, i:I
    :goto_3
    move-object/from16 v0, v24

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    .line 234
    aget-object v4, v24, v26

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v34

    .line 235
    .local v34, st:I
    aget-object v4, v24, v26

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    .line 237
    .local v20, en:I
    move/from16 v0, v34

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 238
    const/4 v15, 0x1

    .line 240
    sub-int v19, p2, v34

    .line 241
    add-int p3, p3, v19

    .line 242
    add-int p4, p4, v19

    .line 243
    sub-int p2, p2, v19

    .line 246
    :cond_2
    add-int v4, p2, p4

    move/from16 v0, v20

    if-le v0, v4, :cond_3

    .line 247
    const/4 v15, 0x1

    .line 249
    add-int v4, p2, p4

    sub-int v19, v20, v4

    .line 250
    add-int p3, p3, v19

    .line 251
    add-int p4, p4, v19

    .line 233
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 200
    .end local v15           #again:Z
    .end local v17           #change:I
    .end local v19           #diff:I
    .end local v20           #en:I
    .end local v24           #force:[Ljava/lang/Object;
    .end local v26           #i:I
    .end local v30           #look:I
    .end local v33           #sp:Landroid/text/Spanned;
    .end local v34           #st:I
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 215
    .restart local v19       #diff:I
    .restart local v30       #look:I
    :cond_5
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 254
    .restart local v15       #again:Z
    .restart local v17       #change:I
    .restart local v24       #force:[Ljava/lang/Object;
    .restart local v26       #i:I
    .restart local v33       #sp:Landroid/text/Spanned;
    :cond_6
    if-nez v15, :cond_1

    .line 259
    .end local v15           #again:Z
    .end local v24           #force:[Ljava/lang/Object;
    .end local v26           #i:I
    .end local v33           #sp:Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v35

    .line 260
    .local v35, startline:I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v36

    .line 262
    .local v36, startv:I
    add-int v4, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v21

    .line 263
    .local v21, endline:I
    add-int v4, p2, p4

    move/from16 v0, v29

    if-ne v4, v0, :cond_8

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v21

    .line 265
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v22

    .line 266
    .local v22, endv:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v4

    move/from16 v0, v21

    if-ne v0, v4, :cond_f

    const/16 v28, 0x1

    .line 272
    .local v28, islast:Z
    :goto_4
    sget-object v5, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 273
    :try_start_0
    sget-object v2, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 274
    .local v2, reflowed:Landroid/text/StaticLayout;
    const/4 v4, 0x0

    sput-object v4, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 275
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-nez v2, :cond_10

    .line 278
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2           #reflowed:Landroid/text/StaticLayout;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    .restart local v2       #reflowed:Landroid/text/StaticLayout;
    :goto_5
    add-int v5, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v14}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 287
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v31

    .line 293
    .local v31, n:I
    add-int v4, p2, p4

    move/from16 v0, v29

    if-eq v4, v0, :cond_9

    add-int/lit8 v4, v31, -0x1

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    add-int v5, p2, p4

    if-ne v4, v5, :cond_9

    .line 295
    add-int/lit8 v31, v31, -0x1

    .line 299
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v5, v21, v35

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v5, v21, v35

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 304
    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v25

    .line 305
    .local v25, ht:I
    const/16 v38, 0x0

    .local v38, toppad:I
    const/16 v16, 0x0

    .line 307
    .local v16, botpad:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_a

    if-nez v35, :cond_a

    .line 308
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v38

    .line 309
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 310
    sub-int v25, v25, v38

    .line 312
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v4, :cond_b

    if-eqz v28, :cond_b

    .line 313
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v16

    .line 314
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 315
    add-int v25, v25, v16

    .line 318
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x0

    sub-int v6, p4, p3

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v5, 0x1

    sub-int v6, v36, v22

    add-int v6, v6, v25

    move/from16 v0, v35

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 325
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v4, :cond_11

    .line 326
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 327
    .local v27, ints:[I
    const/4 v4, 0x3

    const/high16 v5, -0x8000

    aput v5, v27, v4

    .line 332
    :goto_6
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/Layout$Directions;

    move-object/from16 v32, v0

    .line 334
    .local v32, objects:[Landroid/text/Layout$Directions;
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 335
    const/4 v5, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1e

    or-int/2addr v6, v4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/high16 v4, 0x2000

    :goto_8
    or-int/2addr v4, v6

    aput v4, v27, v5

    .line 339
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    add-int v37, v4, v36

    .line 340
    .local v37, top:I
    if-lez v26, :cond_c

    .line 341
    sub-int v37, v37, v38

    .line 342
    :cond_c
    const/4 v4, 0x1

    aput v37, v27, v4

    .line 344
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v18

    .line 345
    .local v18, desc:I
    add-int/lit8 v4, v31, -0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    .line 346
    add-int v18, v18, v16

    .line 348
    :cond_d
    const/4 v4, 0x2

    aput v18, v27, v4

    .line 349
    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v5

    aput-object v5, v32, v4

    .line 351
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v4, :cond_e

    .line 352
    const/4 v4, 0x3

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v5

    aput v5, v27, v4

    .line 353
    const/4 v4, 0x4

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v5

    aput v5, v27, v4

    .line 356
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v5, v35, v26

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v5, v35, v26

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 266
    .end local v2           #reflowed:Landroid/text/StaticLayout;
    .end local v16           #botpad:I
    .end local v18           #desc:I
    .end local v25           #ht:I
    .end local v26           #i:I
    .end local v27           #ints:[I
    .end local v28           #islast:Z
    .end local v31           #n:I
    .end local v32           #objects:[Landroid/text/Layout$Directions;
    .end local v37           #top:I
    .end local v38           #toppad:I
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 275
    .restart local v28       #islast:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 280
    .restart local v2       #reflowed:Landroid/text/StaticLayout;
    :cond_10
    invoke-virtual {v2}, Landroid/text/StaticLayout;->prepare()V

    goto/16 :goto_5

    .line 329
    .restart local v16       #botpad:I
    .restart local v25       #ht:I
    .restart local v31       #n:I
    .restart local v38       #toppad:I
    :cond_11
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .restart local v27       #ints:[I
    goto/16 :goto_6

    .line 335
    .restart local v26       #i:I
    .restart local v32       #objects:[Landroid/text/Layout$Directions;
    :cond_12
    const/4 v4, 0x0

    goto :goto_8

    .line 360
    :cond_13
    sget-object v5, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 361
    :try_start_2
    sput-object v2, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 362
    invoke-virtual {v2}, Landroid/text/StaticLayout;->finish()V

    .line 363
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 471
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 462
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 378
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .parameter "line"

    .prologue
    .line 398
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 383
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
    .parameter "line"

    .prologue
    .line 373
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 393
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
    .line 403
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.class public Landroid/util/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field private mParams:[F

.field private mType:C


# direct methods
.method private constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    iput-object p2, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method synthetic constructor <init>(C[FLandroid/util/PathParser$1;)V
    .locals 0
    .param p1, "x0"    # C
    .param p2, "x1"    # [F
    .param p3, "x2"    # Landroid/util/PathParser$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/util/PathParser$PathDataNode;-><init>(C[F)V

    return-void
.end method

.method private constructor <init>(Landroid/util/PathParser$PathDataNode;)V
    .locals 2
    .param p1, "n"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Landroid/util/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    iget-object v0, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/PathParser$PathDataNode;
    .param p2, "x1"    # Landroid/util/PathParser$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/PathParser$PathDataNode;)C
    .locals 1
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    iget-char v0, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    return v0
.end method

.method static synthetic access$102(Landroid/util/PathParser$PathDataNode;C)C
    .locals 0
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;
    .param p1, "x1"    # C

    .prologue
    iput-char p1, p0, Landroid/util/PathParser$PathDataNode;->mType:C

    return p1
.end method

.method static synthetic access$200(Landroid/util/PathParser$PathDataNode;)[F
    .locals 1
    .param p0, "x0"    # Landroid/util/PathParser$PathDataNode;

    .prologue
    iget-object v0, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    return-object v0
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 24
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .prologue
    const/16 v22, 0x2

    .local v22, "incr":I
    const/4 v3, 0x0

    aget v20, p1, v3

    .local v20, "currentX":F
    const/4 v3, 0x1

    aget v21, p1, v3

    .local v21, "currentY":F
    const/4 v3, 0x2

    aget v16, p1, v3

    .local v16, "ctrlPointX":F
    const/4 v3, 0x3

    aget v17, p1, v3

    .local v17, "ctrlPointY":F
    const/4 v3, 0x4

    aget v18, p1, v3

    .local v18, "currentSegmentStartX":F
    const/4 v3, 0x5

    aget v19, p1, v3

    .local v19, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_0

    :goto_0
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_1
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_c

    sparse-switch p3, :sswitch_data_1

    :goto_2
    move/from16 p2, p3

    add-int v23, v23, v22

    goto :goto_1

    .end local v23    # "k":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :sswitch_1
    const/16 v22, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v22, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v22, 0x6

    goto :goto_0

    :sswitch_4
    const/16 v22, 0x4

    goto :goto_0

    :sswitch_5
    const/16 v22, 0x7

    goto :goto_0

    .restart local v23    # "k":I
    :sswitch_6
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    move/from16 v18, v20

    move/from16 v19, v21

    goto :goto_2

    :sswitch_7
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    move/from16 v18, v20

    move/from16 v19, v21

    goto :goto_2

    :sswitch_8
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    goto :goto_2

    :sswitch_9
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    goto/16 :goto_2

    :sswitch_a
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    goto/16 :goto_2

    :sswitch_b
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    goto/16 :goto_2

    :sswitch_c
    const/4 v3, 0x0

    add-int/lit8 v6, v23, 0x0

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v21, v21, v3

    goto/16 :goto_2

    :sswitch_d
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v23, 0x0

    aget v21, p4, v3

    goto/16 :goto_2

    :sswitch_e
    add-int/lit8 v3, v23, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v16, v20, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v17, v21, v3

    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v21, v21, v3

    goto/16 :goto_2

    :sswitch_f
    add-int/lit8 v3, v23, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v23, 0x4

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x5

    aget v21, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v16, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v17, p4, v3

    goto/16 :goto_2

    :sswitch_10
    const/4 v4, 0x0

    .local v4, "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .local v5, "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    :cond_0
    sub-float v4, v20, v16

    sub-float v5, v21, v17

    :cond_1
    add-int/lit8 v3, v23, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v16, v20, v3

    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v17, v21, v3

    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v21, v21, v3

    goto/16 :goto_2

    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_11
    move/from16 v4, v20

    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    sub-float v4, v3, v16

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    sub-float v5, v3, v17

    :cond_3
    add-int/lit8 v3, v23, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v23, 0x0

    aget v16, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v17, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v21, p4, v3

    goto/16 :goto_2

    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_12
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    add-int/lit8 v7, v23, 0x2

    aget v7, p4, v7

    add-int/lit8 v8, v23, 0x3

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v16, v20, v3

    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v17, v21, v3

    add-int/lit8 v3, v23, 0x2

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    add-float v21, v21, v3

    goto/16 :goto_2

    :sswitch_13
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    add-int/lit8 v7, v23, 0x2

    aget v7, p4, v7

    add-int/lit8 v8, v23, 0x3

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v3, v23, 0x0

    aget v16, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v17, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v21, p4, v3

    goto/16 :goto_2

    :sswitch_14
    const/4 v4, 0x0

    .restart local v4    # "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    :cond_4
    sub-float v4, v20, v16

    sub-float v5, v21, v17

    :cond_5
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float v16, v20, v4

    add-float v17, v21, v5

    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x1

    aget v3, p4, v3

    add-float v21, v21, v3

    goto/16 :goto_2

    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_15
    move/from16 v4, v20

    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v21

    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x74

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    sub-float v4, v3, v16

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    sub-float v5, v3, v17

    :cond_7
    add-int/lit8 v3, v23, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v23, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v23, 0x0

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v21, p4, v3

    goto/16 :goto_2

    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_16
    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v9, v3, v20

    add-int/lit8 v3, v23, 0x6

    aget v3, p4, v3

    add-float v10, v3, v21

    add-int/lit8 v3, v23, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_8

    const/4 v14, 0x1

    :goto_3
    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v6, p0

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-static/range {v6 .. v15}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v3, v23, 0x5

    aget v3, p4, v3

    add-float v20, v20, v3

    add-int/lit8 v3, v23, 0x6

    aget v3, p4, v3

    add-float v21, v21, v3

    move/from16 v16, v20

    move/from16 v17, v21

    goto/16 :goto_2

    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    goto :goto_4

    :sswitch_17
    add-int/lit8 v3, v23, 0x5

    aget v9, p4, v3

    add-int/lit8 v3, v23, 0x6

    aget v10, p4, v3

    add-int/lit8 v3, v23, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v23, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v23, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v23, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_a

    const/4 v14, 0x1

    :goto_5
    add-int/lit8 v3, v23, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_b

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v6, p0

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-static/range {v6 .. v15}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v3, v23, 0x5

    aget v20, p4, v3

    add-int/lit8 v3, v23, 0x6

    aget v21, p4, v3

    move/from16 v16, v20

    move/from16 v17, v21

    goto/16 :goto_2

    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    aput v20, p1, v3

    const/4 v3, 0x1

    aput v21, p1, v3

    const/4 v3, 0x2

    aput v16, p1, v3

    const/4 v3, 0x3

    aput v17, p1, v3

    const/4 v3, 0x4

    aput v18, p1, v3

    const/4 v3, 0x5

    aput v19, p1, v3

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v36

    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    add-double v34, v32, v12

    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v52

    mul-double v6, v6, v52

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .local v44, "q2y":D
    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-wide/from16 v32, v34

    move-wide/from16 p9, v20

    move-wide/from16 p11, v22

    move-wide/from16 v24, v28

    move-wide/from16 v26, v30

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 58
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .local v24, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .local v42, "sinTheta":D
    move/from16 v0, p1

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v46, v2, v8

    .local v46, "x0p":D
    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v52, v2, v8

    .local v52, "y0p":D
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v48, v2, v8

    .local v48, "x1p":D
    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v54, v2, v8

    .local v54, "y1p":D
    sub-double v30, v46, v48

    .local v30, "dx":D
    sub-double v32, v52, v54

    .local v32, "dy":D
    add-double v2, v46, v48

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v50, v2, v8

    .local v50, "xm":D
    add-double v2, v52, v54

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v56, v2, v8

    .local v56, "ym":D
    mul-double v2, v30, v30

    mul-double v8, v32, v32

    add-double v28, v2, v8

    .local v28, "dsq":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    const-string v3, " Points are coincident"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v28

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    sub-double v26, v2, v8

    .local v26, "disc":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v26, v2

    if-gez v2, :cond_1

    sget-object v2, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Points are too far apart "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v8

    double-to-float v0, v2

    move/from16 v22, v0

    .local v22, "adjust":F
    mul-float v7, p5, v22

    mul-float v8, p6, v22

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Landroid/util/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    goto :goto_0

    .end local v22    # "adjust":F
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .local v36, "s":D
    mul-double v38, v36, v30

    .local v38, "sdx":D
    mul-double v40, v36, v32

    .local v40, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    sub-double v4, v50, v40

    .local v4, "cx":D
    add-double v6, v56, v38

    .local v6, "cy":D
    :goto_1
    sub-double v2, v52, v6

    sub-double v8, v46, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .local v18, "eta0":D
    sub-double v2, v54, v6

    sub-double v8, v48, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .local v34, "eta1":D
    sub-double v20, v34, v18

    .local v20, "sweep":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, p9

    if-eq v0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v2

    :cond_2
    :goto_3
    move/from16 v0, p5

    float-to-double v2, v0

    mul-double/2addr v4, v2

    move/from16 v0, p6

    float-to-double v2, v0

    mul-double/2addr v6, v2

    move-wide/from16 v44, v4

    .local v44, "tcx":D
    mul-double v2, v4, v24

    mul-double v8, v6, v42

    sub-double v4, v2, v8

    mul-double v2, v44, v42

    mul-double v8, v6, v24

    add-double v6, v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/util/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_0

    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v34    # "eta1":D
    .end local v44    # "tcx":D
    :cond_3
    add-double v4, v50, v40

    .restart local v4    # "cx":D
    sub-double v6, v56, v38

    .restart local v6    # "cy":D
    goto :goto_1

    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v34    # "eta1":D
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v2

    goto :goto_3
.end method

.method public static nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5
    .param p0, "node"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v3, 0x6

    new-array v0, v3, [F

    .local v0, "current":[F
    const/16 v2, 0x6d

    .local v2, "previousCommand":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v3, p0, v1

    iget-char v3, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v1

    iget-object v4, v4, Landroid/util/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v2, v3, v4}, Landroid/util/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    aget-object v3, p0, v1

    iget-char v2, v3, Landroid/util/PathParser$PathDataNode;->mType:C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$PathDataNode;F)V
    .locals 4
    .param p1, "nodeFrom"    # Landroid/util/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroid/util/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/util/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/util/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroid/util/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

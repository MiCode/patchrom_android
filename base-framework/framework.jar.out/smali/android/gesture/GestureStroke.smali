.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 5
    .parameter "bbx"
    .parameter "len"
    .parameter "pts"
    .parameter "times"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    mul-int/lit8 v9, v2, 0x2

    new-array v8, v9, [F

    .local v8, tmpPoints:[F
    new-array v7, v2, [J

    .local v7, times:[J
    const/4 v1, 0x0

    .local v1, bx:Landroid/graphics/RectF;
    const/4 v5, 0x0

    .local v5, len:F
    const/4 v4, 0x0

    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GesturePoint;

    .local v6, p:Landroid/gesture/GesturePoint;
    mul-int/lit8 v9, v3, 0x2

    iget v10, v6, Landroid/gesture/GesturePoint;->x:F

    aput v10, v8, v9

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    iget v10, v6, Landroid/gesture/GesturePoint;->y:F

    aput v10, v8, v9

    iget-wide v9, v6, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v9, v7, v4

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    .end local v1           #bx:Landroid/graphics/RectF;
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .restart local v1       #bx:Landroid/graphics/RectF;
    iget v9, v6, Landroid/gesture/GesturePoint;->y:F

    iput v9, v1, Landroid/graphics/RectF;->top:F

    iget v9, v6, Landroid/gesture/GesturePoint;->x:F

    iput v9, v1, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/gesture/GesturePoint;->x:F

    iput v9, v1, Landroid/graphics/RectF;->right:F

    iget v9, v6, Landroid/gesture/GesturePoint;->y:F

    iput v9, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    float-to-double v9, v5

    iget v11, v6, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v12, v3, -0x1

    mul-int/lit8 v12, v12, 0x2

    aget v12, v8, v12

    sub-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v13, v6, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v14, v3, -0x1

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v8, v14

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v5, v9

    iget v9, v6, Landroid/gesture/GesturePoint;->x:F

    iget v10, v6, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v1, v9, v10}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_1

    .end local v6           #p:Landroid/gesture/GesturePoint;
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput v5, v0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/gesture/GestureStroke;

    invoke-direct {v3, v2}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object v3
.end method

.method private makePath()V
    .locals 14

    .prologue
    const/high16 v13, 0x4040

    const/high16 v12, 0x4000

    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    .local v4, localPoints:[F
    array-length v0, v4

    .local v0, count:I
    const/4 v7, 0x0

    .local v7, path:Landroid/graphics/Path;
    const/4 v5, 0x0

    .local v5, mX:F
    const/4 v6, 0x0

    .local v6, mY:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    aget v8, v4, v3

    .local v8, x:F
    add-int/lit8 v10, v3, 0x1

    aget v9, v4, v10

    .local v9, y:F
    if-nez v7, :cond_1

    new-instance v7, Landroid/graphics/Path;

    .end local v7           #path:Landroid/graphics/Path;
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .restart local v7       #path:Landroid/graphics/Path;
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v8

    move v6, v9

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    sub-float v10, v8, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, dx:F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, dy:F
    cmpl-float v10, v1, v13

    if-gez v10, :cond_2

    cmpl-float v10, v2, v13

    if-ltz v10, :cond_0

    :cond_2
    add-float v10, v8, v5

    div-float/2addr v10, v12

    add-float v11, v9, v6

    div-float/2addr v11, v12

    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v5, v8

    move v6, v9

    goto :goto_1

    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_3
    iput-object v7, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    .local v2, pts:[F
    iget-object v3, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .local v3, times:[J
    iget-object v4, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v0, v4

    .local v0, count:I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    div-int/lit8 v4, v1, 0x2

    aget-wide v4, v3, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 19
    .parameter "width"
    .parameter "height"
    .parameter "numSample"

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v9

    .local v9, pts:[F
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .local v10, rect:Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v16

    div-float v12, p1, v16

    .local v12, sx:F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    div-float v13, p2, v16

    .local v13, sy:F
    cmpl-float v16, v12, v13

    if-lez v16, :cond_1

    move v11, v13

    .local v11, scale:F
    :goto_0
    invoke-static {v9, v11, v11}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    const/4 v6, 0x0

    .local v6, mX:F
    const/4 v7, 0x0

    .local v7, mY:F
    const/4 v8, 0x0

    .local v8, path:Landroid/graphics/Path;
    array-length v2, v9

    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_4

    aget v14, v9, v5

    .local v14, x:F
    add-int/lit8 v16, v5, 0x1

    aget v15, v9, v16

    .local v15, y:F
    if-nez v8, :cond_2

    new-instance v8, Landroid/graphics/Path;

    .end local v8           #path:Landroid/graphics/Path;
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .restart local v8       #path:Landroid/graphics/Path;
    invoke-virtual {v8, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v14

    move v7, v15

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .end local v2           #count:I
    .end local v5           #i:I
    .end local v6           #mX:F
    .end local v7           #mY:F
    .end local v8           #path:Landroid/graphics/Path;
    .end local v11           #scale:F
    .end local v14           #x:F
    .end local v15           #y:F
    :cond_1
    move v11, v12

    goto :goto_0

    .restart local v2       #count:I
    .restart local v5       #i:I
    .restart local v6       #mX:F
    .restart local v7       #mY:F
    .restart local v8       #path:Landroid/graphics/Path;
    .restart local v11       #scale:F
    .restart local v14       #x:F
    .restart local v15       #y:F
    :cond_2
    sub-float v16, v14, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .local v3, dx:F
    sub-float v16, v15, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .local v4, dy:F
    const/high16 v16, 0x4040

    cmpl-float v16, v3, v16

    if-gez v16, :cond_3

    const/high16 v16, 0x4040

    cmpl-float v16, v4, v16

    if-ltz v16, :cond_0

    :cond_3
    add-float v16, v14, v6

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    add-float v17, v15, v7

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v6, v14

    move v7, v15

    goto :goto_2

    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v14           #x:F
    .end local v15           #y:F
    :cond_4
    return-object v8
.end method

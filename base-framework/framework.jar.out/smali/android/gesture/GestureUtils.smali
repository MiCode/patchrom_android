.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final NONUNIFORM_SCALE:F = 0.0f

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .parameter "stream"

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static computeCentroid([F)[F
    .locals 9
    .parameter "points"

    .prologue
    const/high16 v8, 0x4000

    const/4 v1, 0x0

    .local v1, centerX:F
    const/4 v2, 0x0

    .local v2, centerY:F
    array-length v3, p0

    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, p0, v4

    add-float/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    aget v5, p0, v4

    add-float/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [F

    .local v0, center:[F
    const/4 v5, 0x0

    mul-float v6, v8, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    const/4 v5, 0x1

    mul-float v6, v8, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    return-object v0
.end method

.method private static computeCoVariance([F)[[F
    .locals 10
    .parameter "points"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .local v0, array:[[F
    aget-object v5, v0, v8

    aput v7, v5, v8

    aget-object v5, v0, v8

    aput v7, v5, v9

    aget-object v5, v0, v9

    aput v7, v5, v8

    aget-object v5, v0, v9

    aput v7, v5, v9

    array-length v1, p0

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .local v3, x:F
    add-int/lit8 v2, v2, 0x1

    aget v4, p0, v2

    .local v4, y:F
    aget-object v5, v0, v8

    aget v6, v5, v8

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    aput v6, v5, v8

    aget-object v5, v0, v8

    aget v6, v5, v9

    mul-float v7, v3, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    aget-object v5, v0, v9

    aget-object v6, v0, v8

    aget v6, v6, v9

    aput v6, v5, v8

    aget-object v5, v0, v9

    aget v6, v5, v9

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #x:F
    .end local v4           #y:F
    :cond_0
    aget-object v5, v0, v8

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    aget-object v5, v0, v8

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    aget-object v5, v0, v9

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    aget-object v5, v0, v9

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    return-object v0
.end method

.method private static computeOrientation([[F)[F
    .locals 12
    .parameter "covarianceMatrix"

    .prologue
    const/4 v8, 0x2

    new-array v6, v8, [F

    .local v6, targetVector:[F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    :cond_1
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    neg-float v8, v8

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float v0, v8, v9

    .local v0, a:F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    .local v1, b:F
    const/high16 v8, 0x4000

    div-float v7, v0, v8

    .local v7, value:F
    float-to-double v8, v7

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v1

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .local v5, rightside:F
    neg-float v8, v7

    add-float v3, v8, v5

    .local v3, lambda1:F
    neg-float v8, v7

    sub-float v4, v8, v5

    .local v4, lambda2:F
    cmpl-float v8, v3, v4

    if-nez v8, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    :goto_0
    return-object v6

    :cond_2
    cmpl-float v8, v3, v4

    if-lez v8, :cond_3

    move v2, v3

    .local v2, lambda:F
    :goto_1
    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v2, v9

    const/4 v10, 0x0

    aget-object v10, p0, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    div-float/2addr v9, v10

    aput v9, v6, v8

    goto :goto_0

    .end local v2           #lambda:F
    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    .prologue
    .local p0, originalPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    mul-int/lit8 v6, v0, 0x2

    new-array v5, v6, [F

    .local v5, points:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GesturePoint;

    .local v4, point:Landroid/gesture/GesturePoint;
    mul-int/lit8 v2, v1, 0x2

    .local v2, index:I
    iget v6, v4, Landroid/gesture/GesturePoint;->x:F

    aput v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    iget v7, v4, Landroid/gesture/GesturePoint;->y:F

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #index:I
    .end local v4           #point:Landroid/gesture/GesturePoint;
    :cond_0
    invoke-static {v5}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v3

    .local v3, meanVector:[F
    invoke-static {v5, v3}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v6

    return-object v6
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 5
    .parameter "originalPoints"

    .prologue
    array-length v3, p0

    .local v3, size:I
    new-array v2, v3, [F

    .local v2, points:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p0, v0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    .local v1, meanVector:[F
    invoke-static {v2, v1}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v4

    return-object v4
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 15
    .parameter "points"
    .parameter "centroid"

    .prologue
    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v7

    .local v7, array:[[F
    invoke-static {v7}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v14

    .local v14, targetVector:[F
    const/4 v0, 0x0

    aget v0, v14, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    aget v0, v14, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const v6, -0x4036f025

    .local v6, angle:F
    :goto_0
    const v12, 0x7f7fffff

    .local v12, minx:F
    const v13, 0x7f7fffff

    .local v13, miny:F
    const/4 v10, 0x1

    .local v10, maxx:F
    const/4 v11, 0x1

    .local v11, maxy:F
    array-length v8, p0

    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v8, :cond_5

    aget v0, p0, v9

    cmpg-float v0, v0, v12

    if-gez v0, :cond_0

    aget v12, p0, v9

    :cond_0
    aget v0, p0, v9

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    aget v10, p0, v9

    :cond_1
    add-int/lit8 v9, v9, 0x1

    aget v0, p0, v9

    cmpg-float v0, v0, v13

    if-gez v0, :cond_2

    aget v13, p0, v9

    :cond_2
    aget v0, p0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_3

    aget v11, p0, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6           #angle:F
    .end local v8           #count:I
    .end local v9           #i:I
    .end local v10           #maxx:F
    .end local v11           #maxy:F
    .end local v12           #minx:F
    .end local v13           #miny:F
    :cond_4
    const/4 v0, 0x1

    aget v0, v14, v0

    float-to-double v0, v0

    const/4 v2, 0x0

    aget v2, v14, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v6, v0

    .restart local v6       #angle:F
    neg-float v0, v6

    invoke-static {p0, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    goto :goto_0

    .restart local v8       #count:I
    .restart local v9       #i:I
    .restart local v10       #maxx:F
    .restart local v11       #maxy:F
    .restart local v12       #minx:F
    .restart local v13       #miny:F
    :cond_5
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    const/high16 v1, 0x4334

    mul-float/2addr v1, v6

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    sub-float v4, v10, v12

    sub-float v5, v11, v13

    invoke-direct/range {v0 .. v5}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    return-object v0
.end method

.method static computeStraightness([F)F
    .locals 5
    .parameter "points"

    .prologue
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v2

    .local v2, totalLen:F
    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p0, v4

    sub-float v0, v3, v4

    .local v0, dx:F
    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    sub-float v1, v3, v4

    .local v1, dy:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v2

    return v3
.end method

.method static computeStraightness([FF)F
    .locals 4
    .parameter "points"
    .parameter "totalLen"

    .prologue
    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float v0, v2, v3

    .local v0, dx:F
    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float v1, v2, v3

    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, p1

    return v2
.end method

.method static computeTotalLength([F)F
    .locals 9
    .parameter "points"

    .prologue
    const/4 v4, 0x0

    .local v4, sum:F
    array-length v5, p0

    add-int/lit8 v0, v5, -0x4

    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    aget v6, p0, v3

    sub-float v1, v5, v6

    .local v1, dx:F
    add-int/lit8 v5, v3, 0x3

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    sub-float v2, v5, v6

    .local v2, dy:F
    float-to-double v5, v4

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v4, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_0
    return v4
.end method

.method static cosineDistance([F[F)F
    .locals 5
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    const/4 v2, 0x0

    .local v2, sum:F
    array-length v1, p0

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 19
    .parameter "vector1"
    .parameter "vector2"
    .parameter "numOrientations"

    .prologue
    move-object/from16 v0, p0

    array-length v9, v0

    .local v9, len:I
    const/4 v2, 0x0

    .local v2, a:F
    const/4 v5, 0x0

    .local v5, b:F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget v13, p0, v8

    aget v14, p1, v8

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    add-int/lit8 v15, v8, 0x1

    aget v15, p1, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    add-float/2addr v2, v13

    aget v13, p0, v8

    add-int/lit8 v14, v8, 0x1

    aget v14, p1, v14

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    aget v15, p1, v8

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    add-float/2addr v5, v13

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-eqz v13, :cond_2

    div-float v12, v5, v2

    .local v12, tan:F
    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .local v3, angle:D
    const/4 v13, 0x2

    move/from16 v0, p2

    if-le v0, v13, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x400921fb54442d18L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_1

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .end local v3           #angle:D
    .end local v12           #tan:F
    :goto_1
    return v13

    .restart local v3       #angle:D
    .restart local v12       #tan:F
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .local v6, cosine:D
    float-to-double v13, v12

    mul-double v10, v6, v13

    .local v10, sine:D
    float-to-double v13, v2

    mul-double/2addr v13, v6

    float-to-double v15, v5

    mul-double/2addr v15, v10

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_1

    .end local v3           #angle:D
    .end local v6           #cosine:D
    .end local v10           #sine:D
    .end local v12           #tan:F
    :cond_2
    const v13, 0x3fc90fdb

    goto :goto_1
.end method

.method private static plot(FF[FI)V
    .locals 25
    .parameter "x"
    .parameter "y"
    .parameter "sample"
    .parameter "sampleSize"

    .prologue
    const/16 v21, 0x0

    cmpg-float v21, p0, v21

    if-gez v21, :cond_0

    const/16 p0, 0x0

    :cond_0
    const/16 v21, 0x0

    cmpg-float v21, p1, v21

    if-gez v21, :cond_1

    const/16 p1, 0x0

    :cond_1
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v12, v0

    .local v12, xFloor:I
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v9, v0

    .local v9, xCeiling:I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v18, v0

    .local v18, yFloor:I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v15, v0

    .local v15, yCeiling:I
    int-to-float v0, v12

    move/from16 v21, v0

    cmpl-float v21, p0, v21

    if-nez v21, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, p1, v21

    if-nez v21, :cond_3

    mul-int v21, v15, p3

    add-int v4, v21, v9

    .local v4, index:I
    aget v21, p2, v4

    const/high16 v22, 0x3f80

    cmpg-float v21, v21, v22

    if-gez v21, :cond_2

    const/high16 v21, 0x3f80

    aput v21, p2, v4

    :cond_2
    :goto_0
    return-void

    .end local v4           #index:I
    :cond_3
    int-to-float v0, v12

    move/from16 v21, v0

    sub-float v21, v21, p0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .local v13, xFloorSq:D
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, p1

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    .local v19, yFloorSq:D
    int-to-float v0, v9

    move/from16 v21, v0

    sub-float v21, v21, p0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .local v10, xCeilingSq:D
    int-to-float v0, v15

    move/from16 v21, v0

    sub-float v21, v21, p1

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .local v16, yCeilingSq:D
    add-double v21, v13, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .local v6, topLeft:F
    add-double v21, v10, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v7, v0

    .local v7, topRight:F
    add-double v21, v13, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v2, v0

    .local v2, btmLeft:F
    add-double v21, v10, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v3, v0

    .local v3, btmRight:F
    add-float v21, v6, v7

    add-float v21, v21, v2

    add-float v5, v21, v3

    .local v5, sum:F
    div-float v8, v6, v5

    .local v8, value:F
    mul-int v21, v18, p3

    add-int v4, v21, v12

    .restart local v4       #index:I
    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_4

    aput v8, p2, v4

    :cond_4
    div-float v8, v7, v5

    mul-int v21, v18, p3

    add-int v4, v21, v9

    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_5

    aput v8, p2, v4

    :cond_5
    div-float v8, v2, v5

    mul-int v21, v15, p3

    add-int v4, v21, v12

    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_6

    aput v8, p2, v4

    :cond_6
    div-float v8, v3, v5

    mul-int v21, v15, p3

    add-int v4, v21, v9

    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2

    aput v8, p2, v4

    goto/16 :goto_0
.end method

.method static rotate([FF)[F
    .locals 8
    .parameter "points"
    .parameter "angle"

    .prologue
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .local v0, cos:F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    .local v2, sin:F
    array-length v3, p0

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v6, p0, v1

    mul-float/2addr v6, v0

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v2

    sub-float v4, v6, v7

    .local v4, x:F
    aget v6, p0, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .local v5, y:F
    aput v4, p0, v1

    add-int/lit8 v6, v1, 0x1

    aput v5, p0, v6

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .end local v4           #x:F
    .end local v5           #y:F
    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4
    .parameter "points"
    .parameter "sx"
    .parameter "sy"

    .prologue
    array-length v1, p0

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p0, v0

    mul-float/2addr v2, p1

    aput v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1
    .parameter "gesture"
    .parameter "bitmapSize"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 35
    .parameter "gesture"
    .parameter "bitmapSize"
    .parameter "keepAspectRatio"

    .prologue
    add-int/lit8 v33, p1, -0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v30, v0

    .local v30, targetPatchSize:F
    mul-int v33, p1, p1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .local v17, sample:[F
    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v16

    .local v16, rect:Landroid/graphics/RectF;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v7

    .local v7, gestureWidth:F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    .local v6, gestureHeight:F
    div-float v28, v30, v7

    .local v28, sx:F
    div-float v29, v30, v6

    .local v29, sy:F
    if-eqz p2, :cond_2

    cmpg-float v33, v28, v29

    if-gez v33, :cond_1

    move/from16 v18, v28

    .local v18, scale:F
    :goto_0
    move/from16 v28, v18

    move/from16 v29, v18

    :cond_0
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerX()F

    move-result v33

    move/from16 v0, v33

    neg-float v13, v0

    .local v13, preDx:F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerY()F

    move-result v33

    move/from16 v0, v33

    neg-float v14, v0

    .local v14, preDy:F
    const/high16 v33, 0x4000

    div-float v11, v30, v33

    .local v11, postDx:F
    const/high16 v33, 0x4000

    div-float v12, v30, v33

    .local v12, postDy:F
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v27

    .local v27, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, count:I
    const/4 v9, 0x0

    .local v9, index:I
    :goto_2
    if-ge v9, v5, :cond_11

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/gesture/GestureStroke;

    .local v25, stroke:Landroid/gesture/GestureStroke;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v26, v0

    .local v26, strokepoints:[F
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v23, v0

    .local v23, size:I
    move/from16 v0, v23

    new-array v15, v0, [F

    .local v15, pts:[F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move/from16 v0, v23

    if-ge v8, v0, :cond_7

    aget v33, v26, v8

    add-float v33, v33, v13

    mul-float v33, v33, v28

    add-float v33, v33, v11

    aput v33, v15, v8

    add-int/lit8 v33, v8, 0x1

    add-int/lit8 v34, v8, 0x1

    aget v34, v26, v34

    add-float v34, v34, v14

    mul-float v34, v34, v29

    add-float v34, v34, v12

    aput v34, v15, v33

    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .end local v5           #count:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v11           #postDx:F
    .end local v12           #postDy:F
    .end local v13           #preDx:F
    .end local v14           #preDy:F
    .end local v15           #pts:[F
    .end local v18           #scale:F
    .end local v23           #size:I
    .end local v25           #stroke:Landroid/gesture/GestureStroke;
    .end local v26           #strokepoints:[F
    .end local v27           #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_1
    move/from16 v18, v29

    goto :goto_0

    :cond_2
    div-float v4, v7, v6

    .local v4, aspectRatio:F
    const/high16 v33, 0x3f80

    cmpl-float v33, v4, v33

    if-lez v33, :cond_3

    const/high16 v33, 0x3f80

    div-float v4, v33, v4

    :cond_3
    const v33, 0x3e851eb8

    cmpg-float v33, v4, v33

    if-gez v33, :cond_5

    cmpg-float v33, v28, v29

    if-gez v33, :cond_4

    move/from16 v18, v28

    .restart local v18       #scale:F
    :goto_4
    move/from16 v28, v18

    move/from16 v29, v18

    goto :goto_1

    .end local v18           #scale:F
    :cond_4
    move/from16 v18, v29

    goto :goto_4

    :cond_5
    cmpl-float v33, v28, v29

    if-lez v33, :cond_6

    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float v18, v29, v33

    .restart local v18       #scale:F
    cmpg-float v33, v18, v28

    if-gez v33, :cond_0

    move/from16 v28, v18

    goto/16 :goto_1

    .end local v18           #scale:F
    :cond_6
    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float v18, v28, v33

    .restart local v18       #scale:F
    cmpg-float v33, v18, v29

    if-gez v33, :cond_0

    move/from16 v29, v18

    goto/16 :goto_1

    .end local v4           #aspectRatio:F
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v9       #index:I
    .restart local v11       #postDx:F
    .restart local v12       #postDy:F
    .restart local v13       #preDx:F
    .restart local v14       #preDy:F
    .restart local v15       #pts:[F
    .restart local v23       #size:I
    .restart local v25       #stroke:Landroid/gesture/GestureStroke;
    .restart local v26       #strokepoints:[F
    .restart local v27       #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_7
    const/high16 v19, -0x4080

    .local v19, segmentEndX:F
    const/high16 v20, -0x4080

    .local v20, segmentEndY:F
    const/4 v8, 0x0

    :goto_5
    move/from16 v0, v23

    if-ge v8, v0, :cond_10

    aget v33, v15, v8

    const/16 v34, 0x0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_a

    const/16 v21, 0x0

    .local v21, segmentStartX:F
    :goto_6
    add-int/lit8 v33, v8, 0x1

    aget v33, v15, v33

    const/16 v34, 0x0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_b

    const/16 v22, 0x0

    .local v22, segmentStartY:F
    :goto_7
    cmpl-float v33, v21, v30

    if-lez v33, :cond_8

    move/from16 v21, v30

    :cond_8
    cmpl-float v33, v22, v30

    if-lez v33, :cond_9

    move/from16 v22, v30

    :cond_9
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v33, -0x4080

    cmpl-float v33, v19, v33

    if-eqz v33, :cond_f

    cmpl-float v33, v19, v21

    if-lez v33, :cond_c

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v31, v0

    .local v31, xpos:F
    sub-float v33, v20, v22

    sub-float v34, v19, v21

    div-float v24, v33, v34

    .local v24, slope:F
    :goto_8
    cmpg-float v33, v31, v19

    if-gez v33, :cond_d

    sub-float v33, v31, v21

    mul-float v33, v33, v24

    add-float v32, v33, v22

    .local v32, ypos:F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v33, 0x3f80

    add-float v31, v31, v33

    goto :goto_8

    .end local v21           #segmentStartX:F
    .end local v22           #segmentStartY:F
    .end local v24           #slope:F
    .end local v31           #xpos:F
    .end local v32           #ypos:F
    :cond_a
    aget v21, v15, v8

    goto :goto_6

    .restart local v21       #segmentStartX:F
    :cond_b
    add-int/lit8 v33, v8, 0x1

    aget v22, v15, v33

    goto :goto_7

    .restart local v22       #segmentStartY:F
    :cond_c
    cmpg-float v33, v19, v21

    if-gez v33, :cond_d

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v31, v0

    .restart local v31       #xpos:F
    sub-float v33, v20, v22

    sub-float v34, v19, v21

    div-float v24, v33, v34

    .restart local v24       #slope:F
    :goto_9
    cmpg-float v33, v31, v21

    if-gez v33, :cond_d

    sub-float v33, v31, v21

    mul-float v33, v33, v24

    add-float v32, v33, v22

    .restart local v32       #ypos:F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v33, 0x3f80

    add-float v31, v31, v33

    goto :goto_9

    .end local v24           #slope:F
    .end local v31           #xpos:F
    .end local v32           #ypos:F
    :cond_d
    cmpl-float v33, v20, v22

    if-lez v33, :cond_e

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v32, v0

    .restart local v32       #ypos:F
    sub-float v33, v19, v21

    sub-float v34, v20, v22

    div-float v10, v33, v34

    .local v10, invertSlope:F
    :goto_a
    cmpg-float v33, v32, v20

    if-gez v33, :cond_f

    sub-float v33, v32, v22

    mul-float v33, v33, v10

    add-float v31, v33, v21

    .restart local v31       #xpos:F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v33, 0x3f80

    add-float v32, v32, v33

    goto :goto_a

    .end local v10           #invertSlope:F
    .end local v31           #xpos:F
    .end local v32           #ypos:F
    :cond_e
    cmpg-float v33, v20, v22

    if-gez v33, :cond_f

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v32, v0

    .restart local v32       #ypos:F
    sub-float v33, v19, v21

    sub-float v34, v20, v22

    div-float v10, v33, v34

    .restart local v10       #invertSlope:F
    :goto_b
    cmpg-float v33, v32, v22

    if-gez v33, :cond_f

    sub-float v33, v32, v22

    mul-float v33, v33, v10

    add-float v31, v33, v21

    .restart local v31       #xpos:F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v33, 0x3f80

    add-float v32, v32, v33

    goto :goto_b

    .end local v10           #invertSlope:F
    .end local v31           #xpos:F
    .end local v32           #ypos:F
    :cond_f
    move/from16 v19, v21

    move/from16 v20, v22

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_5

    .end local v21           #segmentStartX:F
    .end local v22           #segmentStartY:F
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .end local v8           #i:I
    .end local v15           #pts:[F
    .end local v19           #segmentEndX:F
    .end local v20           #segmentEndY:F
    .end local v23           #size:I
    .end local v25           #stroke:Landroid/gesture/GestureStroke;
    .end local v26           #strokepoints:[F
    :cond_11
    return-object v17
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 6
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    const/4 v3, 0x0

    .local v3, squaredDistance:F
    array-length v2, p0

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float v0, v4, v5

    .local v0, difference:F
    mul-float v4, v0, v0

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #difference:F
    :cond_0
    int-to-float v4, v2

    div-float v4, v3, v4

    return v4
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 22
    .parameter "stroke"
    .parameter "numPoints"

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureStroke;->length:F

    move/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .local v10, increment:F
    mul-int/lit8 v19, p1, 0x2

    .local v19, vectorLength:I
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .local v18, vector:[F
    const/4 v8, 0x0

    .local v8, distanceSoFar:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v16, v0

    .local v16, pts:[F
    const/16 v20, 0x0

    aget v12, v16, v20

    .local v12, lstPointX:F
    const/16 v20, 0x1

    aget v13, v16, v20

    .local v13, lstPointY:F
    const/4 v11, 0x0

    .local v11, index:I
    const/4 v3, 0x1

    .local v3, currentPointX:F
    const/4 v4, 0x1

    .local v4, currentPointY:F
    aput v12, v18, v11

    add-int/lit8 v11, v11, 0x1

    aput v13, v18, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    div-int/lit8 v2, v20, 0x2

    .local v2, count:I
    :goto_0
    if-ge v9, v2, :cond_0

    const/16 v20, 0x1

    cmpl-float v20, v3, v20

    if-nez v20, :cond_2

    add-int/lit8 v9, v9, 0x1

    if-lt v9, v2, :cond_1

    :cond_0
    move v9, v11

    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    aput v12, v18, v9

    add-int/lit8 v20, v9, 0x1

    aput v13, v18, v20

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_1
    mul-int/lit8 v20, v9, 0x2

    aget v3, v16, v20

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v4, v16, v20

    :cond_2
    sub-float v5, v3, v12

    .local v5, deltaX:F
    sub-float v6, v4, v13

    .local v6, deltaY:F
    mul-float v20, v5, v5

    mul-float v21, v6, v6

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .local v7, distance:F
    add-float v20, v8, v7

    cmpl-float v20, v20, v10

    if-ltz v20, :cond_3

    sub-float v20, v10, v8

    div-float v17, v20, v7

    .local v17, ratio:F
    mul-float v20, v17, v5

    add-float v14, v12, v20

    .local v14, nx:F
    mul-float v20, v17, v6

    add-float v15, v13, v20

    .local v15, ny:F
    aput v14, v18, v11

    add-int/lit8 v11, v11, 0x1

    aput v15, v18, v11

    add-int/lit8 v11, v11, 0x1

    move v12, v14

    move v13, v15

    const/4 v8, 0x0

    goto :goto_0

    .end local v14           #nx:F
    .end local v15           #ny:F
    .end local v17           #ratio:F
    :cond_3
    move v12, v3

    move v13, v4

    const/4 v3, 0x1

    const/4 v4, 0x1

    add-float/2addr v8, v7

    goto :goto_0

    .end local v5           #deltaX:F
    .end local v6           #deltaY:F
    .end local v7           #distance:F
    :cond_4
    return-object v18
.end method

.method static translate([FFF)[F
    .locals 4
    .parameter "points"
    .parameter "dx"
    .parameter "dy"

    .prologue
    array-length v1, p0

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

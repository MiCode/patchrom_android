.class public final Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method private constructor <init>([F[F[F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "m"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/Spline;->mX:[F

    iput-object p2, p0, Landroid/util/Spline;->mY:[F

    iput-object p3, p0, Landroid/util/Spline;->mM:[F

    return-void
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v8, p0

    array-length v9, p1

    if-ne v8, v9, :cond_0

    array-length v8, p0

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    array-length v6, p0

    .local v6, n:I
    add-int/lit8 v8, v6, -0x1

    new-array v2, v8, [F

    .local v2, d:[F
    new-array v5, v6, [F

    .local v5, m:[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_3

    add-int/lit8 v8, v4, 0x1

    aget v8, p0, v8

    aget v9, p0, v4

    sub-float v3, v8, v9

    .local v3, h:F
    cmpg-float v8, v3, v11

    if-gtz v8, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The control points must all have strictly increasing X values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aget v9, p1, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #h:F
    :cond_3
    aget v8, v2, v10

    aput v8, v5, v10

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_4

    add-int/lit8 v8, v4, -0x1

    aget v8, v2, v8

    aget v9, v2, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    aput v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x2

    aget v9, v2, v9

    aput v9, v5, v8

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_9

    aget v8, v2, v4

    cmpl-float v8, v8, v11

    if-nez v8, :cond_6

    aput v11, v5, v4

    add-int/lit8 v8, v4, 0x1

    aput v11, v5, v8

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    aget v8, v5, v4

    aget v9, v2, v4

    div-float v0, v8, v9

    .local v0, a:F
    add-int/lit8 v8, v4, 0x1

    aget v8, v5, v8

    aget v9, v2, v4

    div-float v1, v8, v9

    .local v1, b:F
    cmpg-float v8, v0, v11

    if-ltz v8, :cond_7

    cmpg-float v8, v1, v11

    if-gez v8, :cond_8

    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The control points must have monotonic Y values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    invoke-static {v0, v1}, Landroid/util/FloatMath;->hypot(FF)F

    move-result v3

    .restart local v3       #h:F
    const/high16 v8, 0x4110

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    const/high16 v8, 0x4040

    div-float v7, v8, v3

    .local v7, t:F
    mul-float v8, v7, v0

    aget v9, v2, v4

    mul-float/2addr v8, v9

    aput v8, v5, v4

    add-int/lit8 v8, v4, 0x1

    mul-float v9, v7, v1

    aget v10, v2, v4

    mul-float/2addr v9, v10

    aput v9, v5, v8

    goto :goto_3

    .end local v0           #a:F
    .end local v1           #b:F
    .end local v3           #h:F
    .end local v7           #t:F
    :cond_9
    new-instance v8, Landroid/util/Spline;

    invoke-direct {v8, p0, p1, v5}, Landroid/util/Spline;-><init>([F[F[F)V

    return-object v8
.end method


# virtual methods
.method public interpolate(F)F
    .locals 9
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x4000

    const/high16 v8, 0x3f80

    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    array-length v2, v4

    .local v2, n:I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget p1, v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    add-int/lit8 v5, v2, -0x1

    aget p1, v4, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :cond_3
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v1

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget p1, v4, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mX:[F

    aget v5, v5, v1

    sub-float v0, v4, v5

    .local v0, h:F
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    div-float v3, v4, v0

    .local v3, t:F
    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget v4, v4, v1

    mul-float v5, v7, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mM:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mY:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    const/high16 v6, 0x4040

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/util/Spline;->mM:[F

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    sub-float v7, v3, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    add-float p1, v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, str:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline;->mX:[F

    array-length v1, v3

    .local v1, n:I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

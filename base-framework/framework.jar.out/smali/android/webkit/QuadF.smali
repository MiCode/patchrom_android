.class Landroid/webkit/QuadF;
.super Ljava/lang/Object;
.source "QuadF.java"


# instance fields
.field public p1:Landroid/graphics/PointF;

.field public p2:Landroid/graphics/PointF;

.field public p3:Landroid/graphics/PointF;

.field public p4:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    return-void
.end method

.method private static isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 13
    .parameter "x0"
    .parameter "y0"
    .parameter "r1"
    .parameter "r2"
    .parameter "r3"

    .prologue
    iget v11, p2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float v6, v11, v12

    .local v6, x13:F
    iget v11, p2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/PointF;->y:F

    sub-float v9, v11, v12

    .local v9, y13:F
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float v7, v11, v12

    .local v7, x23:F
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/PointF;->y:F

    sub-float v10, v11, v12

    .local v10, y23:F
    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/PointF;->x:F

    sub-float v5, p0, v11

    .local v5, x03:F
    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/PointF;->y:F

    sub-float v8, p1, v11

    .local v8, y03:F
    mul-float v11, v10, v6

    mul-float v12, v7, v9

    sub-float v1, v11, v12

    .local v1, determinant:F
    mul-float v11, v10, v5

    mul-float v12, v7, v8

    sub-float/2addr v11, v12

    div-float v2, v11, v1

    .local v2, lambda1:F
    mul-float v11, v6, v8

    mul-float v12, v9, v5

    sub-float/2addr v11, v12

    div-float v3, v11, v1

    .local v3, lambda2:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v2

    sub-float v4, v11, v3

    .local v4, lambda3:F
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-ltz v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-ltz v11, :cond_0

    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-ltz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1, v2}, Landroid/webkit/QuadF;->isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0, v1, v2}, Landroid/webkit/QuadF;->isPointInTriangle(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    iget-object v0, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v0, p0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v0, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v0, p0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuadF("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, s:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

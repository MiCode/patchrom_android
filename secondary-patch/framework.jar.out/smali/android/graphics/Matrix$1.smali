.class final Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 1
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 0
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

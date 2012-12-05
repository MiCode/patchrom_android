.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 10
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "color0"
    .parameter "color1"
    .parameter "tile"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;->nativeCreate2(FFFFIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/LinearGradient;->native_instance:I

    iget v2, p0, Landroid/graphics/LinearGradient;->native_instance:I

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/graphics/LinearGradient;->nativePostCreate2(IFFFFIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/LinearGradient;->native_shader:I

    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 10
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "colors"
    .parameter "positions"
    .parameter "tile"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    array-length v1, p5

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "needs >= 2 number of colors"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p6, :cond_1

    array-length v1, p5

    move-object/from16 v0, p6

    array-length v2, v0

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "color and position arrays must be of equal length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;->nativeCreate1(FFFF[I[FI)I

    move-result v1

    iput v1, p0, Landroid/graphics/LinearGradient;->native_instance:I

    iget v2, p0, Landroid/graphics/LinearGradient;->native_instance:I

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/graphics/LinearGradient;->nativePostCreate1(IFFFF[I[FI)I

    move-result v1

    iput v1, p0, Landroid/graphics/LinearGradient;->native_shader:I

    return-void
.end method

.method private native nativeCreate1(FFFF[I[FI)I
.end method

.method private native nativeCreate2(FFFFIII)I
.end method

.method private native nativePostCreate1(IFFFF[I[FI)I
.end method

.method private native nativePostCreate2(IFFFFIII)I
.end method

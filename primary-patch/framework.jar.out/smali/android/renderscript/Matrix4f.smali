.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method private computeCofactor(II)F
    .locals 14
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    add-int/lit8 v8, p1, 0x1

    rem-int/lit8 v0, v8, 0x4

    .local v0, "c0":I
    add-int/lit8 v8, p1, 0x2

    rem-int/lit8 v1, v8, 0x4

    .local v1, "c1":I
    add-int/lit8 v8, p1, 0x3

    rem-int/lit8 v2, v8, 0x4

    .local v2, "c2":I
    add-int/lit8 v8, p2, 0x1

    rem-int/lit8 v5, v8, 0x4

    .local v5, "r0":I
    add-int/lit8 v8, p2, 0x2

    rem-int/lit8 v6, v8, 0x4

    .local v6, "r1":I
    add-int/lit8 v8, p2, 0x3

    rem-int/lit8 v7, v8, 0x4

    .local v7, "r2":I
    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v0

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v1

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v0

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v1

    aget v11, v11, v12

    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v0

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v1

    aget v11, v11, v12

    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    .local v4, "minor":F
    add-int v8, p1, p2

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    neg-float v3, v4

    .local v3, "cofactor":F
    :goto_0
    return v3

    .end local v3    # "cofactor":F
    :cond_0
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x4

    const/4 v4, 0x0

    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v9, :cond_0

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_1
    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v4

    iget-object v7, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v7, v7, v9

    iget-object v8, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v8, v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v8, 0x8

    aget v7, v7, v8

    iget-object v8, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v8, 0xc

    aget v7, v7, v8

    iget-object v8, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :goto_2
    return v4

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v1

    mul-float/2addr v6, v0

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method public inverseTranspose()Z
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/4 v8, 0x4

    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v8, :cond_0

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v1

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_1
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v4

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v4

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v8

    iget-object v7, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v9

    iget-object v7, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v7, v7, v9

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v10

    iget-object v7, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v7, v7, v10

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    :goto_2
    return v4

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 7
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aput v4, v0, v6

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    iget-object v2, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v4, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v4, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix4f;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    mul-float v2, v4, p5

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    mul-float v2, v4, p5

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    add-float v2, p2, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    add-float v2, p4, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v2, p6

    mul-float/2addr v2, p5

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .param p1, "lhs"    # Landroid/renderscript/Matrix4f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix4f;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_1

    const/4 v3, 0x0

    .local v3, "ri0":F
    const/4 v4, 0x0

    .local v4, "ri1":F
    const/4 v5, 0x0

    .local v5, "ri2":F
    const/4 v6, 0x0

    .local v6, "ri3":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v12, :cond_0

    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v2

    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    .end local v6    # "ri3":F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    const/high16 v2, -0x40000000    # -2.0f

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 10
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    .prologue
    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v8

    double-to-float v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v4, p3, v0

    .local v4, "top":F
    neg-float v3, v4

    .local v3, "bottom":F
    mul-float v1, v3, p2

    .local v1, "left":F
    mul-float v2, v4, p2

    .local v2, "right":F
    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, "m1":Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v10, "m2":Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .local v2, "aspect":F
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void

    .end local v2    # "aspect":F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .restart local v2    # "aspect":F
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    neg-float v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x42c80000    # 100.0f

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xf

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v0, v12

    .local v0, "c":F
    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v4, v12

    .local v4, "s":F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v3, v11, v1

    .local v3, "recipLen":F
    mul-float p2, p2, v3

    mul-float p3, p3, v3

    mul-float p4, p4, v3

    .end local v3    # "recipLen":F
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v2, v11, v0

    .local v2, "nc":F
    mul-float v6, p2, p3

    .local v6, "xy":F
    mul-float v8, p3, p4

    .local v8, "yz":F
    mul-float v10, p4, p2

    .local v10, "zx":F
    mul-float v5, p2, v4

    .local v5, "xs":F
    mul-float v7, p3, v4

    .local v7, "ys":F
    mul-float v9, p4, v4

    .local v9, "zs":F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x9

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xa

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix4f;

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public transpose()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget v2, v3, v4

    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "temp":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 35
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .parameter "dataArray"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 46
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-void
.end method

.method private computeCofactor(II)F
    .locals 14
    .parameter "i"
    .parameter "j"

    .prologue
    .line 377
    add-int/lit8 v8, p1, 0x1

    rem-int/lit8 v0, v8, 0x4

    .line 378
    .local v0, c0:I
    add-int/lit8 v8, p1, 0x2

    rem-int/lit8 v1, v8, 0x4

    .line 379
    .local v1, c1:I
    add-int/lit8 v8, p1, 0x3

    rem-int/lit8 v2, v8, 0x4

    .line 380
    .local v2, c2:I
    add-int/lit8 v8, p2, 0x1

    rem-int/lit8 v5, v8, 0x4

    .line 381
    .local v5, r0:I
    add-int/lit8 v8, p2, 0x2

    rem-int/lit8 v6, v8, 0x4

    .line 382
    .local v6, r1:I
    add-int/lit8 v8, p2, 0x3

    rem-int/lit8 v7, v8, 0x4

    .line 384
    .local v7, r2:I
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

    .line 391
    .local v4, minor:F
    add-int v8, p1, p2

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    neg-float v3, v4

    .line 392
    .local v3, cofactor:F
    :goto_0
    return v3

    .end local v3           #cofactor:F
    :cond_0
    move v3, v4

    .line 391
    goto :goto_0
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x4

    const/4 v4, 0x0

    .line 400
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 402
    .local v3, result:Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 403
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v9, :cond_0

    .line 404
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v8

    aput v8, v6, v7

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v2           #j:I
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

    .line 412
    .local v0, det:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 421
    :goto_2
    return v4

    .line 416
    :cond_2
    const/high16 v4, 0x3f80

    div-float v0, v4, v0

    .line 417
    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 418
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v1

    mul-float/2addr v6, v0

    aput v6, v4, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v4, v5

    .line 421
    goto :goto_2
.end method

.method public inverseTranspose()Z
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/4 v8, 0x4

    .line 429
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 431
    .local v3, result:Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 432
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v8, :cond_0

    .line 433
    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v1

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v2           #j:I
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

    .line 440
    .local v0, det:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 449
    :goto_2
    return v4

    .line 444
    :cond_2
    const/high16 v4, 0x3f80

    div-float v0, v4, v0

    .line 445
    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 446
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    aput v5, v4, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 449
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .parameter "src"

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v4, 0x4000

    .line 264
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 265
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    mul-float v2, v4, p5

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 266
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    mul-float v2, v4, p5

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    add-float v2, p2, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 268
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    add-float v2, p4, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 269
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 270
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x4080

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    const/high16 v2, -0x4000

    mul-float/2addr v2, p6

    mul-float/2addr v2, p5

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 272
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 273
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 98
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 103
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 104
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v12, :cond_1

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, ri0:F
    const/4 v4, 0x0

    .line 202
    .local v4, ri1:F
    const/4 v5, 0x0

    .line 203
    .local v5, ri2:F
    const/4 v6, 0x0

    .line 204
    .local v6, ri3:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v12, :cond_0

    .line 205
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v2

    .line 206
    .local v2, rhs_ij:F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    .line 207
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    .line 208
    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    .line 209
    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v2           #rhs_ij:F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 212
    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 213
    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 214
    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v1           #j:I
    .end local v3           #ri0:F
    .end local v4           #ri1:F
    .end local v5           #ri2:F
    .end local v6           #ri3:F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .parameter "l"
    .parameter "r"
    .parameter "b"
    .parameter "t"
    .parameter "n"
    .parameter "f"

    .prologue
    const/high16 v3, 0x4000

    .line 229
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 230
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 231
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 232
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    const/high16 v2, -0x4000

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 233
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 235
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 236
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 249
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 250
    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 9
    .parameter "fovy"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 284
    float-to-double v5, p1

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    const-wide v7, 0x4076800000000000L

    div-double/2addr v5, v7

    double-to-float v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float v4, p3, v0

    .line 285
    .local v4, top:F
    neg-float v3, v4

    .line 286
    .local v3, bottom:F
    mul-float v1, v3, p2

    .line 287
    .local v1, left:F
    mul-float v2, v4, p2

    .local v2, right:F
    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 288
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 289
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 301
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 302
    .local v0, m1:Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 304
    .local v10, m2:Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 305
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 306
    .local v2, aspect:F
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x42c8

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 312
    :goto_0
    const/high16 v1, 0x4334

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 313
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 315
    const/high16 v1, -0x4000

    const/high16 v3, 0x4000

    const/high16 v4, 0x3f80

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 316
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 318
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 319
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 321
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 322
    return-void

    .line 308
    .end local v2           #aspect:F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 309
    .restart local v2       #aspect:F
    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    neg-float v6, v2

    const/high16 v8, 0x3f80

    const/high16 v9, 0x42c8

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 126
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 127
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 128
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 129
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 130
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 131
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 132
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    .line 133
    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    .line 134
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 135
    .local v0, c:F
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    .line 137
    .local v4, s:F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 138
    .local v1, len:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    .line 139
    const/high16 v11, 0x3f80

    div-float v3, v11, v1

    .line 140
    .local v3, recipLen:F
    mul-float p2, p2, v3

    .line 141
    mul-float p3, p3, v3

    .line 142
    mul-float p4, p4, v3

    .line 144
    .end local v3           #recipLen:F
    :cond_0
    const/high16 v11, 0x3f80

    sub-float v2, v11, v0

    .line 145
    .local v2, nc:F
    mul-float v6, p2, p3

    .line 146
    .local v6, xy:F
    mul-float v8, p3, p4

    .line 147
    .local v8, yz:F
    mul-float v10, p4, p2

    .line 148
    .local v10, zx:F
    mul-float v5, p2, v4

    .line 149
    .local v5, xs:F
    mul-float v7, p3, v4

    .line 150
    .local v7, ys:F
    mul-float v9, p4, v4

    .line 151
    .local v9, zs:F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 152
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    .line 153
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    .line 154
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    .line 155
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 156
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0x9

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    .line 157
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    .line 158
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    .line 159
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v12, 0xa

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 160
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 171
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 172
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 173
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 174
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 186
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 187
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 188
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 189
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .parameter "rhs"

    .prologue
    .line 330
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 331
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 332
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 333
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .parameter "rot"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 344
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 345
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 346
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 347
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 358
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 359
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 360
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 361
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 79
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 372
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 373
    .local v0, tmp:Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 374
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 375
    return-void
.end method

.method public transpose()V
    .locals 7

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 457
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 458
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget v2, v3, v4

    .line 459
    .local v2, temp:F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 460
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    .end local v2           #temp:F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1           #j:I
    :cond_1
    return-void
.end method

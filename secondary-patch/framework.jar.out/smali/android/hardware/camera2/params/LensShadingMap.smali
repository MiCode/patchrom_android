.class public final Landroid/hardware/camera2/params/LensShadingMap;
.super Ljava/lang/Object;
.source "LensShadingMap.java"


# static fields
.field public static final MINIMUM_GAIN_FACTOR:F = 1.0f


# instance fields
.field private final mColumns:I

.field private final mElements:[F

.field private final mRows:I


# direct methods
.method public constructor <init>([FII)V
    .locals 3
    .param p1, "elements"    # [F
    .param p2, "rows"    # I
    .param p3, "columns"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rows must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    const-string v0, "columns must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    const-string v0, "elements must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    array-length v0, p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elements must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length, received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "elements"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    return-void
.end method


# virtual methods
.method public copyGainFactors([FI)V
    .locals 3
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    .prologue
    const-string v0, "offset must not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    instance-of v3, p1, Landroid/hardware/camera2/params/LensShadingMap;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/LensShadingMap;

    .local v0, "other":Landroid/hardware/camera2/params/LensShadingMap;
    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v4, v0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    iget v4, v0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget-object v4, v0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    return v0
.end method

.method public getGainFactor(III)F
    .locals 2
    .param p1, "colorChannel"    # I
    .param p2, "column"    # I
    .param p3, "row"    # I

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorChannel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-lt p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-lt p3, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getGainFactorCount()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getGainFactorVector(II)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 7
    .param p1, "column"    # I
    .param p2, "row"    # I

    .prologue
    if-ltz p1, :cond_0

    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-lt p1, v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "column out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-ltz p2, :cond_2

    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-lt p2, v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "row out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    mul-int/lit8 v3, v5, 0x4

    .local v3, "offset":I
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x0

    aget v4, v5, v6

    .local v4, "red":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x1

    aget v1, v5, v6

    .local v1, "greenEven":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x2

    aget v2, v5, v6

    .local v2, "greenOdd":F
    iget-object v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    add-int/lit8 v6, v3, 0x3

    aget v0, v5, v6

    .local v0, "blue":F
    new-instance v5, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v5, v4, v1, v2, v0}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object v5
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    .local v0, "elemsHash":I
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "str":Ljava/lang/StringBuilder;
    const-string v6, "LensShadingMap{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "R:("

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "G_even:("

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "G_odd:("

    aput-object v7, v2, v6

    const-string v6, "B:("

    aput-object v6, v2, v8

    .local v2, "channelPrefix":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    if-ge v1, v9, :cond_5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .local v4, "r":I
    :goto_1
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    if-ge v4, v6, :cond_3

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    if-ge v0, v6, :cond_1

    invoke-virtual {p0, v1, v0, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    move-result v3

    .local v3, "gain":F
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v3    # "gain":F
    :cond_1
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_2

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "c":I
    :cond_3
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v8, :cond_4

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "r":I
    :cond_5
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

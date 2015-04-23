.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "alloc"    # Landroid/renderscript/Allocation;

    .prologue
    iget-object v0, p3, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v1, p3, Landroid/renderscript/Allocation;->mUsage:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    iput-object p3, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    new-instance v0, Landroid/renderscript/AllocationAdapter;

    invoke-direct {v0, v2, p0, p1}, Landroid/renderscript/AllocationAdapter;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V

    .local v0, "aa":Landroid/renderscript/AllocationAdapter;
    iput-boolean v1, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedLOD:Z

    iput-boolean v1, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedFace:Z

    iput-boolean v1, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedY:Z

    iput-boolean v1, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedZ:Z

    invoke-virtual {v0, v2}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    new-instance v0, Landroid/renderscript/AllocationAdapter;

    invoke-direct {v0, v1, p0, p1}, Landroid/renderscript/AllocationAdapter;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V

    .local v0, "aa":Landroid/renderscript/AllocationAdapter;
    iput-boolean v2, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedLOD:Z

    iput-boolean v2, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedFace:Z

    iput-boolean v1, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedY:Z

    iput-boolean v2, v0, Landroid/renderscript/AllocationAdapter;->mConstrainedZ:Z

    invoke-virtual {v0, v1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-object v0
.end method


# virtual methods
.method getID(Landroid/renderscript/RenderScript;)I
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "This operation is not supported with adapters at this time."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method initLOD(I)V
    .locals 8
    .param p1, "lod"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    if-gez p1, :cond_0

    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to set negative lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .local v1, "tx":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .local v2, "ty":I
    iget-object v4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v4, v4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v4}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .local v3, "tz":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, p1, :cond_5

    if-ne v1, v6, :cond_1

    if-ne v2, v6, :cond_1

    if-ne v3, v6, :cond_1

    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to set lod ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") out of range."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-le v1, v6, :cond_2

    shr-int/lit8 v1, v1, 0x1

    :cond_2
    if-le v2, v6, :cond_3

    shr-int/lit8 v2, v2, 0x1

    :cond_3
    if-le v3, v6, :cond_4

    shr-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput v1, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v2, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    iput v3, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimX:I

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    if-le v4, v6, :cond_6

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimY:I

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    :cond_6
    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    if-le v4, v6, :cond_7

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mCurrentDimZ:I

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/renderscript/AllocationAdapter;->mCurrentCount:I

    :cond_7
    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iput v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    return-void
.end method

.method public readData([F)V
    .locals 0
    .param p1, "d"    # [F

    .prologue
    invoke-super {p0, p1}, Landroid/renderscript/Allocation;->copyTo([F)V

    return-void
.end method

.method public readData([I)V
    .locals 0
    .param p1, "d"    # [I

    .prologue
    invoke-super {p0, p1}, Landroid/renderscript/Allocation;->copyTo([I)V

    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 2
    .param p1, "dimX"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Resize not allowed for Adapters."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 2
    .param p1, "cf"    # Landroid/renderscript/Type$CubemapFace;

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/renderscript/AllocationAdapter;->mConstrainedFace:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot set null face."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    return-void
.end method

.method public setLOD(I)V
    .locals 2
    .param p1, "lod"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/renderscript/AllocationAdapter;->mConstrainedLOD:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-void
.end method

.method public setY(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, p1, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/AllocationAdapter;->mConstrainedY:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the adapter includes Y."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    return-void
.end method

.method public setZ(I)V
    .locals 2
    .param p1, "z"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-gt v0, p1, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/AllocationAdapter;->mConstrainedZ:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the adapter includes Z."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    return-void
.end method

.method public subData(ILandroid/renderscript/FieldPacker;)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public subData1D(II[B)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    return-void
.end method

.method public subData1D(II[F)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V

    return-void
.end method

.method public subData1D(II[I)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V

    return-void
.end method

.method public subData1D(II[S)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V

    return-void
.end method

.method public subData2D(IIII[F)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "d"    # [F

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V

    return-void
.end method

.method public subData2D(IIII[I)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "d"    # [I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V

    return-void
.end method

.method public subElementData(IILandroid/renderscript/FieldPacker;)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "AllocationAdapter.java"


# instance fields
.field mWindow:Landroid/renderscript/Type;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "alloc"    # Landroid/renderscript/Allocation;
    .param p5, "t"    # Landroid/renderscript/Type;

    .prologue
    iget-object v5, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v6, p4, Landroid/renderscript/Allocation;->mUsage:I

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    iput-object p4, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iput-object p5, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v0

    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    move-result-object v0

    .local v0, "t":Landroid/renderscript/Type;
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "t"    # Landroid/renderscript/Type;

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Adapters cannot be nested."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Element must match Allocation type."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Adapters do not support window types with Mipmaps or Faces."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .local v0, "at":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-gt v1, v4, :cond_4

    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v1, v4, :cond_4

    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v4

    if-gt v1, v4, :cond_4

    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v4

    if-le v1, v4, :cond_5

    :cond_4
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ge v7, v1, :cond_7

    invoke-virtual {p2, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    invoke-virtual {v0, v7}, Landroid/renderscript/Type;->getArray(I)I

    move-result v4

    if-le v1, v4, :cond_6

    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Type cannot have dimension larger than the source allocation."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v7    # "i":I
    :cond_7
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {p0, v4, v5, v8, v9}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    move-result-wide v2

    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v4, "AllocationAdapter creation failed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Landroid/renderscript/AllocationAdapter;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    return-object v1
.end method

.method private updateOffsets()V
    .locals 13

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v9, 0x0

    .local v9, "a1":I
    const/4 v10, 0x0

    .local v10, "a2":I
    const/4 v11, 0x0

    .local v11, "a3":I
    const/4 v12, 0x0

    .local v12, "a4":I
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    const/4 v1, 0x0

    aget v9, v0, v1

    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v10, v0, v2

    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v11, v0, v2

    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    array-length v0, v0

    if-le v0, v3, :cond_3

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aget v12, v0, v3

    :cond_3
    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/AllocationAdapter;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    iget v5, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    iget v6, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    iget v7, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v8, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    return-void
.end method


# virtual methods
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

.method public setArray(II)V
    .locals 2
    .param p1, "arrayNum"    # I
    .param p2, "arrayVal"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set arrayNum when the adapter includes arrayNum."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    move-result v1

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mSelectedArray:[I

    aput p2, v0, p1

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void
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
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set face when the adapter includes faces."

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

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

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
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedLOD:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void
.end method

.method public setX(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    if-gt v0, p1, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X greater than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set X when the adapter includes X."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (X + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedX:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

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
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Y when the adapter includes Y."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Y + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedY:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

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
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set Z when the adapter includes Z."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/renderscript/AllocationAdapter;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cannot set (Z + window) which would be larger than dimension of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Landroid/renderscript/AllocationAdapter;->mSelectedZ:I

    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    return-void
.end method

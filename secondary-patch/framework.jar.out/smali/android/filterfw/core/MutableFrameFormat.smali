.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .locals 1
    .param p1, "baseType"    # I

    .prologue
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    return-void
.end method

.method public setBytesPerSample(I)V
    .locals 1
    .param p1, "bytesPerSample"    # I

    .prologue
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensionCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    return-void
.end method

.method public setDimensions(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [I

    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I

    .prologue
    const/4 v1, 0x3

    new-array v0, v1, [I

    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions([I)V
    .locals 1
    .param p1, "dimensions"    # [I

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "objectClass"    # Ljava/lang/Class;

    .prologue
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    return-void
.end method

.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, guess:I
    aget v3, p0, v0

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .restart local v1       #high:I
    :cond_3
    aget v3, p0, v1

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .parameter "minNeededSize"

    .prologue
    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .local v0, n:I
    new-array v1, v0, [I

    .local v1, nkeys:[I
    new-array v2, v0, [J

    .local v2, nvalues:[J
    iget-object v3, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v4, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v4, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iput-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    return-void
.end method


# virtual methods
.method public append(IJ)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .local v0, pos:I
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    :cond_1
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/SparseLongArray;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, clone:Landroid/util/SparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseLongArray;

    move-object v1, v0

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/SparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 6
    .parameter "key"

    .prologue
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public get(I)J
    .locals 2
    .parameter "key"

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(IJ)J
    .locals 6
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .local v0, i:I
    if-gez v0, :cond_0

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IJ)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    :cond_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public valueAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

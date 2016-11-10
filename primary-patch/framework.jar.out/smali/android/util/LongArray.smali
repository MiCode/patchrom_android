.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .local v0, "currentSize":I
    add-int v1, v0, p1

    .local v1, "minCapacity":I
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    array-length v5, v5

    if-lt v1, v5, :cond_0

    const/4 v5, 0x6

    if-ge v0, v5, :cond_1

    const/16 v5, 0xc

    :goto_0
    add-int v4, v0, v5

    .local v4, "targetCap":I
    if-le v4, v1, :cond_2

    move v2, v4

    .local v2, "newCapacity":I
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v3

    .local v3, "newValues":[J
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v3, p0, Landroid/util/LongArray;->mValues:[J

    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[J
    .end local v4    # "targetCap":I
    :cond_0
    return-void

    :cond_1
    shr-int/lit8 v5, v0, 0x1

    goto :goto_0

    .restart local v4    # "targetCap":I
    :cond_2
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public add(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_2
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public add(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/LongArray;

    .prologue
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/util/LongArray;->mValues:[J

    iget v4, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "clone":Landroid/util/LongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongArray;

    move-object v1, v0

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongArray;->mValues:[J
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
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .param p1, "value"    # J

    .prologue
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

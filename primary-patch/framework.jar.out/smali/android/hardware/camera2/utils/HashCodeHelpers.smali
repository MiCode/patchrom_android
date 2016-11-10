.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hashCode([F)I
    .locals 7
    .param p0, "array"    # [F

    .prologue
    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x1

    .local v2, "h":I
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .local v1, "f":F
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .local v5, "x":I
    shl-int/lit8 v6, v2, 0x5

    sub-int/2addr v6, v2

    xor-int v2, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs hashCode([I)I
    .locals 6
    .param p0, "array"    # [I

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    .local v1, "h":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .local v4, "x":I
    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v1, 0x1

    .local v1, "h":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, "o":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_1

    move v5, v6

    .local v5, "x":I
    :goto_2
    shl-int/lit8 v7, v1, 0x5

    sub-int/2addr v7, v1

    xor-int v1, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "x":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_2

    .end local v4    # "o":Ljava/lang/Object;, "TT;"
    :cond_2
    move v6, v1

    goto :goto_0
.end method

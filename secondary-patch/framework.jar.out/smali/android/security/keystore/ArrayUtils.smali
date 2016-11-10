.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static concat([BII[BII)[B
    .locals 2
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "arr2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I

    .prologue
    if-nez p2, :cond_0

    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int v1, p2, p5

    new-array v0, v1, [B

    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static concat([B[B)[B
    .locals 6
    .param p0, "arr1"    # [B
    .param p1, "arr2"    # [B

    .prologue
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    :goto_0
    if-eqz p1, :cond_1

    array-length v5, p1

    :goto_1
    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1
.end method

.method public static concat([I[I)[I
    .locals 4
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, p0

    goto :goto_0

    :cond_3
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .local v0, "result":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    .end local p0    # "array":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "array":[Ljava/lang/String;
    :cond_0
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 2
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    if-nez p2, :cond_1

    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    .end local p0    # "arr":[B
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "arr":[B
    :cond_1
    if-nez p1, :cond_2

    array-length v1, p0

    if-eq p2, v1, :cond_0

    :cond_2
    new-array v0, p2, [B

    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object p0, v0

    goto :goto_0
.end method

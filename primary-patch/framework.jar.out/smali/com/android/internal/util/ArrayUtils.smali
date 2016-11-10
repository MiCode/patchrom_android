.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance p0, Landroid/util/ArraySet;

    .end local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .restart local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .restart local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object p1

    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    array-length v0, p1

    .local v0, "end":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    aput-object p2, v1, v0

    move-object p1, v1

    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "end":I
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_1
.end method

.method public static appendInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    const/4 v3, 0x1

    new-array p0, v3, [I

    .end local p0    # "cur":[I
    aput p1, p0, v4

    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "cur":[I
    :cond_1
    array-length v0, p0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    aget v3, p0, v1

    if-eq v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .local v2, "ret":[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    aput p1, v2, v0

    move-object p0, v2

    goto :goto_0
.end method

.method public static appendLong([JJ)[J
    .locals 7
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    const/4 v3, 0x1

    new-array p0, v3, [J

    .end local p0    # "cur":[J
    aput-wide p1, p0, v6

    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "cur":[J
    :cond_1
    array-length v0, p0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    .local v2, "ret":[J
    invoke-static {p0, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    aput-wide p1, v2, v0

    move-object p0, v2

    goto :goto_0
.end method

.method public static cloneOrNull([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .local v1, "element":I
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static contains([JJ)Z
    .locals 7
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .local v2, "element":J
    cmp-long v6, v2, p1

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .local v0, "bucket":I
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "cache":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    if-ne p0, p1, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v3, p0

    if-lt v3, p2, :cond_3

    array-length v3, p1

    if-ge v3, p2, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, -0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newUnpaddedBooleanArray(I)[Z
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static newUnpaddedByteArray(I)[B
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static newUnpaddedCharArray(I)[C
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static newUnpaddedFloatArray(I)[F
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static newUnpaddedLongArray(I)[J
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .locals 2
    .param p0, "minLen"    # I

    .prologue
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "sizeB":I
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eq v2, v3, :cond_3

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "diff":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_4

    move v4, v5

    :goto_2
    or-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    .end local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    .end local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    array-length v1, p1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_0

    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static removeInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v0, p0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .local v2, "ret":[I
    if-lez v1, :cond_2

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .end local v2    # "ret":[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, p0

    goto :goto_0
.end method

.method public static removeLong([JJ)[J
    .locals 7
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v0, p0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    aget-wide v4, p0, v1

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [J

    .local v2, "ret":[J
    if-lez v1, :cond_2

    invoke-static {p0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0

    .end local v2    # "ret":[J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, p0

    goto :goto_0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    array-length v0, p0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v3, p0, v1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_2

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v2    # "ret":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, p0

    goto :goto_0
.end method

.method public static total([J)J
    .locals 8
    .param p0, "array"    # [J

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "total":J
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v6, v0, v1

    .local v6, "value":J
    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v6    # "value":J
    :cond_0
    return-wide v4
.end method

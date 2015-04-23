.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/util/Range",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-",
            "Landroid/util/Range",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/util/Range",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 8
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/Range",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/Range<TT;>;>;"
    const/4 v5, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v5

    .local v1, "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-static {v1}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    .local v0, "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    iget v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNativeType:I

    invoke-static {v0, v4}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Comparable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Comparable;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .end local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .end local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .end local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Raw use of Range is not supported"

    invoke-direct {v4, v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "actualTypeArgToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    .restart local v1    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local v3    # "paramType":Ljava/lang/reflect/ParameterizedType;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Range;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p1, "value":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->getNativeSize()I

    move-result v1

    .local v1, "nativeSize":I
    sget v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    if-eq v1, v3, :cond_0

    .end local v1    # "nativeSize":I
    :goto_0
    return v1

    .restart local v1    # "nativeSize":I
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v0

    .local v0, "lowerSize":I
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v2

    .local v2, "upperSize":I
    add-int v1, v0, v2

    goto :goto_0
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->calculateMarshalSize(Landroid/util/Range;)I

    move-result v0

    return v0
.end method

.method public getNativeSize()I
    .locals 2

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    .local v0, "nestedSize":I
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    :goto_0
    return v1

    :cond_0
    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->NATIVE_SIZE_DYNAMIC:I

    goto :goto_0
.end method

.method public marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    .local p1, "value":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .local v1, "lower":Ljava/lang/Comparable;, "TT;"
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .local v2, "upper":Ljava/lang/Comparable;, "TT;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange<TT;>.MarshalerRange;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

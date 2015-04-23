.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mComponentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 2
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getComponentType()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    .local v0, "componentToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<*>;"
    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mNativeType:I

    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    return-void
.end method

.method private calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I
    .locals 2
    .param p2, "array"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TTElem;>;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TTElem;>;"
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "elem":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arrayDest"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "arrayDest":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V
    .locals 1
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TElem:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TTElem;>;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TTElem;>;"
    invoke-static {p3, p4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public calculateMarshalSize(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v4}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v1

    .local v1, "elementSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .local v0, "arrayLength":I
    sget v4, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v1, v4, :cond_1

    mul-int v3, v1, v0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x0

    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v4, p1, v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->calculateElementMarshalSize(Landroid/hardware/camera2/marshal/Marshaler;Ljava/lang/Object;I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getNativeSize()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-direct {p0, v2, p2, p1, v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->marshalArrayElement(Landroid/hardware/camera2/marshal/Marshaler;Ljava/nio/ByteBuffer;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray<TT;>.MarshalerArray;"
    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v7}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v4

    .local v4, "elementSize":I
    sget v7, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v4, v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .local v6, "remaining":I
    div-int v2, v6, v4

    .local v2, "arraySize":I
    rem-int v7, v6, v4

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Arrays for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must be packed tighly into a multiple of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; but there are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    rem-int v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " left over bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "array":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v7, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "elem":Ljava/lang/Object;
    invoke-static {v0, v5, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "arraySize":I
    .end local v3    # "elem":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "remaining":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v7, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "elem":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "elem":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "arraySize":I
    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mComponentClass:Ljava/lang/Class;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->copyListToArray(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eqz v7, :cond_4

    # getter for: Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trailing bytes ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") left over after unpacking "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$MarshalerArray;->mClass:Ljava/lang/Class;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method

.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .prologue
    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Rect;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .local v2, "left":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .local v4, "top":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, "height":I
    add-int v3, v2, v5

    .local v3, "right":I
    add-int v0, v4, v1

    .local v0, "bottom":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect$MarshalerRect;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

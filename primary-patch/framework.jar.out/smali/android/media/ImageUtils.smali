.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 6
    .param p0, "srcBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOffset"    # I
    .param p2, "dstBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "dstOffset"    # I
    .param p4, "srcByteCount"    # I

    .prologue
    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .locals 5
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "planeIdx"    # I

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid image format %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    if-nez p1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :sswitch_1
    if-nez p1, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_2
        0x100 -> :sswitch_2
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "numImages"    # I

    .prologue
    sparse-switch p2, :sswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid format specified %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .local v0, "estimatedBytePerPixel":D
    :goto_0
    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_2
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_4
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    .end local v0    # "estimatedBytePerPixel":D
    :sswitch_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .restart local v0    # "estimatedBytePerPixel":D
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x14 -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x25 -> :sswitch_2
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_4
        0x32315659 -> :sswitch_3
        0x44363159 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 5
    .param p0, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid format specified %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const/4 v0, 0x3

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0x14 -> :sswitch_1
        0x20 -> :sswitch_1
        0x22 -> :sswitch_3
        0x23 -> :sswitch_0
        0x25 -> :sswitch_1
        0x100 -> :sswitch_1
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 21
    .param p0, "src"    # Landroid/media/Image;
    .param p1, "dst"    # Landroid/media/Image;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Images should be non-null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Src and dst images should have the same format"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "PRIVATE format images are not copyable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/media/ImageWriter;

    move/from16 v18, v0

    if-nez v18, :cond_5

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    new-instance v17, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    .local v17, "srcSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    .local v6, "dstSize":Landroid/util/Size;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "source image size "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is different"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "destination image size "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    .local v14, "srcPlanes":[Landroid/media/Image$Plane;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .local v4, "dstPlanes":[Landroid/media/Image$Plane;
    const/4 v11, 0x0

    .local v11, "srcBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "dstBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .local v16, "srcRowStride":I
    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .local v5, "dstRowStride":I
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    if-nez v18, :cond_8

    :cond_7
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_8
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v19, v4, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Source plane image pixel stride "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " must be same as destination image pixel stride "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_9
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    .local v15, "srcPos":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move/from16 v0, v16

    if-ne v0, v5, :cond_b

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_a
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .local v13, "srcOffset":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .local v3, "dstOffset":I
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v7

    .local v7, "effectivePlaneSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v18

    aget-object v19, v14, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    mul-int v12, v18, v19

    .local v12, "srcByteCount":I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    sub-int v9, v18, v13

    .local v9, "remainingBytes":I
    if-le v12, v9, :cond_c

    move v12, v9

    .end local v9    # "remainingBytes":I
    :cond_c
    invoke-static {v11, v13, v2, v3, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int v13, v13, v16

    add-int/2addr v3, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v3    # "dstOffset":I
    .end local v5    # "dstRowStride":I
    .end local v7    # "effectivePlaneSize":Landroid/util/Size;
    .end local v10    # "row":I
    .end local v12    # "srcByteCount":I
    .end local v13    # "srcOffset":I
    .end local v15    # "srcPos":I
    .end local v16    # "srcRowStride":I
    :cond_d
    return-void
.end method

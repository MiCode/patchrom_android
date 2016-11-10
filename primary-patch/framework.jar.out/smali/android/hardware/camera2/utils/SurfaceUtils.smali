.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 11
    .param p2, "config"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v8

    if-le v8, v9, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Output target surface list must not be null and the size must be 1 or 2"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v1, 0x0

    .local v1, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .local v6, "surface":Landroid/view/Surface;
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    .local v7, "surfaceSize":Landroid/util/Size;
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Surface size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not part of the high speed supported size list "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "surface":Landroid/view/Surface;
    .end local v7    # "surfaceSize":Landroid/util/Size;
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v0

    .local v0, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fps range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in the"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " request is not a supported high speed fps range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .end local v0    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "surface":Landroid/view/Surface;
    .restart local v7    # "surfaceSize":Landroid/util/Size;
    :cond_5
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "This output surface is neither preview nor hardware video encoding surface"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "This output surface can not be both preview and hardware video encoding surface"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v6    # "surface":Landroid/view/Surface;
    .end local v7    # "surfaceSize":Landroid/util/Size;
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v8

    if-ne v8, v9, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v3

    .local v3, "isFirstSurfacePreview":Z
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v4

    .local v4, "isSecondSurfacePreview":Z
    if-ne v3, v4, :cond_8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The 2 output surfaces must have different type"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v3    # "isFirstSurfacePreview":Z
    .end local v4    # "isSecondSurfacePreview":Z
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    :cond_8
    return-void
.end method

.method private static checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .locals 6
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v1, 0x1

    .local v1, "HAL_FORMAT_RGB_START":I
    const/4 v0, 0x5

    .local v0, "HAL_FORMAT_RGB_END":I
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    .local v2, "surfaceFormat":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    const/16 v2, 0x22

    :cond_0
    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface format("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for preview or hardware video encoding!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void
.end method

.method public static getSurfaceDataspace(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceDataspace(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSurfaceFormat(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "output"    # Landroid/view/Surface;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isVideoEncoderConsumer(Landroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceForPreview(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isPreviewConsumer(Landroid/view/Surface;)Z

    move-result v0

    return v0
.end method

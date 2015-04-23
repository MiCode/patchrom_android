.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final DURATION_20FPS_NS:J = 0x2faf080L

.field private static final DURATION_MIN_FRAME:I = 0x0

.field private static final DURATION_STALL:I = 0x1

.field private static final HAL_DATASPACE_DEPTH:I = 0x1000

.field private static final HAL_DATASPACE_JFIF:I = 0x101

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputFormats:Landroid/util/SparseIntArray;

.field private final mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final mListHighResolution:Z

.field private final mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mOutputFormats:Landroid/util/SparseIntArray;

.field private final mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 24
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p8, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p9, "listHighResolution"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    if-nez p1, :cond_1

    const-string v20, "depthConfigurations"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    :goto_0
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez p4, :cond_2

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    :goto_1
    if-nez p7, :cond_3

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .local v4, "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v4    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_3
    if-ge v14, v15, :cond_7

    aget-object v6, v4, v14

    .local v6, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v10

    .local v10, "fmt":I
    const/16 v17, 0x0

    .local v17, "map":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    const-wide/16 v8, 0x0

    .local v8, "duration":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .local v5, "arr$":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v7, v5, v13

    .local v7, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v10, :cond_4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v20

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v20

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v8

    .end local v5    # "arr$":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v7    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_0
    const-wide/32 v20, 0x2faf080

    cmp-long v20, v8, v20

    if-gtz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    .end local v8    # "duration":J
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_3

    .end local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v10    # "fmt":I
    .end local v14    # "i$":I
    .end local v17    # "map":Landroid/util/SparseIntArray;
    :cond_1
    const-string v20, "configurations"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v20, "minFrameDurations"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v20, "stallDurations"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto/16 :goto_0

    :cond_2
    const-string v20, "depthConfigurations"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    const-string v20, "depthMinFrameDurations"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const-string v20, "depthStallDurations"

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto/16 :goto_1

    :cond_3
    const-string v20, "highSpeedVideoConfigurations"

    move-object/from16 v0, p7

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto/16 :goto_2

    .restart local v5    # "arr$":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v7    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v8    # "duration":J
    .restart local v10    # "fmt":I
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "map":Landroid/util/SparseIntArray;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .end local v5    # "arr$":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v7    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    goto/16 :goto_5

    .end local v8    # "duration":J
    .restart local v14    # "i$":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    goto/16 :goto_5

    .end local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v10    # "fmt":I
    .end local v17    # "map":Landroid/util/SparseIntArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .restart local v4    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v15, v4

    .restart local v15    # "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_6
    if-ge v13, v15, :cond_9

    aget-object v6, v4, v13

    .restart local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v20

    if-nez v20, :cond_8

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseIntArray;->get(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7

    .end local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_9
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v20

    if-gez v20, :cond_a

    new-instance v20, Ljava/lang/AssertionError;

    const-string v21, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    invoke-direct/range {v20 .. v21}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v20

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .local v4, "arr$":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    array-length v15, v4

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v15, :cond_d

    aget-object v6, v4, v13

    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v18

    .local v18, "size":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v11

    .local v11, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .local v12, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v12, :cond_b

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .local v19, "sizeCount":Ljava/lang/Integer;
    if-nez v19, :cond_c

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v11    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v18    # "size":Landroid/util/Size;
    .end local v19    # "sizeCount":Ljava/lang/Integer;
    :cond_d
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    return-void
.end method

.method private appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 22
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v18, "HighResolutionOutputs("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v7

    .local v7, "formats":[I
    move-object v4, v7

    .local v4, "arr$":[I
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget v6, v4, v9

    .local v6, "format":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v15

    .local v15, "sizes":[Landroid/util/Size;
    if-nez v15, :cond_1

    .end local v9    # "i$":I
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_0

    :cond_1
    move-object v5, v15

    .local v5, "arr$":[Landroid/util/Size;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_1
    if-ge v8, v11, :cond_0

    aget-object v14, v5, v8

    .local v14, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v12

    .local v12, "minFrameDuration":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v16

    .local v16, "stallDuration":J
    const-string v18, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v5    # "arr$":[Landroid/util/Size;
    .end local v6    # "format":I
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "minFrameDuration":J
    .end local v14    # "size":Landroid/util/Size;
    .end local v15    # "sizes":[Landroid/util/Size;
    .end local v16    # "stallDuration":J
    .restart local v9    # "i$":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const-string v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v10, "HighSpeedVideoConfigurations("

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v9

    .local v9, "sizes":[Landroid/util/Size;
    move-object v0, v9

    .local v0, "arr$":[Landroid/util/Size;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/util/Size;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v8, v0, v3

    .local v8, "size":Landroid/util/Size;
    invoke-virtual {p0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v7

    .local v7, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v1, v7

    .local v1, "arr$":[Landroid/util/Range;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .local v6, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string v10, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .end local v1    # "arr$":[Landroid/util/Range;
    .end local v5    # "len$":I
    .end local v7    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v8    # "size":Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v10, ")"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v10, "Inputs("

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v3

    .local v3, "formats":[I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget v2, v0, v5

    .local v2, "format":I
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .local v9, "sizes":[Landroid/util/Size;
    move-object v1, v9

    .local v1, "arr$":[Landroid/util/Size;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v8, v1, v4

    .local v8, "size":Landroid/util/Size;
    const-string v10, "[w:%d, h:%d, format:%s(%d)], "

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v8    # "size":Landroid/util/Size;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .end local v1    # "arr$":[Landroid/util/Size;
    .end local v2    # "format":I
    .end local v7    # "len$":I
    .end local v9    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v10, ")"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 22
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v18, "Outputs("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v7

    .local v7, "formats":[I
    move-object v4, v7

    .local v4, "arr$":[I
    array-length v10, v4

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v4    # "arr$":[I
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget v6, v4, v9

    .local v6, "format":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v15

    .local v15, "sizes":[Landroid/util/Size;
    move-object v5, v15

    .local v5, "arr$":[Landroid/util/Size;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_1
    if-ge v8, v11, :cond_0

    aget-object v14, v5, v8

    .local v14, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v12

    .local v12, "minFrameDuration":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v16

    .local v16, "stallDuration":J
    const-string v18, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v12    # "minFrameDuration":J
    .end local v14    # "size":Landroid/util/Size;
    .end local v16    # "stallDuration":J
    :cond_0
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_0

    .end local v5    # "arr$":[Landroid/util/Size;
    .end local v6    # "format":I
    .end local v11    # "len$":I
    .end local v15    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v4

    .local v4, "inputFormats":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget v3, v0, v2

    .local v3, "inputFormat":I
    const-string v7, "[in:%s(%d), out:"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v6

    .local v6, "outputFormats":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_1

    const-string v7, "%s(%d)"

    new-array v8, v12, [Ljava/lang/Object;

    aget v9, v6, v1

    invoke-direct {p0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    aget v9, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "], "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "inputFormat":I
    .end local v6    # "outputFormats":[I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static checkArgumentFormat(I)I
    .locals 5
    .param p0, "format"    # I

    .prologue
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return p0
.end method

.method static checkArgumentFormatInternal(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result p0

    .end local p0    # "format":I
    :sswitch_0
    return p0

    .restart local p0    # "format":I
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x100 -> :sswitch_1
        0x20363159 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkArgumentFormatSupported(IZ)I
    .locals 7
    .param p1, "format"    # I
    .param p2, "output"    # Z

    .prologue
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .local v0, "internalDataspace":I
    if-eqz p2, :cond_3

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "format %x is not supported by this stream configuration map"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_0
.end method

.method static depthFormatToPublic(I)I
    .locals 3
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x101

    :goto_0
    return v0

    :sswitch_1
    const v0, 0x44363159

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x100 -> :sswitch_2
        0x20363159 -> :sswitch_1
    .end sparse-switch
.end method

.method private formatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "YV12"

    goto :goto_0

    :sswitch_1
    const-string v0, "YUV_420_888"

    goto :goto_0

    :sswitch_2
    const-string v0, "NV21"

    goto :goto_0

    :sswitch_3
    const-string v0, "NV16"

    goto :goto_0

    :sswitch_4
    const-string v0, "RGB_565"

    goto :goto_0

    :sswitch_5
    const-string v0, "RGBA_8888"

    goto :goto_0

    :sswitch_6
    const-string v0, "RGBX_8888"

    goto :goto_0

    :sswitch_7
    const-string v0, "RGB_888"

    goto :goto_0

    :sswitch_8
    const-string v0, "JPEG"

    goto :goto_0

    :sswitch_9
    const-string v0, "YUY2"

    goto :goto_0

    :sswitch_a
    const-string v0, "Y8"

    goto :goto_0

    :sswitch_b
    const-string v0, "Y16"

    goto :goto_0

    :sswitch_c
    const-string v0, "RAW_SENSOR"

    goto :goto_0

    :sswitch_d
    const-string v0, "RAW10"

    goto :goto_0

    :sswitch_e
    const-string v0, "DEPTH16"

    goto :goto_0

    :sswitch_f
    const-string v0, "DEPTH_POINT_CLOUD"

    goto :goto_0

    :sswitch_10
    const-string v0, "PRIVATE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x14 -> :sswitch_9
        0x20 -> :sswitch_c
        0x22 -> :sswitch_10
        0x23 -> :sswitch_1
        0x25 -> :sswitch_d
        0x100 -> :sswitch_8
        0x101 -> :sswitch_f
        0x20203859 -> :sswitch_a
        0x20363159 -> :sswitch_b
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_e
    .end sparse-switch
.end method

.method private getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 2
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    .prologue
    const/16 v0, 0x1000

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration was invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "output"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method private getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 8
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "size was not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object v2

    .local v2, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object v0, v2

    .local v0, "arr$":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .local v1, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v6

    .end local v1    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_1
    return-wide v6

    .restart local v1    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method private getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 20
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    .prologue
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .local v9, "formatsMap":Landroid/util/SparseIntArray;
    :goto_0
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    .local v16, "sizesCount":I
    if-eqz p3, :cond_0

    const/16 v17, 0x1000

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz v16, :cond_2

    :cond_1
    if-eqz p3, :cond_6

    const/16 v17, 0x1000

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    if-nez v17, :cond_6

    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "format not available"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v9    # "formatsMap":Landroid/util/SparseIntArray;
    .end local v16    # "sizesCount":I
    :cond_3
    const/16 v17, 0x1000

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_0

    .restart local v9    # "formatsMap":Landroid/util/SparseIntArray;
    .restart local v16    # "sizesCount":I
    :cond_6
    move/from16 v0, v16

    new-array v15, v0, [Landroid/util/Size;

    .local v15, "sizes":[Landroid/util/Size;
    const/4 v13, 0x0

    .local v13, "sizeIndex":I
    const/16 v17, 0x1000

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .local v4, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_1
    move-object v2, v4

    .local v2, "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v14, v13

    .end local v13    # "sizeIndex":I
    .local v14, "sizeIndex":I
    :goto_2
    if-ge v11, v12, :cond_c

    aget-object v3, v2, v11

    .local v3, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v8

    .local v8, "fmt":I
    move/from16 v0, p1

    if-ne v8, v0, :cond_e

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    if-eqz p3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const-wide/16 v6, 0x0

    .local v6, "duration":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v0

    aget-object v5, v17, v10

    .local v5, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v8, :cond_9

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v17

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v17

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v6

    .end local v5    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_7
    const-wide/32 v18, 0x2faf080

    cmp-long v17, v6, v18

    if-lez v17, :cond_a

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, p4

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    move v13, v14

    .end local v6    # "duration":J
    .end local v10    # "i":I
    .end local v14    # "sizeIndex":I
    .restart local v13    # "sizeIndex":I
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move v14, v13

    .end local v13    # "sizeIndex":I
    .restart local v14    # "sizeIndex":I
    goto :goto_2

    .end local v2    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v4    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v8    # "fmt":I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "sizeIndex":I
    .restart local v13    # "sizeIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto/16 :goto_1

    .end local v13    # "sizeIndex":I
    .restart local v2    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v4    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v5    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v6    # "duration":J
    .restart local v8    # "fmt":I
    .restart local v10    # "i":I
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v14    # "sizeIndex":I
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v5    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    .end local v6    # "duration":J
    .end local v10    # "i":I
    :cond_b
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "sizeIndex":I
    .restart local v13    # "sizeIndex":I
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v17

    aput-object v17, v15, v14

    goto :goto_5

    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v8    # "fmt":I
    .end local v13    # "sizeIndex":I
    .restart local v14    # "sizeIndex":I
    :cond_c
    move/from16 v0, v16

    if-eq v14, v0, :cond_d

    new-instance v17, Ljava/lang/AssertionError;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Too few sizes (expected "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", actual "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    :cond_d
    return-object v15

    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v8    # "fmt":I
    :cond_e
    move v13, v14

    .end local v14    # "sizeIndex":I
    .restart local v13    # "sizeIndex":I
    goto :goto_5
.end method

.method private getPublicFormatCount(Z)I
    .locals 3
    .param p1, "output"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .local v1, "size":I
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    return v1
.end method

.method private getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 4
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    .prologue
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v2

    .local v2, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .local v0, "dataspace":I
    invoke-direct {p0, v2, v0, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v3

    .end local v0    # "dataspace":I
    .end local v2    # "internalFormat":I
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPublicFormats(Z)[I
    .locals 9
    .param p1, "output"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v6

    new-array v1, v6, [I

    .local v1, "formats":[I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v5

    .local v5, "map":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .local v0, "format":I
    const/16 v6, 0x24

    if-eq v0, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v6

    aput v6, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "format":I
    :cond_1
    if-eqz p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    :cond_2
    array-length v6, v1

    if-eq v6, v2, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too few formats "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_3
    return-object v1
.end method

.method static imageFormatToDataspace(I)I
    .locals 1
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x101

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1000

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToInternal(I)I
    .locals 0
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    .end local p0    # "format":I
    :goto_0
    return p0

    .restart local p0    # "format":I
    :sswitch_0
    const/16 p0, 0x21

    goto :goto_0

    :sswitch_1
    const p0, 0x20363159

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static imageFormatToInternal([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .local v0, "i":I
    :cond_0
    return-object p0

    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static imageFormatToPublic(I)I
    .locals 2
    .param p0, "format"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    .end local p0    # "format":I
    :goto_0
    return p0

    .restart local p0    # "format":I
    :sswitch_0
    const/16 p0, 0x100

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToPublic([I)[I
    .locals 2
    .param p0, "formats"    # [I

    .prologue
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .local v0, "i":I
    :cond_0
    return-object p0

    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    const-string v1, "klass must not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/media/ImageReader;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Landroid/media/MediaRecorder;

    if-eq p0, v1, :cond_0

    const-class v1, Landroid/media/MediaCodec;

    if-eq p0, v1, :cond_0

    const-class v1, Landroid/renderscript/Allocation;

    if-eq p0, v1, :cond_0

    const-class v1, Landroid/view/SurfaceHolder;

    if-eq p0, v1, :cond_0

    const-class v1, Landroid/graphics/SurfaceTexture;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    .prologue
    const/16 v2, 0x1000

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .local v0, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    if-ne v2, p1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    return v2

    .end local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .restart local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    instance-of v3, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .local v0, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    goto :goto_0
.end method

.method public getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    return-object v1
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 12
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v8, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "fpsRangeCount":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Size %s does not support high speed video recording"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v3, v8, [Landroid/util/Range;

    .local v3, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .local v0, "arr$":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v1, v0, v6

    .local v1, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    aput-object v8, v3, v5

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .end local v1    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v3

    .restart local v1    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    return-object v1
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v8, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "sizeCount":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "FpsRange %s does not support high speed video recording"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v7, v8, [Landroid/util/Size;

    .local v7, "sizes":[Landroid/util/Size;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .local v0, "arr$":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .local v1, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v1}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    aput-object v8, v7, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .end local v1    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v7

    .restart local v1    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public final getInputFormats()[I
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getInputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputFormats()[I
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    const-string v0, "size must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputStallDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getValidOutputFormatsForInput(I)[I
    .locals 1
    .param p1, "inputFormat"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOutputSupportedFor(I)Z
    .locals 5
    .param p1, "format"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v0

    .local v0, "dataspace":I
    const/16 v4, 0x1000

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v9, 0x1

    const-string v10, "surface must not be null"

    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    .local v8, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .local v7, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v6

    .local v6, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v4

    .local v4, "isFlexible":Z
    if-lt v7, v9, :cond_0

    const/4 v10, 0x5

    if-gt v7, v10, :cond_0

    const/16 v7, 0x22

    :cond_0
    const/16 v10, 0x1000

    if-eq v6, v10, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .local v2, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    move-object v0, v2

    .local v0, "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .local v1, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v10

    if-ne v10, v7, :cond_4

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .end local v1    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_1
    :goto_2
    return v9

    .end local v0    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v2    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_0

    .restart local v0    # "arr$":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v2    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    const/16 v11, 0x780

    if-le v10, v11, :cond_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

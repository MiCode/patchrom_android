.class public Landroid/hardware/camera2/legacy/LegacyMetadataMapper;
.super Ljava/lang/Object;
.source "LegacyMetadataMapper.java"


# static fields
.field private static final APPROXIMATE_CAPTURE_DELAY_MS:J = 0xc8L

.field private static final APPROXIMATE_JPEG_ENCODE_TIME_MS:J = 0x258L

.field private static final APPROXIMATE_SENSOR_AREA_PX:J = 0x800000L

.field private static final DEBUG:Z = false

.field public static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_RGBA_8888:I = 0x1

.field private static final LENS_INFO_MINIMUM_FOCUS_DISTANCE_FIXED_FOCUS:F = 0.0f

.field static final LIE_ABOUT_AE_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AE_STATE:Z = false

.field static final LIE_ABOUT_AF:Z = false

.field static final LIE_ABOUT_AF_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AWB:Z = false

.field static final LIE_ABOUT_AWB_STATE:Z = false

.field private static final NS_PER_MS:J = 0xf4240L

.field private static final PREVIEW_ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final REQUEST_MAX_NUM_INPUT_STREAMS_COUNT:I = 0x0

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC:I = 0x3

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC_STALL:I = 0x1

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_RAW:I = 0x0

.field private static final REQUEST_PIPELINE_MAX_DEPTH_HAL1:I = 0x3

.field private static final REQUEST_PIPELINE_MAX_DEPTH_OURS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LegacyMetadataMapper"

.field static final UNKNOWN_MODE:I = -0x1

.field private static final sAllowedTemplates:[I

.field private static final sEffectModes:[I

.field private static final sLegacyEffectMode:[Ljava/lang/String;

.field private static final sLegacySceneModes:[Ljava/lang/String;

.field private static final sSceneModes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v5

    const-string v1, "action"

    aput-object v1, v0, v6

    const-string v1, "portrait"

    aput-object v1, v0, v7

    const-string v1, "landscape"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "night"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "night-portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "theatre"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "beach"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snow"

    aput-object v2, v0, v1

    const-string v1, "sunset"

    aput-object v1, v0, v4

    const/16 v1, 0xa

    const-string v2, "steadyphoto"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fireworks"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sports"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "candlelight"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "barcode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hdr"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v5

    const-string v1, "mono"

    aput-object v1, v0, v6

    const-string v1, "negative"

    aput-object v1, v0, v7

    const-string v1, "solarize"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "sepia"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "posterize"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "whiteboard"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "blackboard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "aqua"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V
    .locals 6
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .local v2, "size":Landroid/hardware/Camera$Size;
    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .local v0, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method

.method private static calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J
    .locals 10
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const-wide/32 v2, 0xbebc200

    .local v2, "baseDuration":J
    iget v6, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v6, v6

    iget v8, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v8, v8

    mul-long v0, v6, v8

    .local v0, "area":J
    const-wide/16 v4, 0x47

    .local v4, "stallPerArea":J
    mul-long v6, v0, v4

    add-long/2addr v6, v2

    return-wide v6
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "legacyFps":[I
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    return-object v0
.end method

.method static convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "No focus modes supported; API1 bug"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    .local v1, "param":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "defaultMode":Ljava/lang/String;
    const-string v2, "LegacyMetadataMapper"

    const-string v3, "convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    .end local v0    # "defaultMode":Ljava/lang/String;
    :pswitch_0
    const-string v1, "auto"

    goto :goto_1

    :pswitch_1
    const-string v1, "continuous-picture"

    goto :goto_1

    :pswitch_2
    const-string v1, "continuous-video"

    goto :goto_1

    :pswitch_3
    const-string v1, "edof"

    goto :goto_1

    :pswitch_4
    const-string v1, "macro"

    goto :goto_1

    :pswitch_5
    const-string v2, "fixed"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "fixed"

    goto :goto_1

    :cond_3
    const-string v1, "infinity"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAntiBandingMode(Ljava/lang/String;)I
    .locals 6
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string v1, "LegacyMetadataMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAntiBandingMode - Unknown antibanding mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const-string v5, "off"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "50hz"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "60hz"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string v5, "auto"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ad6f -> :sswitch_0
        0x18d8ed -> :sswitch_1
        0x194d4c -> :sswitch_2
        0x2dddaf -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static convertAntiBandingModeOrDefault(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v0

    .local v0, "antiBandingMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "antiBandingMode":I
    :cond_0
    return v0
.end method

.method static convertEffectModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method static convertEffectModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 0
    .param p0, "request"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    return-void
.end method

.method static convertSceneModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method static convertSceneModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string v1, "auto"

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    const-string v2, "parameters must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "info must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    .local v1, "paramStr":Ljava/lang/String;
    new-instance v0, Landroid/hardware/CameraInfo;

    invoke-direct {v0}, Landroid/hardware/CameraInfo;-><init>()V

    .local v0, "outerInfo":Landroid/hardware/CameraInfo;
    iput-object p1, v0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    return-object v2
.end method

.method public static createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4
    .param p0, "parameters"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/hardware/CameraInfo;

    .prologue
    const-string v2, "parameters must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "info must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    const-string v3, "info.info must not be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .local v0, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V

    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v2
.end method

.method public static createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 21
    .param p0, "c"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "templateId"    # I

    .prologue
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    move/from16 v0, p1

    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "templateId out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v16, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v16 .. v16}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .local v16, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .local v7, "activeArray":Landroid/graphics/Rect;
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v20, 0x0

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v1, v8, v20

    .local v8, "activeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible; keep in sync with sAllowedTemplates"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    const/4 v13, 0x1

    .local v13, "captureIntent":I
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .local v17, "minimumFocusDistance":Ljava/lang/Float;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/4 v9, 0x0

    .local v9, "afMode":I
    :cond_1
    :goto_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/util/Range;

    .local v11, "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    aget-object v12, v11, v1

    .local v12, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v10, v11

    .local v10, "arr$":[Landroid/util/Range;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v15, :cond_8

    aget-object v18, v10, v14

    .local v18, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_7

    move-object/from16 v12, v18

    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v9    # "afMode":I
    .end local v10    # "arr$":[Landroid/util/Range;
    .end local v11    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v13    # "captureIntent":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "minimumFocusDistance":Ljava/lang/Float;
    .end local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v13, 0x2

    .restart local v13    # "captureIntent":I
    goto :goto_0

    .end local v13    # "captureIntent":I
    :pswitch_2
    const/4 v13, 0x3

    .restart local v13    # "captureIntent":I
    goto :goto_0

    .restart local v17    # "minimumFocusDistance":Ljava/lang/Float;
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "afMode":I
    const/4 v1, 0x3

    move/from16 v0, p1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    :cond_4
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    :cond_6
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    .restart local v10    # "arr$":[Landroid/util/Range;
    .restart local v11    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v12    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_2

    move-object/from16 v12, v18

    goto :goto_3

    .end local v18    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/util/Size;

    .local v19, "sizes":[Landroid/util/Size;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v19

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_9

    const/4 v1, 0x1

    aget-object v1, v19, v1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-object v16

    :cond_9
    const/4 v1, 0x0

    aget-object v1, v19, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .local p0, "keys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .local p0, "keys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .local p0, "keys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    array-length v2, p0

    new-array v1, v2, [I

    .local v1, "tags":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "i"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private static mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 30
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v6

    .local v6, "antiBandingModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .local v20, "modes":[I
    const/4 v15, 0x0

    .local v15, "j":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "mode":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    move-result v7

    .local v7, "convertedMode":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "j":I
    .local v16, "j":I
    aput v7, v20, v15

    move/from16 v15, v16

    .end local v16    # "j":I
    .restart local v15    # "j":I
    goto :goto_0

    .end local v7    # "convertedMode":I
    .end local v19    # "mode":Ljava/lang/String;
    :cond_0
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "j":I
    .end local v20    # "modes":[I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v11

    .local v11, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v11, :cond_2

    new-instance v25, Ljava/lang/AssertionError;

    const-string v26, "Supported FPS ranges cannot be null."

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .end local v11    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_1
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_1

    .restart local v11    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v23

    .local v23, "rangesSize":I
    if-gtz v23, :cond_3

    new-instance v25, Ljava/lang/AssertionError;

    const-string v26, "At least one FPS range must be supported."

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    :cond_3
    move/from16 v0, v23

    new-array v0, v0, [Landroid/util/Range;

    move-object/from16 v22, v0

    .local v22, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    .local v21, "r":[I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    const/16 v25, 0x0

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    aget v26, v21, v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v25

    aput-object v25, v22, v12

    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2

    .end local v21    # "r":[I
    :cond_4
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v10

    .local v10, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v9, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "off"

    aput-object v26, v9, v25

    const/16 v25, 0x1

    const-string v26, "auto"

    aput-object v26, v9, v25

    const/16 v25, 0x2

    const-string v26, "on"

    aput-object v26, v9, v25

    const/16 v25, 0x3

    const-string v26, "red-eye"

    aput-object v26, v9, v25

    const/16 v25, 0x4

    const-string v26, "torch"

    aput-object v26, v9, v25

    .local v9, "flashModeStrings":[Ljava/lang/String;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .local v8, "flashModeInts":[I
    invoke-static {v10, v9, v8}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v4

    .local v4, "aeAvail":[I
    if-eqz v4, :cond_5

    array-length v0, v4

    move/from16 v25, v0

    if-nez v25, :cond_6

    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v4, v0, [I

    .end local v4    # "aeAvail":[I
    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v4, v25

    .restart local v4    # "aeAvail":[I
    :cond_6
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v18

    .local v18, "min":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v17

    .local v17, "max":I
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v24

    .local v24, "step":F
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v24 .. v24}, Landroid/hardware/camera2/utils/ParamsUtils;->createRational(F)Landroid/util/Rational;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v5

    .local v5, "aeLockAvailable":Z
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private static mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v2, v6

    const-string v4, "continuous-picture"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "continuous-video"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "edof"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "infinity"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "macro"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "fixed"

    aput-object v5, v2, v4

    .local v2, "focusModeStrings":[Ljava/lang/String;
    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .local v1, "focusModeInts":[I
    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .local v0, "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "LegacyMetadataMapper"

    const-string v5, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x3
        0x5
        0x0
        0x2
        0x0
    .end array-data
.end method

.method private static mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    .local v4, "wbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v3, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "auto"

    aput-object v6, v3, v5

    const-string v5, "incandescent"

    aput-object v5, v3, v7

    const/4 v5, 0x2

    const-string v6, "fluorescent"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "warm-fluorescent"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "daylight"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "cloudy-daylight"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "twilight"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "shade"

    aput-object v6, v3, v5

    .local v3, "wbModeStrings":[Ljava/lang/String;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .local v2, "wbModeInts":[I
    invoke-static {v4, v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .local v0, "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "LegacyMetadataMapper"

    const-string v6, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    .local v1, "awbLockAvailable":Z
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private static mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 15
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    new-array v8, v11, [I

    fill-array-data v8, :array_0

    .local v8, "stabModes":[I
    :goto_0
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v11, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, "AE":I
    const/4 v2, 0x1

    .local v2, "AWB":I
    const/4 v1, 0x2

    .local v1, "AF":I
    const/4 v11, 0x3

    new-array v5, v11, [I

    .local v5, "maxRegions":[I
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v12

    aput v12, v5, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v5, v11

    const/4 v11, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v12

    aput v12, v5, v11

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v11, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    .local v3, "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_7

    const/4 v11, 0x0

    new-array v9, v11, [I

    .local v9, "supportedEffectModes":[I
    :goto_1
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v11, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v4

    .local v4, "maxNumDetectedFaces":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v7

    .local v7, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    invoke-static {v7, v11, v12}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v10

    .local v10, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "auto"

    if-ne v11, v12, :cond_0

    const/4 v10, 0x0

    :cond_0
    const/4 v6, 0x1

    .local v6, "sceneModeSupported":Z
    if-nez v10, :cond_1

    if-nez v4, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-eqz v6, :cond_8

    if-nez v10, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    if-lez v4, :cond_3

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    new-instance v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_5
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v10}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :goto_2
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v6, :cond_9

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    :goto_3
    invoke-virtual {p0, v12, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    .end local v0    # "AE":I
    .end local v1    # "AF":I
    .end local v2    # "AWB":I
    .end local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "maxNumDetectedFaces":I
    .end local v5    # "maxRegions":[I
    .end local v6    # "sceneModeSupported":Z
    .end local v7    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "stabModes":[I
    .end local v9    # "supportedEffectModes":[I
    .end local v10    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    const/4 v11, 0x1

    new-array v8, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v8, v11

    goto/16 :goto_0

    .restart local v0    # "AE":I
    .restart local v1    # "AF":I
    .restart local v2    # "AWB":I
    .restart local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "maxRegions":[I
    .restart local v8    # "stabModes":[I
    :cond_7
    sget-object v11, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    invoke-static {v3, v11, v12}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    move-result-object v9

    goto :goto_1

    .restart local v4    # "maxNumDetectedFaces":I
    .restart local v6    # "sceneModeSupported":Z
    .restart local v7    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "supportedEffectModes":[I
    .restart local v10    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v11, v13

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v0, 0x0

    .local v0, "flashAvailable":Z
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ListUtils;->listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    .local v1, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;

    move-result-object v0

    .local v0, "sizes":[Landroid/util/Size;
    new-instance v2, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .end local v0    # "sizes":[Landroid/util/Size;
    :cond_0
    return-void
.end method

.method private static mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-string v1, "fixed"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v2

    aput v2, v0, v1

    .local v0, "focalLengths":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 12
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x1

    new-array v5, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v5, v10

    .local v5, "capabilities":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v10, 0x24

    new-array v2, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x17

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x18

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x19

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1a

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1b

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1c

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1d

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1e

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x1f

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x20

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x21

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x22

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    const/16 v10, 0x23

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v11, v2, v10

    .local v2, "availableKeys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v6, "characteristicsKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v10

    invoke-virtual {p0, v11, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v10, 0x1b

    new-array v7, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x17

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x18

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x19

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    const/16 v10, 0x1a

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v11, v7, v10

    .local v7, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "availableKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    if-lez v10, :cond_1

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v10

    if-lez v10, :cond_2

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    .local v3, "availableRequestKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/16 v10, 0x17

    new-array v8, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v10, 0x0

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x2

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x3

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x4

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x5

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x6

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/4 v10, 0x7

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x8

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x9

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xa

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xb

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xc

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xd

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xe

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0xf

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x10

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x11

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x12

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x13

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x14

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x15

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    const/16 v10, 0x16

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    aput-object v11, v8, v10

    .local v8, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v10

    if-lez v10, :cond_3

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v10

    if-lez v10, :cond_4

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    .local v4, "availableResultKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    const/4 v10, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    .local v9, "outputStreams":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v10, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x1
    .end array-data
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 25
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "availableStreamConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .local v22, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v16

    .local v16, "jpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v8, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v8}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    .local v8, "areaComparator":Landroid/hardware/camera2/legacy/SizeAreaComparator;
    move-object/from16 v0, v22

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v20

    .local v20, "maxJpegSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, v20

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float v15, v2, v3

    .local v15, "jpegAspectRatio":F
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, "index":I
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    .local v24, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, v24

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float v21, v2, v3

    .local v21, "previewAspectRatio":F
    sub-float v2, v15, v21

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .end local v14    # "index":I
    .end local v21    # "previewAspectRatio":F
    .end local v24    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LegacyMetadataMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v2, 0x22

    move-object/from16 v0, v22

    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    const/16 v2, 0x23

    move-object/from16 v0, v22

    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "format":I
    invoke-static {v10}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x11

    if-eq v10, v2, :cond_2

    move-object/from16 v0, v22

    invoke-static {v9, v10, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    goto :goto_1

    .end local v10    # "format":I
    :cond_3
    const/16 v2, 0x21

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v9, v2, v3}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v17, v0

    .local v17, "jpegStalls":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v11, 0x0

    .local v11, "i":I
    const-wide/16 v18, -0x1

    .local v18, "longestStallDuration":J
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/Camera$Size;

    .local v23, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {v23 .. v23}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J

    move-result-wide v6

    .local v6, "stallDuration":J
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v3, 0x21

    move-object/from16 v0, v23

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    aput-object v2, v17, v11

    cmp-long v2, v18, v6

    if-gez v2, :cond_4

    move-wide/from16 v18, v6

    :cond_4
    move v11, v12

    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .end local v6    # "stallDuration":J
    .end local v23    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 14
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v7

    .local v7, "largestJpegSize":Landroid/util/Size;
    invoke-static {v7}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "activeArrayRect":Landroid/graphics/Rect;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v9, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v1

    .local v1, "focalLength":F
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double v2, v10, v12

    .local v2, "angleHor":D
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double v4, v10, v12

    .local v4, "angleVer":D
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v6, v10

    .local v6, "height":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v1

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    double-to-float v8, v10

    .local v8, "width":F
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v10, Landroid/util/SizeF;

    invoke-direct {v10, v8, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .local v0, "fdModes":[I
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void

    .end local v0    # "fdModes":[I
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v2, v0, v2

    .restart local v0    # "fdModes":[I
    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    return-void
.end method

.class public Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mFaceDetectEnabled:Z

.field private mFaceDetectReporting:Z

.field private mFaceDetectScenePriority:Z

.field private final mFaceDetectSupported:Z

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFacesPrev:[Landroid/hardware/Camera$Face;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LegacyFaceDetectMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    const-string v0, "characteristics must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .prologue
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    return v0
.end method

.method static synthetic access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 20
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    const-string v18, "result must not be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "legacyRequest must not be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const/4 v9, 0x1

    .local v9, "fdMode":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    .local v8, "faces":[Landroid/hardware/Camera$Face;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .local v10, "fdScenePriority":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    .local v15, "previousFaces":[Landroid/hardware/Camera$Face;
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v16, v0

    .local v16, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .local v14, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .local v13, "params":Landroid/hardware/Camera$Parameters;
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, "activeArray":Landroid/graphics/Rect;
    sget-object v18, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v14, v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v17

    .local v17, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    if-eqz v8, :cond_3

    move-object v4, v8

    .local v4, "arr$":[Landroid/hardware/Camera$Face;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v7, v4, v11

    .local v7, "face":Landroid/hardware/Camera$Face;
    if-eqz v7, :cond_2

    move-object/from16 v0, v17

    invoke-static {v7, v3, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v3    # "activeArray":Landroid/graphics/Rect;
    .end local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .end local v7    # "face":Landroid/hardware/Camera$Face;
    .end local v8    # "faces":[Landroid/hardware/Camera$Face;
    .end local v9    # "fdMode":I
    .end local v10    # "fdScenePriority":Z
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "params":Landroid/hardware/Camera$Parameters;
    .end local v14    # "previewSize":Landroid/util/Size;
    .end local v15    # "previousFaces":[Landroid/hardware/Camera$Face;
    .end local v16    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v17    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .restart local v9    # "fdMode":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "faces":[Landroid/hardware/Camera$Face;
    goto :goto_1

    .end local v8    # "faces":[Landroid/hardware/Camera$Face;
    .end local v9    # "fdMode":I
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .restart local v3    # "activeArray":Landroid/graphics/Rect;
    .restart local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .restart local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v6    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .restart local v7    # "face":Landroid/hardware/Camera$Face;
    .restart local v8    # "faces":[Landroid/hardware/Camera$Face;
    .restart local v9    # "fdMode":I
    .restart local v10    # "fdScenePriority":Z
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v14    # "previewSize":Landroid/util/Size;
    .restart local v15    # "previousFaces":[Landroid/hardware/Camera$Face;
    .restart local v16    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v17    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_2
    sget-object v18, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string v19, "mapResultFaces - read NULL face from camera1 device"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .end local v7    # "face":Landroid/hardware/Camera$Face;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_3
    sget-object v18, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/hardware/camera2/params/Face;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v18, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    sget-object v18, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "captureRequest must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "fdMode":I
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v3, :cond_0

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string v4, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "sceneMode":I
    if-ne v2, v5, :cond_1

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v3, :cond_1

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string v4, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    packed-switch v1, :pswitch_data_0

    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string v6, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    if-nez v1, :cond_2

    if-ne v2, v5, :cond_4

    :cond_2
    move v0, v5

    .local v0, "enableFaceDetect":Z
    :goto_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    :goto_2
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-ne v2, v5, :cond_6

    move v3, v5

    :goto_3
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    if-eqz v1, :cond_7

    :goto_4
    iput-boolean v5, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .end local v0    # "enableFaceDetect":Z
    :cond_4
    move v0, v4

    goto :goto_1

    .restart local v0    # "enableFaceDetect":Z
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v5, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

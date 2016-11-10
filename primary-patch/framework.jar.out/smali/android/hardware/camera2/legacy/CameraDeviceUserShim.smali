.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OPEN_CAMERA_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraDeviceUserShim"


# instance fields
.field private final mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

.field private final mConfigureLock:Ljava/lang/Object;

.field private mConfiguring:Z

.field private final mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

.field private mSurfaceIdCounter:I

.field private final mSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "legacyCamera"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .param p3, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "cameraInit"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    .param p5, "cameraCallbacks"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 12
    .param p0, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p1, "cameraId"    # I

    .prologue
    new-instance v4, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-direct {v4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    .local v4, "init":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    new-instance v5, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {v5, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    .local v5, "threadCallbacks":Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    const/16 v0, 0x1388

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    move-result v8

    .local v8, "initErrors":I
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    move-result-object v9

    .local v9, "legacyCamera":Landroid/hardware/Camera;
    invoke-static {v8}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->throwOnError(I)V

    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v10, 0x0

    .local v10, "legacyParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {v2, p1, v9, v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    .local v2, "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    return-object v0

    .end local v2    # "device":Landroid/hardware/camera2/legacy/LegacyCameraDevice;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x3

    const-string v11, "Unable to get initial parameters"

    invoke-direct {v0, v1, v11, v6}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginConfigure()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot begin configure, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraDeviceUserShim"

    const-string v2, "Cannot begin configure, configuration change already in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CameraDeviceUserShim"

    const-string v3, "Cannot cancel request, device has been closed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v2, :cond_1

    const-string v2, "CameraDeviceUserShim"

    const-string v4, "Cannot cancel request, configuration change in progress."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x26

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    move-result-wide v0

    .local v0, "lastFrame":J
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->setNumber(J)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 4
    .param p1, "templateId"    # I
    .param p2, "request"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CameraDeviceUserShim"

    const-string v3, "Cannot create default request, device has been closed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "template":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "CameraDeviceUserShim"

    const-string v3, "createDefaultRequest - invalid templateId specified"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x16

    goto :goto_0
.end method

.method public createInputStream(III)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    const-string v0, "CameraDeviceUserShim"

    const-string v1, "creating input stream is not supported on legacy devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    return v0
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 4
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .prologue
    const/16 v0, -0x26

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CameraDeviceUserShim"

    const-string v2, "Cannot create stream, device has been closed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_1

    const-string v1, "CameraDeviceUserShim"

    const-string v3, "Cannot create stream, beginConfigure hasn\'t been called yet."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CameraDeviceUserShim"

    const-string v3, "Cannot create stream, stream rotation is not supported."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    .local v0, "id":I
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public deleteStream(I)I
    .locals 5
    .param p1, "streamId"    # I

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CameraDeviceUserShim"

    const-string v2, "Cannot delete stream, device has been closed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x13

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v1, :cond_1

    const-string v1, "CameraDeviceUserShim"

    const-string v3, "Cannot delete stream, beginConfigure hasn\'t been called yet."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x26

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_2

    const-string v1, "CameraDeviceUserShim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete stream, stream id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x16

    monitor-exit v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot disconnect, device has already been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    throw v0
.end method

.method public endConfigure(Z)I
    .locals 7
    .param p1, "isConstrainedHighSpeed"    # Z

    .prologue
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CameraDeviceUserShim"

    const-string v5, "Cannot end configure, device has been closed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x13

    :goto_0
    return v4

    :cond_0
    const/4 v2, 0x0

    .local v2, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v4, :cond_1

    const-string v4, "CameraDeviceUserShim"

    const-string v6, "Cannot end configure, no configuration change in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x26

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "numSurfaces":I
    if-lez v1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .local v3, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    :try_start_2
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v2, v3

    .end local v0    # "i":I
    .end local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .restart local v2    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    :cond_3
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Ljava/util/List;)I

    move-result v4

    goto :goto_0

    .end local v2    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .restart local v0    # "i":I
    .restart local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .restart local v2    # "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    goto :goto_1
.end method

.method public flush(Landroid/hardware/camera2/utils/LongParcelable;)I
    .locals 5
    .param p1, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CameraDeviceUserShim"

    const-string v3, "Cannot flush, device has been closed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x13

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v2, :cond_1

    const-string v2, "CameraDeviceUserShim"

    const-string v4, "Cannot flush, configuration change in progress."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x26

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    move-result-wide v0

    .local v0, "lastFrame":J
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->setNumber(J)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I
    .locals 2
    .param p1, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    const-string v0, "CameraDeviceUserShim"

    const-string v1, "getCameraInfo unimplemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getInputSurface(Landroid/view/Surface;)I
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const-string v0, "CameraDeviceUserShim"

    const-string v1, "getting input surface is not supported on legacy devices"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    return v0
.end method

.method public prepare(I)I
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot prepare stream, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 3
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot submit request, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraDeviceUserShim"

    const-string v2, "Cannot submit request, configuration change in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v0

    goto :goto_0
.end method

.method public submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    .locals 3
    .param p2, "streaming"    # Z
    .param p3, "lastFrameNumber"    # Landroid/hardware/camera2/utils/LongParcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;Z",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot submit request list, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraDeviceUserShim"

    const-string v2, "Cannot submit request, configuration change in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v0

    goto :goto_0
.end method

.method public tearDown(I)I
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot tear down stream, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitUntilIdle()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceUserShim"

    const-string v1, "Cannot wait until idle, device has been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x13

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraDeviceUserShim"

    const-string v2, "Cannot wait until idle, configuration change in progress."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x26

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    const/4 v0, 0x0

    goto :goto_0
.end method

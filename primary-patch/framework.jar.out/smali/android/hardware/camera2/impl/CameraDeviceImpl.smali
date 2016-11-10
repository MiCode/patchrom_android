.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

.field private mRepeatingRequestId:I

.field private final mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/16 v8, 0x17

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null argument given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/16 v0, 0x17

    .local v0, "MAX_TAG_LEN":I
    const-string v3, "CameraDevice-JV-%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_3

    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    return p1
.end method

.method static synthetic access$800(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return v0
.end method

.method static synthetic access$802(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkAndFireSequenceComplete()V
    .locals 21

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .local v2, "completedFrameNumber":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .local v4, "completedReprocessFrameNumber":J
    const/4 v8, 0x0

    .local v8, "isReprocess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    .local v15, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    const/16 v17, 0x0

    .local v17, "sequenceCompleted":Z
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v14

    .local v14, "requestId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "Camera closed while checking sequences"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19

    .end local v14    # "requestId":I
    .end local v15    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .end local v17    # "sequenceCompleted":Z
    :cond_1
    return-void

    .restart local v14    # "requestId":I
    .restart local v15    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
    .restart local v17    # "sequenceCompleted":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .local v7, "index":I
    if-ltz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object/from16 v6, v18

    .local v6, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v10

    .local v10, "lastRegularFrameNumber":J
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v12

    .local v12, "lastReprocessFrameNumber":J
    cmp-long v18, v10, v2

    if-gtz v18, :cond_3

    cmp-long v18, v12, v4

    if-gtz v18, :cond_3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .end local v10    # "lastRegularFrameNumber":J
    .end local v12    # "lastReprocessFrameNumber":J
    :cond_3
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    if-eqz v17, :cond_5

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_5
    if-eqz v17, :cond_0

    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    .local v16, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v16    # "resultDispatch":Ljava/lang/Runnable;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .end local v7    # "index":I
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .prologue
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .local v1, "index":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object v0, v3

    .local v0, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    if-eqz v0, :cond_2

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0, p1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    .local v2, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    .end local v2    # "resultDispatch":Ljava/lang/Runnable;
    :goto_1
    return-void

    .restart local v1    # "index":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v4, "did not register callback to request %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v1    # "index":I
    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(IJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    goto :goto_1
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance p0, Landroid/os/Handler;

    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p0    # "handler":Landroid/os/Handler;
    :cond_1
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .prologue
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    .end local p0    # "handler":Landroid/os/Handler;
    :cond_0
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 13
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    if-eqz p1, :cond_5

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v4

    .local v4, "inputFormats":[I
    const/4 v8, 0x0

    .local v8, "validFormat":Z
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v2, v0, v3

    .local v2, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    if-ne v2, v10, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "format":I
    :cond_1
    if-nez v8, :cond_2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "input format "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not valid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    const/4 v9, 0x0

    .local v9, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .local v5, "inputSizes":[Landroid/util/Size;
    move-object v0, v5

    .local v0, "arr$":[Landroid/util/Size;
    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v7, v0, v3

    .local v7, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_3

    const/4 v9, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v7    # "s":Landroid/util/Size;
    :cond_4
    if-nez v9, :cond_5

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "input size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not valid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v0    # "arr$":[Landroid/util/Size;
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "i$":I
    .end local v4    # "inputFormats":[I
    .end local v5    # "inputSizes":[Landroid/util/Size;
    .end local v6    # "len$":I
    .end local v8    # "validFormat":Z
    .end local v9    # "validSize":Z
    :cond_5
    return-void
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V
    .locals 27
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p2, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v11, 0x1

    .local v11, "configureSuccess":Z
    const/16 v25, 0x0

    .local v25, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    const/4 v14, 0x0

    .local v14, "input":Landroid/view/Surface;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    move-result v11

    const/4 v5, 0x1

    if-ne v11, v5, :cond_2

    if-eqz p1, :cond_2

    new-instance v24, Landroid/view/Surface;

    invoke-direct/range {v24 .. v24}, Landroid/view/Surface;-><init>()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v14    # "input":Landroid/view/Surface;
    .local v24, "input":Landroid/view/Surface;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Landroid/hardware/camera2/ICameraDeviceUser;->getInputSurface(Landroid/view/Surface;)I
    :try_end_3
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, v24

    .end local v24    # "input":Landroid/view/Surface;
    .restart local v14    # "input":Landroid/view/Surface;
    :cond_2
    :goto_0
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/OutputConfiguration;

    .local v21, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v14    # "input":Landroid/view/Surface;
    .end local v21    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v23    # "i$":Ljava/util/Iterator;
    .restart local v24    # "input":Landroid/view/Surface;
    :catch_0
    move-exception v22

    .local v22, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v14, v24

    .end local v24    # "input":Landroid/view/Surface;
    .restart local v14    # "input":Landroid/view/Surface;
    goto :goto_0

    .end local v22    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v22

    .local v22, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v25, v22

    const/4 v14, 0x0

    goto :goto_0

    .end local v22    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_2
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    :goto_3
    :try_start_6
    monitor-exit v26

    .end local v22    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void

    .restart local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    .local v4, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    if-eqz p5, :cond_4

    new-instance v4, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p0

    invoke-direct/range {v4 .. v12}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    .restart local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    :goto_5
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v25, :cond_5

    throw v25

    :cond_4
    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object v12, v4

    move-object v15, v6

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p0

    move/from16 v20, v11

    invoke-direct/range {v12 .. v20}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    .restart local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .end local v4    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .end local v6    # "outSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v14    # "input":Landroid/view/Surface;
    .end local v23    # "i$":Ljava/util/Iterator;
    .restart local v24    # "input":Landroid/view/Surface;
    :catch_3
    move-exception v22

    move-object/from16 v14, v24

    .end local v24    # "input":Landroid/view/Surface;
    .restart local v14    # "input":Landroid/view/Surface;
    goto :goto_3

    .end local v14    # "input":Landroid/view/Surface;
    .restart local v24    # "input":Landroid/view/Surface;
    :catch_4
    move-exception v22

    move-object/from16 v14, v24

    .end local v24    # "input":Landroid/view/Surface;
    .restart local v14    # "input":Landroid/view/Surface;
    goto :goto_2
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .locals 19
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/camera2/CaptureRequest;

    .local v14, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v14}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Each request must have at least one Surface target"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v14}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/Surface;

    .local v16, "surface":Landroid/view/Surface;
    if-nez v16, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null Surface targets are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v16    # "surface":Landroid/view/Surface;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    if-eqz p4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    :cond_4
    new-instance v11, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v11}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v11, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v2, v0, v1, v11}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .local v15, "requestId":I
    if-eqz p2, :cond_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v7, v3, -0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v12

    .local v12, "lastFrameNumber":J
    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    :cond_6
    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    monitor-exit v17

    .end local v12    # "lastFrameNumber":J
    .end local v15    # "requestId":I
    :goto_1
    return v15

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    throw v2

    .end local v8    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v11    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v11    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catch_1
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    const/4 v15, -0x1

    :try_start_3
    monitor-exit v17

    goto :goto_1

    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v12    # "lastFrameNumber":J
    .restart local v15    # "requestId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v15, v12, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;IJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private waitUntilIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Active repeating request ongoing"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Exception while closing: "

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "outputConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .local v2, "s":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "s":Landroid/view/Surface;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z

    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Z)Z
    .locals 15
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "isConstrainedHighSpeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    .restart local p2    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    if-eqz p1, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "cannot configure an input stream without any output streams"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    const/4 v9, 0x0

    .local v9, "success":Z
    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v1, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .local v8, "streamId":I
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    .local v7, "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v3    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v8    # "streamId":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v1    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .restart local v3    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v10}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()I

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v10}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/InputConfiguration;

    .local v2, "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    move-object/from16 v0, p1

    if-eq v0, v2, :cond_6

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v10}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v12, v10}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    :cond_5
    if-eqz p1, :cond_6

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v14

    invoke-interface {v10, v12, v13, v14}, Landroid/hardware/camera2/ICameraDeviceUser;->createInputStream(III)I

    move-result v8

    .restart local v8    # "streamId":I
    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v10, v12, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    .end local v8    # "streamId":I
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .local v8, "streamId":Ljava/lang/Integer;
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v10, v12}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .end local v2    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "streamId":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v4}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_c

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v12, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_e

    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_e

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v2    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    .restart local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v10, v7}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v8

    .local v8, "streamId":I
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .end local v2    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "outConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v8    # "streamId":I
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    const/4 v10, 0x0

    if-eqz v9, :cond_d

    :try_start_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6
    return v10

    .restart local v2    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_7
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    move/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure(Z)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, 0x1

    if-eqz v9, :cond_b

    :try_start_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_b

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v10, v9

    goto :goto_6

    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_9
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v12, "Stream configuration failed"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v10, 0x0

    if-eqz v9, :cond_a

    :try_start_a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_a

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    monitor-exit v11

    goto :goto_6

    :cond_a
    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .end local v2    # "currentInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    .local v4, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_c
    :try_start_b
    invoke-virtual {v4}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v10

    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .local v4, "e":Landroid/os/RemoteException;
    :cond_d
    :try_start_c
    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_e
    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v13, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v3, p1, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-direct {v0, v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v4

    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .local v7, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v7    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method public createCaptureSessionByOutputConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .local v6, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {p1, v1, v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .local v8, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v8    # "surface":Landroid/view/Surface;
    :cond_2
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .param p1, "inputResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .local v0, "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v4

    invoke-direct {v1, v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    monitor-exit v2

    return-object v1

    .end local v0    # "resultMetadata":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "outConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .local v7, "surface":Landroid/view/Surface;
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v7    # "surface":Landroid/view/Surface;
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .local v1, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v4, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v4, v7, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v2

    .local v2, "lastFrameNumber":J
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-direct {p0, v4, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    const/4 v4, -0x1

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "lastFrameNumber":J
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    throw v4

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Surface is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, "streamId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Surface is not part of this session"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v3, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->prepare(I)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 3
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V
    .locals 7
    .param p1, "failure"    # Landroid/hardware/camera2/utils/CameraRuntimeException;

    .prologue
    const/4 v1, 0x4

    .local v1, "failureCode":I
    const/4 v2, 0x1

    .local v2, "failureIsError":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown failure in opening camera device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v1

    .local v0, "code":I
    move v3, v2

    .local v3, "isError":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v5

    return-void

    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRepeating()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v5, v7, :cond_1

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .local v4, "requestId":I
    const/4 v5, -0x1

    iput v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v1, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .local v1, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v5, v4, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v2

    .local v2, "lastFrameNumber":J
    invoke-direct {p0, v4, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v2    # "lastFrameNumber":J
    .end local v4    # "requestId":I
    :cond_1
    :try_start_2
    monitor-exit v6

    :goto_0
    return-void

    .restart local v4    # "requestId":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    throw v5

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v4    # "requestId":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v4    # "requestId":I
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Surface is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, -0x1

    .local v2, "streamId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Surface is not part of this session"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v3, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->tearDown(I)I
    :try_end_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

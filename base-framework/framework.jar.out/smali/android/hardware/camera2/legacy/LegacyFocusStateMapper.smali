.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LegacyFocusStateMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    return p1
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "afState"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "ACTIVE_SCAN"

    goto :goto_0

    :pswitch_1
    const-string v0, "FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_2
    const-string v0, "INACTIVE"

    goto :goto_0

    :pswitch_3
    const-string v0, "NOT_FOCUSED_LOCKED"

    goto :goto_0

    :pswitch_4
    const-string v0, "PASSIVE_FOCUSED"

    goto :goto_0

    :pswitch_5
    const-string v0, "PASSIVE_SCAN"

    goto :goto_0

    :pswitch_6
    const-string v0, "PASSIVE_UNFOCUSED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    const-string v1, "result must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .local v0, "newAfState":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    return-void

    .end local v0    # "newAfState":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 13
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v6, "captureRequest must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {p1, v6, v12}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "afTrigger":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .local v0, "afMode":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v12, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_0
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    iget-object v12, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .local v4, "currentAfRun":I
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    invoke-direct {v1, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    .local v1, "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v6, v8

    :goto_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    packed-switch v3, :pswitch_data_1

    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processRequestTriggers - ignoring unknown control.afTrigger = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    :pswitch_0
    return-void

    .end local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .end local v4    # "currentAfRun":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .restart local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .restart local v4    # "currentAfRun":I
    :sswitch_0
    const-string v6, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string v6, "macro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_0

    :sswitch_2
    const-string v6, "continuous-picture"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v10

    goto :goto_0

    :sswitch_3
    const-string v6, "continuous-video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v11

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_3
    move v6, v8

    :goto_3
    packed-switch v6, :pswitch_data_2

    const/4 v2, 0x0

    .local v2, "afStateAfterStart":I
    :goto_4
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    invoke-direct {v7, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_2

    .end local v2    # "afStateAfterStart":I
    :sswitch_4
    const-string v6, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :sswitch_5
    const-string v6, "macro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    goto :goto_3

    :sswitch_6
    const-string v6, "continuous-picture"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v10

    goto :goto_3

    :sswitch_7
    const-string v6, "continuous-video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v11

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x3

    .restart local v2    # "afStateAfterStart":I
    goto :goto_4

    .end local v2    # "afStateAfterStart":I
    :pswitch_4
    const/4 v2, 0x1

    .restart local v2    # "afStateAfterStart":I
    goto :goto_4

    .end local v4    # "currentAfRun":I
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .end local v2    # "afStateAfterStart":I
    .restart local v4    # "currentAfRun":I
    :pswitch_5
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6
    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .local v5, "updatedAfRun":I
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    monitor-exit v7

    goto/16 :goto_2

    .end local v5    # "updatedAfRun":I
    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    :catchall_4
    move-exception v6

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_3
        0x2dddaf -> :sswitch_0
        0x62d9bcc -> :sswitch_1
        0x363d9440 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0xb99cbc3 -> :sswitch_7
        0x2dddaf -> :sswitch_4
        0x62d9bcc -> :sswitch_5
        0x363d9440 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

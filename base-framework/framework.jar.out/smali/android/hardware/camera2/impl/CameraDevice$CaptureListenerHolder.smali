.class Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureListenerHolder"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;Z)V
    .locals 2
    .parameter "listener"
    .parameter "request"
    .parameter "handler"
    .parameter "repeating"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid listener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getListener()Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    return v0
.end method

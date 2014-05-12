.class public abstract Landroid/hardware/camera2/CameraDevice$CaptureListener;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .parameter "camera"
    .parameter "request"
    .parameter "result"

    .prologue
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .parameter "camera"
    .parameter "request"
    .parameter "failure"

    .prologue
    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .parameter "camera"
    .parameter "request"
    .parameter "result"

    .prologue
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;II)V
    .locals 0
    .parameter "camera"
    .parameter "sequenceId"
    .parameter "frameNumber"

    .prologue
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0
    .parameter "camera"
    .parameter "request"
    .parameter "timestamp"

    .prologue
    return-void
.end method

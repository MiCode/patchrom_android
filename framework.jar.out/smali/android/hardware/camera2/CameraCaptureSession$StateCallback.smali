.class public abstract Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.super Ljava/lang/Object;
.source "CameraCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    return-void
.end method

.method public abstract onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method public abstract onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    return-void
.end method

.class public Lcom/mediatek/hardware/CameraEx;
.super Ljava/lang/Object;
.source "CameraEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hardware/CameraEx$MavCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEx"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMavCallback(Lcom/mediatek/hardware/CameraEx$MavCallback;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "cb"
    .parameter "camera"

    .prologue
    new-instance v0, Lcom/mediatek/hardware/CameraEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hardware/CameraEx$1;-><init>(Lcom/mediatek/hardware/CameraEx$MavCallback;)V

    .local v0, mMavCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V

    return-void
.end method

.method public static startMav(ILandroid/hardware/Camera;)V
    .locals 0
    .parameter "num"
    .parameter "camera"

    .prologue
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->startMAV(I)V

    return-void
.end method

.method public static stopMav(ILandroid/hardware/Camera;)V
    .locals 0
    .parameter "isMerge"
    .parameter "camera"

    .prologue
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->stopMAV(I)V

    return-void
.end method

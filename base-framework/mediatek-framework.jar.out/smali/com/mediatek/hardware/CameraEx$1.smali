.class final Lcom/mediatek/hardware/CameraEx$1;
.super Ljava/lang/Object;
.source "CameraEx.java"

# interfaces
.implements Landroid/hardware/Camera$MAVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hardware/CameraEx;->setMavCallback(Lcom/mediatek/hardware/CameraEx$MavCallback;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/mediatek/hardware/CameraEx$MavCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/hardware/CameraEx$MavCallback;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/hardware/CameraEx$1;->val$cb:Lcom/mediatek/hardware/CameraEx$MavCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrame()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/hardware/CameraEx$1;->val$cb:Lcom/mediatek/hardware/CameraEx$MavCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/hardware/CameraEx$1;->val$cb:Lcom/mediatek/hardware/CameraEx$MavCallback;

    invoke-interface {v0}, Lcom/mediatek/hardware/CameraEx$MavCallback;->onFrame()V

    :cond_0
    return-void
.end method

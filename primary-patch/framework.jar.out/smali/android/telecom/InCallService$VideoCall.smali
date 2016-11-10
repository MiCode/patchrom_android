.class public abstract Landroid/telecom/InCallService$VideoCall;
.super Ljava/lang/Object;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
.end method

.method public abstract registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract requestCameraCapabilities()V
.end method

.method public abstract sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract setCamera(Ljava/lang/String;)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract setPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract setPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
.end method

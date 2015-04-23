.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 4
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public registerCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestCallDataUsage()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method private constructor <init>(Landroid/media/tv/ITvInputHardware;)V
    .locals 0
    .param p1, "hardwareInterface"    # Landroid/media/tv/ITvInputHardware;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/ITvInputHardware;
    .param p2, "x1"    # Landroid/media/tv/TvInputManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputManager$Hardware;

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    return-object v0
.end method

.method private getInterface()Landroid/media/tv/ITvInputHardware;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .locals 7
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStreamVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

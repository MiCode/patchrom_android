.class public abstract Landroid/media/tv/TvInputService$HardwareSession;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareSession"
.end annotation


# instance fields
.field private mHardwareSession:Landroid/media/tv/TvInputManager$Session;

.field private final mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

.field private mProxySession:Landroid/media/tv/ITvInputSession;

.field private mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/media/tv/TvInputService$HardwareSession$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$HardwareSession$1;-><init>(Landroid/media/tv/TvInputService$HardwareSession;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-void
.end method

.method static synthetic access$1400(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/TvInputManager$Session;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSession;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/tv/TvInputService$HardwareSession;

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object v0
.end method


# virtual methods
.method public abstract getHardwareInputId()Ljava/lang/String;
.end method

.method public onHardwareVideoAvailable()V
    .locals 0

    .prologue
    return-void
.end method

.method public onHardwareVideoUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    return-void
.end method

.method public final onSetSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const-string v0, "TvInputService"

    const-string v1, "onSetSurface() should not be called in HardwareProxySession."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

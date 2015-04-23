.class public abstract Landroid/service/media/CameraPrewarmService;
.super Landroid/app/Service;
.source "CameraPrewarmService.java"


# static fields
.field public static final ACTION_PREWARM:Ljava/lang/String; = "android.service.media.CameraPrewarmService.ACTION_PREWARM"

.field public static final MSG_CAMERA_FIRED:I = 0x1


# instance fields
.field private mCameraIntentFired:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/media/CameraPrewarmService$1;

    invoke-direct {v0, p0}, Landroid/service/media/CameraPrewarmService$1;-><init>(Landroid/service/media/CameraPrewarmService;)V

    iput-object v0, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Landroid/service/media/CameraPrewarmService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/service/media/CameraPrewarmService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/media/CameraPrewarmService;->onPrewarm()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/service/media/CameraPrewarmService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCooldown(Z)V
.end method

.method public abstract onPrewarm()V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/media/CameraPrewarmService;->mCameraIntentFired:Z

    invoke-virtual {p0, v0}, Landroid/service/media/CameraPrewarmService;->onCooldown(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

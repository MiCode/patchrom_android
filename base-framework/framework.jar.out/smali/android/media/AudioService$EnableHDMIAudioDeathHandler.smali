.class Landroid/media/AudioService$EnableHDMIAudioDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableHDMIAudioDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const-string v0, "AudioService"

    const-string v1, "EnableHDMIAudioDeathHandler::binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioService;->enableHDMIAudio(ZLandroid/os/IBinder;)Z

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$EnableHDMIAudioDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

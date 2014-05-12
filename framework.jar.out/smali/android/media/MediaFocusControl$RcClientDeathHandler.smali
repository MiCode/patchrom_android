.class Landroid/media/MediaFocusControl$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter "cb"
    .parameter "pi"

    .prologue
    iput-object p1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$3100(Landroid/media/MediaFocusControl$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "MediaFocusControl"

    const-string v1, "  RemoteControlClient died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    #calls: Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$2900(Landroid/media/MediaFocusControl;)V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

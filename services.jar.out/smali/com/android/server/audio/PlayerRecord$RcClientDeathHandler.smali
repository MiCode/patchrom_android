.class Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcClientDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/audio/PlayerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/audio/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->this$0:Lcom/android/server/audio/PlayerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

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

    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

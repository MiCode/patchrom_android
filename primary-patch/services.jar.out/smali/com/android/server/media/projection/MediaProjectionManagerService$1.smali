.class Lcom/android/server/media/projection/MediaProjectionManagerService$1;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field final synthetic val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$1;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$200(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

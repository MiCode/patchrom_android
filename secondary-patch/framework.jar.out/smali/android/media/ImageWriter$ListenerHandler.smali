.class final Landroid/media/ImageWriter$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageWriter;


# direct methods
.method public constructor <init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    # getter for: Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/ImageWriter;->access$100(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    # getter for: Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;
    invoke-static {v1}, Landroid/media/ImageWriter;->access$200(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;

    move-result-object v0

    .local v0, "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-interface {v0, v1}, Landroid/media/ImageWriter$OnImageReleasedListener;->onImageReleased(Landroid/media/ImageWriter;)V

    :cond_0
    return-void

    .end local v0    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

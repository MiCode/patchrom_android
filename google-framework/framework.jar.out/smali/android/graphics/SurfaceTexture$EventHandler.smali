.class Landroid/graphics/SurfaceTexture$EventHandler;
.super Landroid/os/Handler;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 237
    iput-object p1, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 243
    iget-object v0, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    #getter for: Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    invoke-static {v0}, Landroid/graphics/SurfaceTexture;->access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    #getter for: Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    invoke-static {v0}, Landroid/graphics/SurfaceTexture;->access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/SurfaceTexture$EventHandler;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 246
    :cond_0
    return-void
.end method

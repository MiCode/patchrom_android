.class Landroid/view/TextureView$2;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    #getter for: Landroid/view/TextureView;->mLock:[Ljava/lang/Object;
    invoke-static {v0}, Landroid/view/TextureView;->access$100(Landroid/view/TextureView;)[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    const/4 v2, 0x1

    #setter for: Landroid/view/TextureView;->mUpdateLayer:Z
    invoke-static {v0, v2}, Landroid/view/TextureView;->access$202(Landroid/view/TextureView;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    goto :goto_0
.end method

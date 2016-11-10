.class Landroid/service/wallpaper/WallpaperService$Engine$1;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->mRequestedFormat:I

    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    # getter for: Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    # getter for: Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I
    invoke-static {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    return v0
.end method

.method public onRelayoutContainer()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateSurface()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setFixedSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$1;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers currently only support sizing from layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wallpapers do not support keep screen on"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

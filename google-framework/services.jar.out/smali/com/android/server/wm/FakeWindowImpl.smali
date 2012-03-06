.class public final Lcom/android/server/wm/FakeWindowImpl;
.super Ljava/lang/Object;
.source "FakeWindowImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$FakeWindow;


# instance fields
.field final mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTouchFullscreen:Z

.field final mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V
    .locals 4
    .parameter "service"
    .parameter "looper"
    .parameter "inputHandler"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    invoke-static {p4}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 42
    .local v0, channels:[Landroid/view/InputChannel;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 43
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 44
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {v1, p3, v2}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 47
    new-instance v1, Lcom/android/server/wm/InputApplicationHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/InputApplicationHandle;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 48
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iput-object p4, v1, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 52
    new-instance v1, Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/InputWindowHandle;-><init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 53
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-object p4, v1, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/wm/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 55
    invoke-direct {p0, p5}, Lcom/android/server/wm/FakeWindowImpl;->getLayerLw(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->layer:I

    .line 57
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p6, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    .line 58
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p5, v1, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean p7, v1, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput-boolean p8, v1, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    .line 67
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    .line 69
    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    const/high16 v2, 0x3f80

    iput v2, v1, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    .line 71
    iput-boolean p9, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    .line 72
    return-void
.end method

.method private getLayerLw(I)I
    .locals 1
    .parameter "windowType"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputManager;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 95
    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method layout(II)V
    .locals 2
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v1, v0, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput v1, v0, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p1, v0, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iput p2, v0, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    .line 84
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0
.end method

.class Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;
.super Landroid/view/IDisplayContentChangeListener$Stub;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$Viewport;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/IWindowManager;Lcom/android/server/accessibility/ScreenMagnifier$DisplayProvider;JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    invoke-direct {p0}, Landroid/view/IDisplayContentChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRectangleOnScreenRequested(ILandroid/graphics/Rect;Z)V
    .locals 5
    .parameter "dsiplayId"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onRotationChanged(I)V
    .locals 3
    .parameter "rotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onWindowLayersChanged(I)V
    .locals 2
    .parameter "displayId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onWindowTransition(IILandroid/view/WindowInfo;)V
    .locals 4
    .parameter "displayId"
    .parameter "transition"
    .parameter "info"

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

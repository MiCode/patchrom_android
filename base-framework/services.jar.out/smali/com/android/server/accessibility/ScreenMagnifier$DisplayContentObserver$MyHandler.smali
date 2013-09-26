.class final Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, args:Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_0

    .local v2, immediate:Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V
    invoke-static {v6, v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2900(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v2           #immediate:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .end local v1           #args:Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, transition:I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInfo;

    .local v3, info:Landroid/view/WindowInfo;
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnWindowTransition(ILandroid/view/WindowInfo;)V
    invoke-static {v6, v5, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3000(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;ILandroid/view/WindowInfo;)V

    goto :goto_0

    .end local v3           #info:Landroid/view/WindowInfo;
    .end local v5           #transition:I
    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, rotation:I
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRotationChanged(I)V
    invoke-static {v6, v4}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3100(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;I)V

    goto :goto_0

    .end local v4           #rotation:I
    :pswitch_5
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3200(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

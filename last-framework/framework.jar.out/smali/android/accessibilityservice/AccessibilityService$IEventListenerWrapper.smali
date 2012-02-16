.class Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;
.super Landroid/accessibilityservice/IEventListener$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IEventListenerWrapper"
.end annotation


# static fields
.field private static final DO_ON_ACCESSIBILITY_EVENT:I = 0x1e

.field private static final DO_ON_INTERRUPT:I = 0x14

.field private static final DO_SET_SET_CONNECTION:I = 0xa


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mTarget:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;Landroid/accessibilityservice/AccessibilityService;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 303
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Landroid/accessibilityservice/IEventListener$Stub;-><init>()V

    .line 304
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    .line 305
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p2, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 306
    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 325
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 352
    const-string v3, "AccessibilityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 327
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 328
    .local v2, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v2, :cond_0

    .line 329
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v3, v2}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 330
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 334
    .end local v2           #event:Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_1
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    goto :goto_0

    .line 337
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 338
    .local v1, connectionId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 340
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 343
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->this$0:Landroid/accessibilityservice/AccessibilityService;

    #setter for: Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I
    invoke-static {v3, v1}, Landroid/accessibilityservice/AccessibilityService;->access$002(Landroid/accessibilityservice/AccessibilityService;I)I

    .line 344
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mTarget:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 347
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->this$0:Landroid/accessibilityservice/AccessibilityService;

    const/4 v4, -0x1

    #setter for: Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I
    invoke-static {v3, v4}, Landroid/accessibilityservice/AccessibilityService;->access$002(Landroid/accessibilityservice/AccessibilityService;I)I

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 320
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public onInterrupt()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 317
    return-void
.end method

.method public setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    .locals 3
    .parameter "connection"
    .parameter "connectionId"

    .prologue
    .line 309
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 312
    return-void
.end method

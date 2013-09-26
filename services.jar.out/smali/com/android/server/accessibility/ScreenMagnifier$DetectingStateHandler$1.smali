.class Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .local v0, event:Landroid/view/MotionEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .local v1, policyFlags:I
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V
    invoke-static {v3, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$1300(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V

    .end local v0           #event:Landroid/view/MotionEvent;
    .end local v1           #policyFlags:I
    :goto_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x1

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

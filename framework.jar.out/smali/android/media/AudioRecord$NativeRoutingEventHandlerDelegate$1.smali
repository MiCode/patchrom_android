.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

.field final synthetic val$record:Landroid/media/AudioRecord;

.field final synthetic val$this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioRecord;

    iput-object p4, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    iput-object p5, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown native event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/media/AudioRecord;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRecord$OnRoutingChangedListener;

    iget-object v1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRecord;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

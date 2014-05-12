.class Landroid/media/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    #calls: Landroid/media/MediaFocusControl;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    invoke-static {v1, v0}, Landroid/media/MediaFocusControl;->access$1100(Landroid/media/MediaFocusControl;Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    #calls: Landroid/media/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1200(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    invoke-static {v1, v0, v2}, Landroid/media/MediaFocusControl;->access$1300(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    #calls: Landroid/media/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1400(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Landroid/media/MediaFocusControl;->onNewPlaybackInfoForRcc(III)V
    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaFocusControl;->access$1500(Landroid/media/MediaFocusControl;III)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    #calls: Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v1, v2, v0}, Landroid/media/MediaFocusControl;->access$1600(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFocusControl$RccPlaybackState;

    #calls: Landroid/media/MediaFocusControl;->onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaFocusControl;->access$1700(Landroid/media/MediaFocusControl;IILandroid/media/MediaFocusControl$RccPlaybackState;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #calls: Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlaybackPosition(IJ)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaFocusControl;->access$1800(Landroid/media/MediaFocusControl;IJ)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Rating;

    #calls: Landroid/media/MediaFocusControl;->onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaFocusControl;->access$1900(Landroid/media/MediaFocusControl;IILandroid/media/Rating;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/media/MediaFocusControl;->onPromoteRcc(I)V
    invoke-static {v0, v1}, Landroid/media/MediaFocusControl;->access$2000(Landroid/media/MediaFocusControl;I)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaFocusControl;->access$2100(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    #calls: Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$2200(Landroid/media/MediaFocusControl;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

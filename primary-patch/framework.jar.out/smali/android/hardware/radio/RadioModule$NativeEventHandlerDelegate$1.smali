.class Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

.field final synthetic val$callback:Landroid/hardware/radio/RadioTuner$Callback;

.field final synthetic val$this$0:Landroid/hardware/radio/RadioModule;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->this$1:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$this$0:Landroid/hardware/radio/RadioModule;

    iput-object p4, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/RadioManager$BandConfig;

    .local v0, "config":Landroid/hardware/radio/RadioManager$BandConfig;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v3, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    goto :goto_0

    .end local v0    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :sswitch_2
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v3, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .local v1, "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_1

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v3, v1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    goto :goto_0

    .end local v1    # "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/radio/RadioMetadata;

    .local v2, "metadata":Landroid/hardware/radio/RadioMetadata;
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v3, v2}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    goto :goto_0

    .end local v2    # "metadata":Landroid/hardware/radio/RadioMetadata;
    :sswitch_7
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v3, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :sswitch_8
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v3, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onControlChanged(Z)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    :sswitch_9
    iget-object v4, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v4, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6e -> :sswitch_5
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

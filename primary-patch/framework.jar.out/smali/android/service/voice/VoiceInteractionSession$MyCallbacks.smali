.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/inputmethodservice/SoftInputWindow$Callback;
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_0
    return-void

    :sswitch_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->complete()V

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_8
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    goto :goto_0

    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/app/assist/AssistStructure;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/app/assist/AssistContent;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-virtual {v3, v1, v4, v2}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    return-void
.end method

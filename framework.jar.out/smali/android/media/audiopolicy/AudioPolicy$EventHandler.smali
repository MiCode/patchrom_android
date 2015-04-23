.class Landroid/media/audiopolicy/AudioPolicy$EventHandler;
.super Landroid/os/Handler;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method public constructor <init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "AudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # invokes: Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$300(Landroid/media/audiopolicy/AudioPolicy;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$400(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$400(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioFocusInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$400(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$400(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioFocusInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;->onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$500(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    # getter for: Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$500(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v1, v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

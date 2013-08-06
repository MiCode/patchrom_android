.class Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;
.super Landroid/os/Handler;
.source "VoiceCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/app/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B
    invoke-static {v2}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$100(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$300(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    .local v1, listener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;
    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v4, v5, v2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->onVoiceCommandNotified(IILandroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/mediatek/common/voicecommand/VoiceCommandListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :pswitch_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

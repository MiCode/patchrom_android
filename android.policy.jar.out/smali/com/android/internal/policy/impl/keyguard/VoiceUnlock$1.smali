.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;
.super Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0, p2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 10
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "Result"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, result:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mainAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    if-ne v2, v8, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    const-string v5, "onNotified RECOGNIZE_START"

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    const-string v4, "Result_Info"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, verifyResult:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified RECOGNIZE_NOTIFY verifyResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    if-ne v3, v8, :cond_1

    const-string v4, "Reslut_INfo1"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, commandId:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified RECOGNIZE_NOTIFY commandId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #commandId:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v3           #verifyResult:I
    :pswitch_2
    const-string v4, "Result_Info"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, intensity:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotified RECOGNIZE_INTENSITY intensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$000(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v1           #intensity:I
    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$1;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    #getter for: Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->access$100(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

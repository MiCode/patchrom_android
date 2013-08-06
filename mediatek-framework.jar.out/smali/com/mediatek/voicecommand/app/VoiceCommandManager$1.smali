.class Lcom/mediatek/voicecommand/app/VoiceCommandManager$1;
.super Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;
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
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$1;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    invoke-direct {p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$1;->this$0:Lcom/mediatek/voicecommand/app/VoiceCommandManager;

    #getter for: Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->access$000(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

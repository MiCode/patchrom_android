.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/IRemoteControlClient$Stub;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v2

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v3

    const/16 v4, 0xf

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onInformationRequested(II)V
    .locals 7
    .param p1, "generationId"    # I
    .param p2, "infoFlags"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v6, p1, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public seekTo(IJ)V
    .locals 5
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    const/16 v4, 0xa

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v4, p1, v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setCurrentClientGenerationId(I)V
    .locals 4
    .param p1, "clientGeneration"    # I

    .prologue
    const/4 v3, 0x6

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v2

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v3

    const/16 v4, 0xc

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public updateMetadata(IILandroid/media/Rating;)V
    .locals 3
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

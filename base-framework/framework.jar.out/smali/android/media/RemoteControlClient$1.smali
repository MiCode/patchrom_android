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
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInformationRequested(IIII)V
    .locals 8
    .parameter "clientGeneration"
    .parameter "infoFlags"
    .parameter "artWidth"
    .parameter "artHeight"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7, p3, p4, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3
    .parameter "rcd"

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public setCurrentClientGenerationId(I)V
    .locals 4
    .parameter "clientGeneration"

    .prologue
    const/4 v3, 0x6

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3
    .parameter "rcd"

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

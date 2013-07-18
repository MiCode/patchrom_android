.class Landroid/content/SyncManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v0

    .local v0, wasConnected:Z
    iget-object v1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    iget-object v2, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v2}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Z

    move-result v2

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1, v2}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    iget-object v1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    const-string v2, "Reconnection detected: clearing all backoffs"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;
    invoke-static {v2}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncQueue;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/SyncStorageEngine;->clearAllBackoffs(Landroid/content/SyncQueue;)V

    :cond_1
    iget-object v1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v1}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    :cond_2
    return-void
.end method

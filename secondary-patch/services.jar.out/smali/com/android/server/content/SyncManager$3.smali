.class Lcom/android/server/content/SyncManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$402(Lcom/android/server/content/SyncManager;Z)Z

    iget-object v0, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onBootCompleted()V

    return-void
.end method

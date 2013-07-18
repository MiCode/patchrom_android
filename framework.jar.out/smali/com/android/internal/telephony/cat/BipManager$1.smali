.class Lcom/android/internal/telephony/cat/BipManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipManager;->access$700(Lcom/android/internal/telephony/cat/BipManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipManager;->access$800(Lcom/android/internal/telephony/cat/BipManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;-><init>(Lcom/android/internal/telephony/cat/BipManager;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #rt:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

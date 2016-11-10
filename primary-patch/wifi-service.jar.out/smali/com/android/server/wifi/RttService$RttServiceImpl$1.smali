.class Lcom/android/server/wifi/RttService$RttServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const-string v1, "scan_enabled"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "state":I
    const-string v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCAN_AVAILABLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$200(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v1

    const v2, 0x27300

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$1;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    # getter for: Lcom/android/server/wifi/RttService$RttServiceImpl;->mStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->access$200(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v1

    const v2, 0x27301

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

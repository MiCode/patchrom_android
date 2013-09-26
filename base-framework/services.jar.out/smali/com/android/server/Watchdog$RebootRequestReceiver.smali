.class final Lcom/android/server/Watchdog$RebootRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RebootRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v0, "nowait"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "interval"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "startTime"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "window"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "minScreenOff"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "minNextAlarm"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    const-string v3, "recheckInterval"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    const/16 v3, 0xafb

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    iget v2, v2, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

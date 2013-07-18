.class Lcom/android/server/am/PowerOffAlarmUtility$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffAlarmUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PowerOffAlarmUtility;


# direct methods
.method constructor <init>(Lcom/android/server/am/PowerOffAlarmUtility;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PowerOffAlarm"

    const-string v2, "DeskClock normally boots-up device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #calls: Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/server/am/PowerOffAlarmUtility;->access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    iget-boolean v1, v1, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityManagerPlus;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerPlus;->setBootingVal(Z)V

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityManagerPlus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PowerOffAlarm"

    const-string v2, "DeskClock normally shutdowns device"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/PowerOffAlarmUtility;->access$400(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #calls: Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/am/PowerOffAlarmUtility;->access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PowerOffAlarm"

    const-string v2, "ALARM_BOOT_DONE normally shutdowns device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "alarm.boot.remove.ipowin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;
    invoke-static {v1}, Lcom/android/server/am/PowerOffAlarmUtility;->access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility$1;->this$0:Lcom/android/server/am/PowerOffAlarmUtility;

    #getter for: Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/PowerOffAlarmUtility;->access$400(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

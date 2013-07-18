.class Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmCallTrackerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCallTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DMAgent;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DMAgent;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v6

    #setter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$202(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DMAgent;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/dm/DMAgent;->getLockType()I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_0
    #setter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z
    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$302(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInLock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->isInLock:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isFullLock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->isFullLock:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DMAgent;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/dm/DMAgent;->isHangMoCallLocking()Z

    move-result v5

    #setter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$402(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->dmAgent:Lcom/mediatek/common/dm/DMAgent;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/dm/DMAgent;->isHangMtCallLocking()Z

    move-result v5

    #setter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$502(Lcom/android/internal/telephony/gsm/GsmCallTracker;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needHangupMOCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", needHangupMTCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v4

    .local v1, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The count of connections is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v0, v4, v3

    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMTCall:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->needHangupMOCall:Z
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSM"

    const-string v5, "unexpected error on hangup"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #i:I
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController.handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v3, v8}, Lcom/android/server/wifi/WifiController;->access$502(Lcom/android/server/wifi/WifiController;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v3, v8}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    :cond_0
    :goto_0
    :pswitch_1
    return v9

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v3, v9}, Lcom/android/server/wifi/WifiController;->access$502(Lcom/android/server/wifi/WifiController;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    #calls: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26005

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v3, v9}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, pluggedType:I
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    #calls: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v3, v0}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    add-long v1, v3, v5

    .local v1, triggerTime:J
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v8, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v1           #triggerTime:J
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v3, v0}, Lcom/android/server/wifi/WifiController;->access$802(Lcom/android/server/wifi/WifiController;I)I

    goto/16 :goto_0

    .end local v0           #pluggedType:I
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    #setter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v3, v9}, Lcom/android/server/wifi/WifiController;->access$1102(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE ignored due to state change"

    #calls: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.class Lcom/mediatek/agps/MtkAgpsManagerService$5;
.super Landroid/os/Handler;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .local v6, bundle:Landroid/os/Bundle;
    const/4 v9, 0x0

    .local v9, type:I
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "ERR: unknown what recv by mAgpsHandler"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "msg"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.mediatek.agps.AGPS_MESSAGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v0, "msg"

    const-string v1, "msg"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "type"

    const-string v1, "type"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V

    goto :goto_0

    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v0, "type"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$600(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_1
    if-ne v9, v2, :cond_2

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "force enable GPS setting and acquire wakelock"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$600(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "ephemeris"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "almanac"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "position"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "time"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "iono"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "utc"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v7}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .end local v7           #extras:Landroid/os/Bundle;
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v1, "msg"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.class Lcom/mediatek/agps/MtkAgpsManagerService$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .local v9, action:Ljava/lang/String;
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "enabled"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$202(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->GpsState(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$300(Lcom/mediatek/agps/MtkAgpsManagerService;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_BOOT_COMPLETED"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_BOOT_IPO"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "ACTION_SHUTDOWN_IPO"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.mediatek.agps.toast"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "agpsd has been re-started"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "close the GPS port\n"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$600(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .local v13, mbundle:Landroid/os/Bundle;
    if-eqz v13, :cond_0

    const-string v1, "EM_Call_State"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .local v15, state:I
    const-string v1, "Call_Number"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, call_number:Ljava/lang/String;
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->emergencyCallState(I)V
    invoke-static {v1, v15}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;I)V

    goto/16 :goto_0

    :cond_6
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "Emergency call is triggered but receive null number"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AGPS Received unsupport emergency call number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10           #call_number:Ljava/lang/String;
    .end local v13           #mbundle:Landroid/os/Bundle;
    .end local v15           #state:I
    :cond_8
    const-string v1, "android.location.gps.GPS_POS_FIRST_FIXED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v12, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v12, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .local v12, location:Landroid/location/Location;
    const-string v1, "latitude"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    const-string v1, "longitude"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "altitude"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    const-string v1, "speed"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/location/Location;->setSpeed(F)V

    const-string v1, "bearing"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/location/Location;->setBearing(F)V

    const-string v1, "accuracy"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/location/Location;->setAccuracy(F)V

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/location/Location;->setTime(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "TTFF"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->sendLocation2Agpsd(Landroid/location/Location;I)V
    invoke-static {v1, v12, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/location/Location;I)V

    goto/16 :goto_0

    .end local v12           #location:Landroid/location/Location;
    :cond_9
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .local v14, networkinfo:Landroid/net/NetworkInfo;
    sget-object v15, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .local v15, state:Landroid/net/NetworkInfo$State;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    :goto_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v15, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .local v21, wifiinfo:Landroid/net/wifi/WifiInfo;
    if-eqz v21, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    .local v8, IPAddr:I
    shr-int/lit8 v1, v8, 0x18

    and-int/lit16 v0, v1, 0xff

    move/from16 v19, v0

    .local v19, val4:I
    shr-int/lit8 v1, v8, 0x10

    and-int/lit16 v0, v1, 0xff

    move/from16 v18, v0

    .local v18, val3:I
    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .local v17, val2:I
    and-int/lit16 v0, v8, 0xff

    move/from16 v16, v0

    .local v16, val1:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI connected IP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .end local v8           #IPAddr:I
    .end local v16           #val1:I
    .end local v17           #val2:I
    .end local v18           #val3:I
    .end local v19           #val4:I
    .end local v21           #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "NETWORK_STATE_CHANGED_ACTION is triggered but receive null networkinfo"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v21       #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "NETWORK CONNECTED but receive null wifiinfo"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v21           #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_c
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v15, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "WIFI disconnected"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .end local v14           #networkinfo:Landroid/net/NetworkInfo;
    .end local v15           #state:Landroid/net/NetworkInfo$State;
    :cond_d
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "wifi_state"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .local v20, wifiState:I
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v2, "WIFI disabled"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .end local v20           #wifiState:I
    :cond_e
    const-string v1, "com.mediatek.agps.EPO_EVENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "event"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .local v11, event:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recv EPO_EVENT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    const/16 v1, 0x16

    if-lt v11, v1, :cond_0

    const/16 v1, 0x1a

    if-gt v11, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0x32

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V
    invoke-static {v1, v2, v11}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V

    goto/16 :goto_0

    .end local v11           #event:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: Intent received but not action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

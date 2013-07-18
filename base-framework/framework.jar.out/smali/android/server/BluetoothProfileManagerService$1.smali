.class Landroid/server/BluetoothProfileManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothProfileManagerService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothProfileManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothProfileManagerService$1;->this$0:Landroid/server/BluetoothProfileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xe

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothProfileManagerService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->access$000(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v3       #state:I
    :pswitch_0
    iget-object v4, p0, Landroid/server/BluetoothProfileManagerService$1;->this$0:Landroid/server/BluetoothProfileManagerService;

    #calls: Landroid/server/BluetoothProfileManagerService;->onBluetoothEnable()V
    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->access$100(Landroid/server/BluetoothProfileManagerService;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/server/BluetoothProfileManagerService$1;->this$0:Landroid/server/BluetoothProfileManagerService;

    #calls: Landroid/server/BluetoothProfileManagerService;->onBluetoothDisable()V
    invoke-static {v4}, Landroid/server/BluetoothProfileManagerService;->access$200(Landroid/server/BluetoothProfileManagerService;)V

    goto :goto_0

    .end local v3           #state:I
    :cond_1
    const-string v4, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .local v2, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .restart local v3       #state:I
    iget-object v4, p0, Landroid/server/BluetoothProfileManagerService$1;->this$0:Landroid/server/BluetoothProfileManagerService;

    #calls: Landroid/server/BluetoothProfileManagerService;->onProfileStateUpdate(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    invoke-static {v4, v2, v3}, Landroid/server/BluetoothProfileManagerService;->access$300(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    goto :goto_0

    .end local v2           #profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    .end local v3           #state:I
    :cond_2
    const-string v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfileManager$Profile;

    .restart local v2       #profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .restart local v3       #state:I
    iget-object v4, p0, Landroid/server/BluetoothProfileManagerService$1;->this$0:Landroid/server/BluetoothProfileManagerService;

    #calls: Landroid/server/BluetoothProfileManagerService;->updateProfileState(Landroid/bluetooth/BluetoothProfileManager$Profile;I)V
    invoke-static {v4, v2, v3}, Landroid/server/BluetoothProfileManagerService;->access$400(Landroid/server/BluetoothProfileManagerService;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

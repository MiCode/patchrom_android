.class public Landroid/bluetooth/BluetoothFtp$Client;
.super Landroid/bluetooth/BluetoothFtp$Remote;
.source "BluetoothFtp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v0, "BluetoothFtp.Client"

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothFtp$Remote;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.ftp.action.BIND_CLIENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothFtp$Client;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Could not bind to Bluetooth FTP Service"

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/bluetooth/BluetoothFtp$Remote;->close()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothFtp$Client;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothFtp$Client;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothFtpCtrl;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "mService is null"

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected convertState(I)I
    .locals 1
    .parameter "ftpState"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x5

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothFtp$Remote;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothFtp$Client;->disconnectService()V

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throwable caught in finalize(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothFtp$Client;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getConnectedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/bluetooth/BluetoothFtp$Remote;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothFtp$Remote;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

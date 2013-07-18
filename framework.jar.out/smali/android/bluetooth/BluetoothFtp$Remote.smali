.class abstract Landroid/bluetooth/BluetoothFtp$Remote;
.super Ljava/lang/Object;
.source "BluetoothFtp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Remote"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mService:Landroid/bluetooth/IBluetoothFtpCtrl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "tag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothFtp$Remote;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/bluetooth/BluetoothFtp$Remote$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothFtp$Remote$1;-><init>(Landroid/bluetooth/BluetoothFtp$Remote;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothFtp$Remote;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothFtp$Remote;->disconnectService()V

    return-void
.end method

.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method protected abstract convertState(I)I
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothFtpCtrl;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
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

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "mService is null"

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected disconnectService()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred in unbindService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothFtpCtrl;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    .local v3, re:Landroid/os/RemoteException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getConnectedDevices(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #re:Landroid/os/RemoteException;
    :cond_1
    const-string v4, "mService is null"

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x2

    .local v2, ret:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothFtpCtrl;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, current:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothFtp$Remote;->mService:Landroid/bluetooth/IBluetoothFtpCtrl;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothFtpCtrl;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothFtp$Remote;->convertState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0           #current:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return v2

    .restart local v0       #current:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .end local v0           #current:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when get state from FTP service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothFtp$Remote;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected printErr(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothFtp$Remote;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

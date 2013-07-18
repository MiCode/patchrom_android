.class public Landroid/bluetooth/BluetoothHid;
.super Ljava/lang/Object;
.source "BluetoothHid.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final BT_HID_DEVICE_AUTHORIZE:Ljava/lang/String; = "authorize"

.field public static final BT_HID_DEVICE_CONNECT:Ljava/lang/String; = "connected"

.field public static final BT_HID_DEVICE_CONNECTING:Ljava/lang/String; = "connecting"

.field public static final BT_HID_DEVICE_DISCONNECT:Ljava/lang/String; = "disconnect"

.field public static final BT_HID_DEVICE_DISCONNECTING:Ljava/lang/String; = "disconnecting"

.field public static final BT_HID_DEVICE_UNPLUG:Ljava/lang/String; = "unplug"

.field public static final BT_HID_DEVICE_UNPLUG_DISCONNECT:Ljava/lang/String; = "unplug_disconnect"

.field public static final BT_HID_STATE_ACTIVE:I = 0x64

.field public static final BT_HID_STATE_AUTHORIZING:I = 0x65

.field public static final BT_HID_STATE_CONNECTED:I = 0x66

.field public static final BT_HID_STATE_CONNECTING:I = 0x69

.field public static final BT_HID_STATE_DISACTIVE:I = 0x68

.field public static final BT_HID_STATE_DISCONNECTED:I = 0x67

.field public static final BT_HID_STATE_DISCONNECTING:I = 0x6a

.field public static final DEVICE_ADDR:Ljava/lang/String; = "device_addr"

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final MBTEVT_HID_HOST_CONNECT_FAIL:I = 0x5

.field public static final MBTEVT_HID_HOST_CONNECT_SUCCESS:I = 0x4

.field public static final MBTEVT_HID_HOST_DISABLE_FAIL:I = 0x3

.field public static final MBTEVT_HID_HOST_DISABLE_SUCCESS:I = 0x2

.field public static final MBTEVT_HID_HOST_DISCONNECT_FAIL:I = 0x7

.field public static final MBTEVT_HID_HOST_DISCONNECT_SUCCESS:I = 0x6

.field public static final MBTEVT_HID_HOST_ENABLE_FAIL:I = 0x1

.field public static final MBTEVT_HID_HOST_ENABLE_SUCCESS:I = 0x0

.field public static final MBTEVT_HID_HOST_GET_DESC_FAIL:I = 0x9

.field public static final MBTEVT_HID_HOST_GET_DESC_SUCCESS:I = 0x8

.field public static final MBTEVT_HID_HOST_GET_IDLE_FAIL:I = 0x17

.field public static final MBTEVT_HID_HOST_GET_IDLE_SUCCESS:I = 0x16

.field public static final MBTEVT_HID_HOST_GET_PROTOCOL_FAIL:I = 0x13

.field public static final MBTEVT_HID_HOST_GET_PROTOCOL_SUCCESS:I = 0x12

.field public static final MBTEVT_HID_HOST_GET_REPORT_FAIL:I = 0xf

.field public static final MBTEVT_HID_HOST_GET_REPORT_SUCCESS:I = 0xe

.field public static final MBTEVT_HID_HOST_RECEIVE_AUTHORIZE:I = 0x1b

.field public static final MBTEVT_HID_HOST_RECEIVE_UNPLUG:I = 0x1a

.field public static final MBTEVT_HID_HOST_SEND_CONTROL_FAIL:I = 0xb

.field public static final MBTEVT_HID_HOST_SEND_CONTROL_SUCCESS:I = 0xa

.field public static final MBTEVT_HID_HOST_SEND_REPORT_FAIL:I = 0x19

.field public static final MBTEVT_HID_HOST_SEND_REPORT_SUCCESS:I = 0x18

.field public static final MBTEVT_HID_HOST_SET_IDLE_FAIL:I = 0x15

.field public static final MBTEVT_HID_HOST_SET_IDLE_SUCCESS:I = 0x14

.field public static final MBTEVT_HID_HOST_SET_PROTOCOL_FAIL:I = 0x11

.field public static final MBTEVT_HID_HOST_SET_PROTOCOL_SUCCESS:I = 0x10

.field public static final MBTEVT_HID_HOST_SET_REPORT_FAIL:I = 0xd

.field public static final MBTEVT_HID_HOST_SET_REPORT_SUCCESS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "BT_HID_JAVA"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHid;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/BluetoothHid$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHid$1;-><init>(Landroid/bluetooth/BluetoothHid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHid;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothHid;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHid;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BT_HID_JAVA"

    const-string v1, "Could not bind to Bluetooth HID Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHid;Landroid/bluetooth/IBluetoothHid;)Landroid/bluetooth/IBluetoothHid;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHid;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHid;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHid;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT_HID_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BT_HID_JAVA"

    const-string v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHid;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT_HID_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BT_HID_JAVA"

    const-string v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 4
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
    iget-object v1, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHid;->getCurrentDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT_HID_JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BT_HID_JAVA"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/16 v1, 0x67

    .local v1, ret:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHid;->mService:Landroid/bluetooth/IBluetoothHid;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHid;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT_HID_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BT_HID_JAVA"

    const-string v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

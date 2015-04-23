.class public final Landroid/media/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiManager$OnDeviceOpenedListener;,
        Landroid/media/midi/MidiManager$DeviceCallback;,
        Landroid/media/midi/MidiManager$DeviceListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.bluetoothmidiservice.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_INTENT:Ljava/lang/String; = "android.media.midi.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.bluetoothmidiservice"

.field private static final TAG:Ljava/lang/String; = "MidiManager"


# instance fields
.field private mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/media/midi/MidiManager$DeviceCallback;",
            "Landroid/media/midi/MidiManager$DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/media/midi/IMidiManager;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/midi/IMidiManager;)V
    .locals 1
    .param p1, "service"    # Landroid/media/midi/IMidiManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    return-void
.end method

.method static synthetic access$100(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiManager;

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiManager;

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/midi/MidiManager;
    .param p1, "x1"    # Landroid/media/midi/MidiDevice;
    .param p2, "x2"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "x3"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    if-eqz p3, :cond_0

    new-instance v0, Landroid/media/midi/MidiManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/midi/MidiManager$1;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2, p1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    goto :goto_0
.end method


# virtual methods
.method public createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;
    .locals 12
    .param p1, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p2, "numOutputPorts"    # I
    .param p3, "inputPortNames"    # [Ljava/lang/String;
    .param p4, "outputPortNames"    # [Ljava/lang/String;
    .param p5, "properties"    # Landroid/os/Bundle;
    .param p6, "type"    # I
    .param p7, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    .prologue
    :try_start_0
    new-instance v11, Landroid/media/midi/MidiDeviceServer;

    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    move-object/from16 v0, p7

    invoke-direct {v11, v1, p1, p2, v0}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    .local v11, "server":Landroid/media/midi/MidiDeviceServer;
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-virtual {v11}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v2

    array-length v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v9

    .local v9, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v9, :cond_0

    const-string v1, "MidiManager"

    const-string v2, "registerVirtualDevice failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    .end local v9    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v11    # "server":Landroid/media/midi/MidiDeviceServer;
    :cond_0
    :goto_0
    return-object v11

    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "MidiManager"

    const-string v2, "RemoteException in createVirtualDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_0
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    invoke-interface {v1}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiManager"

    const-string v2, "RemoteException in getDevices"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/midi/MidiDeviceInfo;

    goto :goto_0
.end method

.method public openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    move-object v3, p2

    .local v3, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v2, p3

    .local v2, "handlerF":Landroid/os/Handler;
    new-instance v0, Landroid/media/midi/MidiManager$3;

    invoke-direct {v0, p0, v3, v2}, Landroid/media/midi/MidiManager$3;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .local v0, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, p1, v0}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiManager"

    const-string v5, "RemoteException in openDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    move-object v1, p1

    .local v1, "deviceInfoF":Landroid/media/midi/MidiDeviceInfo;
    move-object v4, p2

    .local v4, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v3, p3

    .local v3, "handlerF":Landroid/os/Handler;
    new-instance v0, Landroid/media/midi/MidiManager$2;

    invoke-direct {v0, p0, v1, v4, v3}, Landroid/media/midi/MidiManager$2;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .local v0, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v5, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v6, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, p1, v0}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "MidiManager"

    const-string v6, "RemoteException in openDevice"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    new-instance v0, Landroid/media/midi/MidiManager$DeviceListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MidiManager"

    const-string v3, "RemoteException in registerDeviceListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    .prologue
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager$DeviceListener;

    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MidiManager"

    const-string v3, "RemoteException in unregisterDeviceListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

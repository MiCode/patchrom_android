.class final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConnection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field private final mClient:Lcom/android/server/midi/MidiService$Client;

.field private final mDevice:Lcom/android/server/midi/MidiService$Device;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 1
    .param p2, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p3, "client"    # Lcom/android/server/midi/MidiService$Client;
    .param p4, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    iput-object p3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    iput-object p4, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/midi/MidiService$Client;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    return-object v0
.end method

.method public getDevice()Lcom/android/server/midi/MidiService$Device;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 3
    .param p1, "deviceServer"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    invoke-interface {v2, p1, v0}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConnection Device ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

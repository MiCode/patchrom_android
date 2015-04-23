.class Landroid/media/midi/MidiManager$3;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .local v6, "device":Landroid/media/midi/MidiDevice;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    new-instance v0, Landroid/media/midi/MidiDevice;

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    # getter for: Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;
    invoke-static {v2}, Landroid/media/midi/MidiManager;->access$100(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v3

    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    # getter for: Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/midi/MidiManager;->access$200(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "device":Landroid/media/midi/MidiDevice;
    .local v0, "device":Landroid/media/midi/MidiDevice;
    :try_start_1
    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v4, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    # invokes: Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    invoke-static {v2, v0, v3, v4}, Landroid/media/midi/MidiManager;->access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :goto_0
    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v4, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    # invokes: Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    invoke-static {v2, v0, v3, v4}, Landroid/media/midi/MidiManager;->access$300(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    return-void

    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    .restart local v6    # "device":Landroid/media/midi/MidiDevice;
    :catch_0
    move-exception v7

    move-object v0, v6

    .end local v6    # "device":Landroid/media/midi/MidiDevice;
    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    .local v7, "e":Landroid/os/RemoteException;
    :goto_1
    const-string v2, "MidiManager"

    const-string v3, "remote exception in getDeviceInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local v6    # "device":Landroid/media/midi/MidiDevice;
    :cond_0
    move-object v0, v6

    .end local v6    # "device":Landroid/media/midi/MidiDevice;
    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    goto :goto_0
.end method

.class Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .local v0, "server":Landroid/media/midi/IMidiDeviceServer;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    # invokes: Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    invoke-static {v1, v0}, Lcom/android/server/midi/MidiService$Device;->access$500(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    # invokes: Lcom/android/server/midi/MidiService$Device;->setDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$500(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    # setter for: Lcom/android/server/midi/MidiService$Device;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$602(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method

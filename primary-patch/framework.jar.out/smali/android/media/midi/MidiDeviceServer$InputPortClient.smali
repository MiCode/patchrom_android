.class Landroid/media/midi/MidiDeviceServer$InputPortClient;
.super Landroid/media/midi/MidiDeviceServer$PortClient;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputPortClient"
.end annotation


# instance fields
.field private final mOutputPort:Landroid/media/midi/MidiOutputPort;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "outputPort"    # Landroid/media/midi/MidiOutputPort;

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    return-void
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    invoke-virtual {v1}, Landroid/media/midi/MidiOutputPort;->getPortNumber()I

    move-result v0

    .local v0, "portNumber":I
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$100(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v1

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    # invokes: Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$200(Landroid/media/midi/MidiDeviceServer;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .end local v0    # "portNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class public Landroid/media/midi/MidiDevice$MidiConnection;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MidiConnection"
.end annotation


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mInputPortToken:Landroid/os/IBinder;

.field private mIsClosed:Z

.field private final mOutputPortToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDevice;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 2
    .param p2, "outputPortToken"    # Landroid/os/IBinder;
    .param p3, "inputPort"    # Landroid/media/midi/MidiInputPort;

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v3, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    # getter for: Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    invoke-static {v1}, Landroid/media/midi/MidiDevice;->access$000(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    iget-object v3, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MidiDevice"

    const-string v3, "RemoteException in MidiConnection.close"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice$MidiConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

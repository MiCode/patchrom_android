.class public final Landroid/media/midi/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDevice$MidiConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiDevice"


# instance fields
.field private final mClientToken:Landroid/os/IBinder;

.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mDeviceToken:Landroid/os/IBinder;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mMidiManager:Landroid/media/midi/IMidiManager;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p3, "midiManager"    # Landroid/media/midi/IMidiManager;
    .param p4, "clientToken"    # Landroid/os/IBinder;
    .param p5, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    iput-object p2, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iput-object p3, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iput-object p4, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;
    .locals 1
    .param p0, "x0"    # Landroid/media/midi/MidiDevice;

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v3, p0, Landroid/media/midi/MidiDevice;->mClientToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v4}, Landroid/media/midi/IMidiManager;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiDevice"

    const-string v3, "RemoteException in closeDevice"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connectPorts(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice$MidiConnection;
    .locals 6
    .param p1, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .param p2, "outputPortNumber"    # I

    .prologue
    const/4 v3, 0x0

    if-ltz p2, :cond_0

    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v4

    if-lt p2, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "outputPortNumber out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Landroid/media/midi/MidiInputPort;->claimFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_2

    :goto_0
    return-object v3

    :cond_2
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .local v2, "token":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v4, v2, v1, p2}, Landroid/media/midi/IMidiDeviceServer;->connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v4, Landroid/media/midi/MidiDevice$MidiConnection;

    invoke-direct {v4, p0, v2, p1}, Landroid/media/midi/MidiDevice$MidiConnection;-><init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MidiDevice"

    const-string v5, "RemoteException in connectPorts"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public openInputPort(I)Landroid/media/midi/MidiInputPort;
    .locals 6
    .param p1, "portNumber"    # I

    .prologue
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .local v2, "token":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v4, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :goto_0
    return-object v3

    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    new-instance v4, Landroid/media/midi/MidiInputPort;

    iget-object v5, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v4, v5, v2, v1, p1}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MidiDevice"

    const-string v5, "RemoteException in openInputPort"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openOutputPort(I)Landroid/media/midi/MidiOutputPort;
    .locals 6
    .param p1, "portNumber"    # I

    .prologue
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .local v2, "token":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-interface {v4, v2, p1}, Landroid/media/midi/IMidiDeviceServer;->openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :goto_0
    return-object v3

    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    new-instance v4, Landroid/media/midi/MidiOutputPort;

    iget-object v5, p0, Landroid/media/midi/MidiDevice;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-direct {v4, v5, v2, v1, p1}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MidiDevice"

    const-string v5, "RemoteException in openOutputPort"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MidiDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDevice;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

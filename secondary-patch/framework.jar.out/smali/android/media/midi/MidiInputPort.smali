.class public final Landroid/media/midi/MidiInputPort;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiInputPort"


# instance fields
.field private final mBuffer:[B

.field private mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsClosed:Z

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mPortNumber:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 2
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "portNumber"    # I

    .prologue
    const/16 v0, 0x3f7

    invoke-direct {p0, v0}, Landroid/media/midi/MidiReceiver;-><init>(I)V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    iput-object p1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iput-object p2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "portNumber"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V

    return-void
.end method


# virtual methods
.method claimFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    monitor-exit v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiInputPort"

    const-string v3, "RemoteException in MidiInputPort.close()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

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
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public final getPortNumber()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public onFlush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v3, "MidiInputPort is closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    invoke-static {v1}, Landroid/media/midi/MidiPortImpl;->packFlush([B)I

    move-result v0

    .local v0, "length":I
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset or count out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v1, 0x3f7

    if-le p3, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "count exceeds max message size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v7, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "MidiInputPort is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Landroid/media/midi/MidiPortImpl;->packData([BIIJ[B)I

    move-result v0

    .local v0, "length":I
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

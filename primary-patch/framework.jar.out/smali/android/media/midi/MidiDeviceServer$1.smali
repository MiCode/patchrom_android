.class Landroid/media/midi/MidiDeviceServer$1;
.super Landroid/media/midi/IMidiDeviceServer$Stub;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeDevice()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->access$1100(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->access$1100(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public closePort(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceServer$PortClient;

    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "outputPortNumber"    # I

    .prologue
    new-instance v2, Landroid/media/midi/MidiInputPort;

    invoke-direct {v2, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$300(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v4

    aget-object v1, v4, p3

    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v3

    .local v3, "openCount":I
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$400(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    aput v3, v4, p3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # invokes: Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$200(Landroid/media/midi/MidiDeviceServer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$500(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v4, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v3    # "openCount":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v3    # "openCount":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v5, v6, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Can\'t access private device from different UID"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-ltz p2, :cond_1

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortCount:I
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$700(Landroid/media/midi/MidiDeviceServer;)I

    move-result v5

    if-lt p2, v5, :cond_2

    :cond_1
    const-string v5, "MidiDeviceServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "portNumber out of range in openInputPort: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v5

    aget-object v5, v5, p2

    if-eqz v5, :cond_3

    const-string v5, "MidiDeviceServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already open"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    sget v5, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .local v3, "pair":[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/media/midi/MidiOutputPort;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-direct {v2, v5, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    .local v2, "outputPort":Landroid/media/midi/MidiOutputPort;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOutputPorts:[Landroid/media/midi/MidiOutputPort;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$000(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v5

    aput-object v2, v5, p2

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortReceivers:[Landroid/media/midi/MidiReceiver;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$800(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v2, v5}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    new-instance v0, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v5, p1, v2}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    .local v0, "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPortOpen:[Z
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$100(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v5

    const/4 v7, 0x1

    aput-boolean v7, v5, p2

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # invokes: Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V
    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->access$200(Landroid/media/midi/MidiDeviceServer;)V

    const/4 v5, 0x1

    aget-object v4, v3, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    .end local v2    # "outputPort":Landroid/media/midi/MidiOutputPort;
    .end local v3    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "MidiDeviceServer"

    const-string v7, "unable to create ParcelFileDescriptors in openInputPort"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v7, v8, :cond_0

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Can\'t access private device from different UID"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-ltz p2, :cond_1

    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mOutputPortCount:I
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$1000(Landroid/media/midi/MidiDeviceServer;)I

    move-result v7

    if-lt p2, v7, :cond_2

    :cond_1
    const-string v7, "MidiDeviceServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "portNumber out of range in openOutputPort: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_2
    :try_start_0
    sget v7, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    invoke-static {v7}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .local v5, "pair":[Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/media/midi/MidiInputPort;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-direct {v3, v7, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    .local v3, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mOutputPortDispatchers:[Lcom/android/internal/midi/MidiDispatcher;
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$300(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v7

    aget-object v1, v7, p2

    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v4

    .local v4, "openCount":I
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mOutputPortOpenCount:[I
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$400(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v7

    aput v4, v7, p2

    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # invokes: Landroid/media/midi/MidiDeviceServer;->updateDeviceStatus()V
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$200(Landroid/media/midi/MidiDeviceServer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mInputPorts:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$500(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v0, v7, p1, v3}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v7, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mPortClients:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/media/midi/MidiDeviceServer;->access$900(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x1

    :try_start_4
    aget-object v6, v5, v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v4    # "openCount":I
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .end local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v5    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v7, "MidiDeviceServer"

    const-string v8, "unable to create ParcelFileDescriptors in openOutputPort"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .restart local v4    # "openCount":I
    .restart local v5    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setDeviceInfo should only be called by MidiService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # getter for: Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->access$600(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDeviceInfo should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    # setter for: Landroid/media/midi/MidiDeviceServer;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;
    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->access$602(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;

    return-void
.end method

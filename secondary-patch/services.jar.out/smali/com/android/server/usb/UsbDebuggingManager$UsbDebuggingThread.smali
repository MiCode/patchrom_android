.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
.super Ljava/lang/Thread;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v0, "UsbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private closeSocketLocked()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private listenToSocket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    :try_start_0
    new-array v0, v4, [B

    .local v0, "buffer":[B
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "count":I
    if-gez v1, :cond_0

    :goto_1
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v0, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .local v2, "key":Ljava/lang/String;
    const-string v4, "UsbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    # getter for: Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$000(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_1
    :try_start_4
    const-string v4, "UsbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method private openSocketLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "adbd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->openSocketLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->listenToSocket()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x3e8

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method sendResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "UsbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method stopListening()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

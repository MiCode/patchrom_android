.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_0

    add-int v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .local v0, "n":I
    if-gtz v0, :cond_1

    const/4 v1, -0x1

    .end local v0    # "n":I
    .end local v1    # "totalRead":I
    :cond_0
    return v1

    .restart local v0    # "n":I
    .restart local v1    # "totalRead":I
    :cond_1
    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v12, 0x8

    new-array v0, v10, [B

    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x7d0

    :try_start_0
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v9

    .local v9, "timeout":Landroid/system/StructTimeval;
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .local v3, "headerBytes":I
    if-eq v3, v12, :cond_1

    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "headerBytes":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "headerBytes":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_1
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .local v8, "signal":I
    if-lez v5, :cond_6

    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    :try_start_2
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v10, :cond_0

    :cond_2
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {p1, v0, v10, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .local v1, "bytes":I
    if-lez v1, :cond_4

    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v1    # "bytes":I
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "reportString":Ljava/lang/String;
    .end local v8    # "signal":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "NativeCrashListener"

    const-string v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :catchall_0
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v10

    .restart local v1    # "bytes":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    if-gtz v1, :cond_2

    goto :goto_1

    :catchall_1
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v10

    .end local v1    # "bytes":I
    :cond_5
    const-string v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string v10, "NativeCrashListener"

    const-string v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    new-array v0, v8, [B

    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    sget v8, Landroid/system/OsConstants;->AF_UNIX:I

    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .local v5, "serverFd":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/net/InetUnixAddress;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v6, v8}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    .local v6, "sockAddr":Ljava/net/InetUnixAddress;
    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    const/4 v8, 0x1

    invoke-static {v5, v8}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    :cond_1
    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .local v3, "peer":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .local v4, "peerFd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v5, v3}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    sget v8, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v9, Landroid/system/OsConstants;->SO_PEERCRED:I

    invoke-static {v4, v8, v9}, Landroid/system/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v1

    .local v1, "credentials":Landroid/system/StructUcred;
    iget v8, v1, Landroid/system/StructUcred;->uid:I

    if-nez v8, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "credentials":Landroid/system/StructUcred;
    :cond_2
    if-eqz v4, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_2
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "NativeCrashListener"

    const-string v9, "Error handling connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_5
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_2
    :try_start_6
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_7
    invoke-static {v4, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :goto_3
    :try_start_8
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_3
    :goto_4
    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .end local v3    # "peer":Ljava/net/InetSocketAddress;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "NativeCrashListener"

    const-string v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "peer":Ljava/net/InetSocketAddress;
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Ljava/net/InetUnixAddress;
    :catch_4
    move-exception v8

    goto :goto_1

    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    goto :goto_3

    :catch_7
    move-exception v9

    goto :goto_4
.end method

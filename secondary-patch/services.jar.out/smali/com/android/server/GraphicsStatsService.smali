.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$1;,
        Lcom/android/server/GraphicsStatsService$HistoricalData;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    }
.end annotation


# static fields
.field private static final ASHMEM_SIZE:I = 0x100

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final HISTORY_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

.field private final mLock:Ljava/lang/Object;

.field private mNextHistoricalSlot:I

.field private mTempBuffer:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/server/GraphicsStatsService$HistoricalData;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/GraphicsStatsService;->removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v1, p2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V

    .restart local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "file"    # Landroid/os/MemoryFile;

    .prologue
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isValid(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "GraphicsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    iput-object v5, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalData;

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-direct {v0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>(Lcom/android/server/GraphicsStatsService$1;)V

    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_0
    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/GraphicsStatsService$HistoricalData;->update(Ljava/lang/String;ILandroid/os/MemoryFile;)V

    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aput-object v0, v1, v2

    iget v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    return-void

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aget-object v0, v3, v1

    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    if-ne v3, p1, :cond_1

    iget-object v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aput-object v2, v3, v1

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :goto_1
    return-object v0

    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v5, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v4, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aput-object v2, v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "GraphicsStatsService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Failed to dump"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    .local v0, "arr$":[Lcom/android/server/GraphicsStatsService$HistoricalData;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-nez v1, :cond_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .local v3, "pid":I
    const/4 v2, 0x0

    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "callingIdentity":J
    :try_start_0
    invoke-direct {p0, v4, p1}, Lcom/android/server/GraphicsStatsService;->isValid(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p2, v4, v3, p1}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

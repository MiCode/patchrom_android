.class Landroid/view/ViewDebug$LooperProfiler;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/os/Looper$Profiler;
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LooperProfiler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$LooperProfiler$Entry;
    }
.end annotation


# static fields
.field private static final ACTION_EXIT_METHOD:I = 0x1

.field private static final HEADER_MAGIC:Ljava/lang/String; = "SLOW"

.field private static final HEADER_RECORD_SIZE:S = 0xes

.field private static final HEADER_SIZE:I = 0x20

.field private static final LOG_TAG:Ljava/lang/String; = "LooperProfiler"

.field private static final TRACE_VERSION_NUMBER:I = 0x3


# instance fields
.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mPath:Ljava/lang/String;

.field private mTraceId:I

.field private final mTraceNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTraceThreadStart:J

.field private final mTraceWallStart:J

.field private final mTraces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewDebug$LooperProfiler$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 4
    .parameter "path"
    .parameter "fileDescriptor"

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraces:Ljava/util/ArrayList;

    .line 473
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceNames:Ljava/util/HashMap;

    .line 474
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceId:I

    .line 480
    iput-object p1, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    .line 482
    :try_start_0
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceWallStart:J

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceThreadStart:J

    .line 489
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Landroid/view/ViewDebug$LooperProfiler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/ViewDebug$LooperProfiler;->saveTraces()V

    return-void
.end method

.method private static addMethods(Ljava/util/HashMap;Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter
    .parameter "out"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    .local p0, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 629
    .local v1, name:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "0x%08x\tEventQueue\t%s\t()V\tLooper\t-2\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    .end local v1           #name:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private static addThreadId(ILjava/lang/String;Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method private static addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    if-eqz p0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private getTraceId(Landroid/os/Message;)I
    .locals 4
    .parameter "message"

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 512
    .local v1, traceId:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 513
    iget v2, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceId:I

    shl-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 514
    iget-object v2, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private saveTraces()V
    .locals 10

    .prologue
    .line 530
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 531
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 534
    .local v9, out:Ljava/io/DataOutputStream;
    :try_start_0
    iget-wide v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceWallStart:J

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceNames:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraces:Ljava/util/ArrayList;

    invoke-static {v9, v1, v2, v3, v4}, Landroid/view/ViewDebug$LooperProfiler;->writeHeader(Ljava/io/DataOutputStream;JLjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 535
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 537
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceWallStart:J

    iget-wide v5, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraceThreadStart:J

    iget-object v7, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraces:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v7}, Landroid/view/ViewDebug$LooperProfiler;->writeTraces(Ljava/io/FileOutputStream;JJJLjava/util/ArrayList;)V

    .line 539
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looper traces ready: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 544
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 554
    :goto_1
    return-void

    .line 545
    :catch_0
    move-exception v8

    .line 546
    .local v8, e:Ljava/io/IOException;
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 550
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 551
    .restart local v8       #e:Ljava/io/IOException;
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 540
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 541
    .restart local v8       #e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    :try_start_4
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 549
    :goto_2
    :try_start_5
    iget-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 550
    :catch_3
    move-exception v8

    .line 551
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 545
    :catch_4
    move-exception v8

    .line 546
    const-string v1, "LooperProfiler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write trace file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 543
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 544
    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 549
    :goto_3
    :try_start_7
    iget-object v2, p0, Landroid/view/ViewDebug$LooperProfiler;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 552
    :goto_4
    throw v1

    .line 545
    :catch_5
    move-exception v8

    .line 546
    .restart local v8       #e:Ljava/io/IOException;
    const-string v2, "LooperProfiler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write trace file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 550
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 551
    .restart local v8       #e:Ljava/io/IOException;
    const-string v2, "LooperProfiler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write trace file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static startSection(Ljava/lang/String;Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "name"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method private static writeHeader(Ljava/io/DataOutputStream;JLjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "out"
    .parameter "start"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewDebug$LooperProfiler$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    .local p3, names:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewDebug$LooperProfiler$Entry;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$LooperProfiler$Entry;

    .line 605
    .local v0, last:Landroid/view/ViewDebug$LooperProfiler$Entry;
    iget-wide v3, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallStart:J

    iget-wide v5, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallTime:J

    add-long/2addr v3, v5

    sub-long v1, v3, p1

    .line 607
    .local v1, wallTotal:J
    const-string/jumbo v3, "version"

    invoke-static {v3, p0}, Landroid/view/ViewDebug$LooperProfiler;->startSection(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 608
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 609
    const-string v3, "data-file-overflow"

    const-string v4, "false"

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 610
    const-string v3, "clock"

    const-string v4, "dual"

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 611
    const-string v3, "elapsed-time-usec"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 612
    const-string/jumbo v3, "num-method-calls"

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 613
    const-string v3, "clock-call-overhead-nsec"

    const-string v4, "1"

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 614
    const-string/jumbo v3, "vm"

    const-string v4, "dalvik"

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addValue(Ljava/lang/String;Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 616
    const-string/jumbo v3, "threads"

    invoke-static {v3, p0}, Landroid/view/ViewDebug$LooperProfiler;->startSection(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 617
    const/4 v3, 0x1

    const-string/jumbo v4, "main"

    invoke-static {v3, v4, p0}, Landroid/view/ViewDebug$LooperProfiler;->addThreadId(ILjava/lang/String;Ljava/io/DataOutputStream;)V

    .line 619
    const-string/jumbo v3, "methods"

    invoke-static {v3, p0}, Landroid/view/ViewDebug$LooperProfiler;->startSection(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 620
    invoke-static {p3, p0}, Landroid/view/ViewDebug$LooperProfiler;->addMethods(Ljava/util/HashMap;Ljava/io/DataOutputStream;)V

    .line 622
    const-string v3, "end"

    invoke-static {v3, p0}, Landroid/view/ViewDebug$LooperProfiler;->startSection(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    .line 623
    return-void
.end method

.method private static writeTraces(Ljava/io/FileOutputStream;JJJLjava/util/ArrayList;)V
    .locals 9
    .parameter "out"
    .parameter "offset"
    .parameter "wallStart"
    .parameter "threadStart"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileOutputStream;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewDebug$LooperProfiler$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    .local p7, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewDebug$LooperProfiler$Entry;>;"
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 562
    .local v1, channel:Ljava/nio/channels/FileChannel;
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 563
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const-string v5, "SLOW"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 564
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 565
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 566
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 567
    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 568
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 570
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0xe

    if-ge v3, v5, :cond_0

    .line 571
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 575
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 577
    const/16 v5, 0xe

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewDebug$LooperProfiler$Entry;

    .line 579
    .local v2, entry:Landroid/view/ViewDebug$LooperProfiler$Entry;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 580
    iget v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->traceId:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 581
    iget-wide v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->threadStart:J

    sub-long/2addr v5, p5

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 582
    iget-wide v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallStart:J

    sub-long/2addr v5, p3

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 584
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 585
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 586
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 588
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 589
    iget v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->traceId:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    iget-wide v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->threadStart:J

    iget-wide v7, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->threadTime:J

    add-long/2addr v5, v7

    sub-long/2addr v5, p5

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 591
    iget-wide v5, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallStart:J

    iget-wide v7, v2, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallTime:J

    add-long/2addr v5, v7

    sub-long/2addr v5, p3

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 593
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 594
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 595
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 598
    .end local v2           #entry:Landroid/view/ViewDebug$LooperProfiler$Entry;
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 599
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 494
    return-void
.end method

.method public profile(Landroid/os/Message;JJJJ)V
    .locals 2
    .parameter "message"
    .parameter "wallStart"
    .parameter "wallTime"
    .parameter "threadStart"
    .parameter "threadTime"

    .prologue
    .line 499
    new-instance v0, Landroid/view/ViewDebug$LooperProfiler$Entry;

    invoke-direct {v0}, Landroid/view/ViewDebug$LooperProfiler$Entry;-><init>()V

    .line 500
    .local v0, entry:Landroid/view/ViewDebug$LooperProfiler$Entry;
    invoke-direct {p0, p1}, Landroid/view/ViewDebug$LooperProfiler;->getTraceId(Landroid/os/Message;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->traceId:I

    .line 501
    iput-wide p2, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallStart:J

    .line 502
    iput-wide p4, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->wallTime:J

    .line 503
    iput-wide p6, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->threadStart:J

    .line 504
    iput-wide p8, v0, Landroid/view/ViewDebug$LooperProfiler$Entry;->threadTime:J

    .line 506
    iget-object v1, p0, Landroid/view/ViewDebug$LooperProfiler;->mTraces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method save()V
    .locals 4

    .prologue
    .line 521
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/ViewDebug$LooperProfiler$1;

    invoke-direct {v1, p0}, Landroid/view/ViewDebug$LooperProfiler$1;-><init>(Landroid/view/ViewDebug$LooperProfiler;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LooperProfiler["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewDebug$LooperProfiler;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 527
    return-void
.end method

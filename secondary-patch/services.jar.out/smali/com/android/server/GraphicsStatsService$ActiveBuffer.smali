.class final Lcom/android/server/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    iput p4, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    iput-object p5, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GFXStats-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    # invokes: Lcom/android/server/GraphicsStatsService;->removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-static {p1, v0, v1}, Lcom/android/server/GraphicsStatsService;->access$100(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v1, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    invoke-virtual {v0, v1, v3, v3, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    # invokes: Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    invoke-static {v0, p0}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method closeAllBuffers()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    :cond_0
    return-void
.end method

.class public Lcom/android/server/am/ANRManager$DumpThread;
.super Ljava/lang/Thread;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpThread"
.end annotation


# instance fields
.field private mDumpPidList:[I

.field private mFilePath:Ljava/lang/String;

.field mResult:Z

.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ANRManager;[ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "DumpPidList"
    .parameter "FilePath"

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ANRManager$DumpThread;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ANRManager$DumpThread;->mResult:Z

    iput-object p2, p0, Lcom/android/server/am/ANRManager$DumpThread;->mDumpPidList:[I

    iput-object p3, p0, Lcom/android/server/am/ANRManager$DumpThread;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ANRManager$DumpThread;->mDumpPidList:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .local v3, pid:I
    iget-object v4, p0, Lcom/android/server/am/ANRManager$DumpThread;->this$0:Lcom/android/server/am/ANRManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ANRManager$DumpThread;->mFilePath:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DumpNative]DumpThread native process ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #pid:I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ANRManager$DumpThread;->mResult:Z

    return-void
.end method

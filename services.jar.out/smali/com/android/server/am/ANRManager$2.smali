.class Lcom/android/server/am/ANRManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ANRManager;->registerDumpNBTReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ANRManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ANRManager$2;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v3, "NBT_DUMP_PROCESS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, processnametmp:Ljava/lang/String;
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v5

    .local v1, processname:[Ljava/lang/String;
    aput-object v2, v1, v5

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .local v0, pidtmp:[I
    array-length v3, v0

    if-lez v3, :cond_2

    const-string v3, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ANRManager$2;->this$0:Lcom/android/server/am/ANRManager;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/server/am/ANRManager;->checkNBTDumpPid(I)V

    .end local v0           #pidtmp:[I
    .end local v1           #processname:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #pidtmp:[I
    .restart local v1       #processname:[Ljava/lang/String;
    :cond_1
    const-string v3, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ANRManager$2;->this$0:Lcom/android/server/am/ANRManager;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/server/am/ANRManager;->removeNBTDumpPid(I)V

    goto :goto_0

    :cond_2
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No process crosponds to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #pidtmp:[I
    .end local v1           #processname:[Ljava/lang/String;
    :cond_3
    const-string v3, "ANRManager"

    const-string v4, "Process name is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

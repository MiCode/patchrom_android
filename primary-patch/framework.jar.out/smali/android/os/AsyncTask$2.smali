.class Landroid/os/AsyncTask$2;
.super Landroid/os/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .locals 1

    .prologue
    .local p0, "this":Landroid/os/AsyncTask$2;, "Landroid/os/AsyncTask.2;"
    iput-object p1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/os/AsyncTask$2;, "Landroid/os/AsyncTask.2;"
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    # getter for: Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/os/AsyncTask;->access$200(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    iget-object v2, p0, Landroid/os/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "result":Ljava/lang/Object;, "TResult;"
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    # invokes: Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v0}, Landroid/os/AsyncTask;->access$300(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

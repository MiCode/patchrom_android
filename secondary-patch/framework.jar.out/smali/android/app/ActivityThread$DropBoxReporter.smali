.class Landroid/app/ActivityThread$DropBoxReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/DropBox$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxReporter"
.end annotation


# instance fields
.field private dropBox:Landroid/os/DropBoxManager;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized ensureInitialized()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

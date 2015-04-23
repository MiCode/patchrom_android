.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    sget-object v5, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    const/4 v1, 0x0

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    const/high16 v4, 0x2e000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IApplicationThread;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    throw v3

    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_3
    move-exception v4

    goto :goto_2

    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_4
    move-exception v3

    goto :goto_0
.end method

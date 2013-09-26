.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "volume"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "list"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v10

    const/16 v11, 0x6e

    invoke-static {v10, v11}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v8

    .local v8, vols:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v9, v0, v2

    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, tok:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v4, v7, v10

    .local v4, path:Ljava/lang/String;
    const-string v6, "removed"

    .local v6, state:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, st:I
    if-nez v5, :cond_1

    const-string v6, "removed"

    :goto_1
    if-eqz v6, :cond_0

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v6}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    const-string v6, "unmounted"

    goto :goto_1

    :cond_2
    const/4 v10, 0x4

    if-ne v5, v10, :cond_4

    const-string v6, "mounted"

    const-string v10, "MountService"

    const-string v11, "Media already mounted on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Error processing initial volume state"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v10}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    return-void

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x7

    if-ne v5, v10, :cond_5

    :try_start_1
    const-string v6, "shared"

    const-string v10, "MountService"

    const-string v11, "Media shared on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unexpected state %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

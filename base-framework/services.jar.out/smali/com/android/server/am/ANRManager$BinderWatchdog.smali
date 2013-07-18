.class final Lcom/android/server/am/ANRManager$BinderWatchdog;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BinderWatchdog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    }
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x40

.field private static final MAX_TIMEOUT_PIDS:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBinderInfo(IILjava/util/ArrayList;)Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    .locals 6
    .parameter "pid"
    .parameter "tid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;"
        }
    .end annotation

    .prologue
    .local p2, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;

    .local v0, bi:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    iget v4, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v4, p0, :cond_2

    iget v4, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mSrcTid:I

    if-ne v4, p1, :cond_2

    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout binder pid found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bi:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public static final getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter "pid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    if-lez p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderFromPid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, pidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;

    .local v0, bi:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    if-eqz v0, :cond_3

    iget v4, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v4, p0, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget v4, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderFromPid pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    goto/16 :goto_0

    :cond_4
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderFromPid pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final getTimeoutBinderPidList(II)Ljava/util/ArrayList;
    .locals 7
    .parameter "pid"
    .parameter "tid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    if-gtz p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, pidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/am/ANRManager$BinderWatchdog;->readTimeoutBinderListFromFile()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    const/4 v1, 0x0

    .local v1, count:I
    invoke-static {p0, p1, v0}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v2

    .local v2, next:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    :goto_1
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    if-lez v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    iget v4, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderPidList pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderPidList pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget v4, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    iget v5, v2, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mDstTid:I

    invoke-static {v4, v5, v0}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private static final readTimeoutBinderListFromFile()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v9, "/sys/kernel/debug/binder/timeout_log"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, file:Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    move-object v2, v1

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v6           #file:Ljava/io/File;
    .local v2, binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :goto_1
    return-object v2

    .end local v2           #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v6       #file:Ljava/io/File;
    :catch_0
    move-exception v7

    .local v7, ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .local v2, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, line:Ljava/lang/String;
    if-eqz v8, :cond_5

    new-instance v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;

    invoke-direct {v0, v8}, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;-><init>(Ljava/lang/String;)V

    .local v0, bi:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    if-eqz v0, :cond_4

    iget v9, v0, Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-lez v9, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    move-result v9

    const/16 v10, 0x40

    if-le v9, v10, :cond_3

    .end local v0           #bi:Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;
    :cond_5
    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_2
    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto :goto_1

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_2
    move-exception v7

    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .restart local v5       #e:Ljava/lang/Exception;
    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v9, "ANRManager"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_7
    :goto_4
    move-object v2, v1

    .local v2, binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto :goto_1

    .end local v2           #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v5       #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v5           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v9, "ANRManager"

    const-string v10, "IOException when gettting Binder. "

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .end local v5           #e:Ljava/io/IOException;
    :cond_8
    :goto_6
    move-object v2, v1

    .restart local v2       #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto/16 :goto_1

    .end local v2           #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v5       #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v5           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v5

    .restart local v5       #e:Ljava/lang/Exception;
    :goto_7
    :try_start_a
    const-string v9, "ANRManager"

    const-string v10, "Get timeout binder info failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :cond_9
    :goto_8
    move-object v2, v1

    .restart local v2       #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto/16 :goto_1

    .end local v2           #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_b
    move-exception v7

    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_c
    move-exception v5

    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_9
    if-eqz v3, :cond_a

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    :cond_a
    :goto_a
    move-object v2, v1

    .restart local v2       #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto/16 :goto_1

    .end local v2           #binderList:Ljava/lang/Object;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_d
    move-exception v7

    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v9, "ANRManager"

    const-string v10, "IOException when close buffer reader:"

    invoke-static {v9, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_e
    move-exception v5

    .restart local v5       #e:Ljava/lang/Exception;
    const-string v9, "ANRManager"

    const-string v10, "close timeout binder node failed"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v5           #e:Ljava/lang/Exception;
    .local v2, binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v6       #file:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto :goto_9

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_9

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_f
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto :goto_7

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catch_10
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_11
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto :goto_5

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catch_12
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    :catch_13
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    goto/16 :goto_3

    .end local v1           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catch_14
    move-exception v5

    move-object v1, v2

    .end local v2           #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    .restart local v1       #binderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ANRManager$BinderWatchdog$BinderInfo;>;"
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

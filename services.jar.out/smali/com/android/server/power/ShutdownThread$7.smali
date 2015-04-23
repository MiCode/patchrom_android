.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    new-instance v8, Ljava/io/File;

    const-string v9, "/cache/recovery/uncrypt_status"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :try_start_0
    const-string v8, "/cache/recovery/uncrypt_status"

    const/16 v9, 0x180

    invoke-static {v8, v9}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v8, "ctl.start"

    const-string v9, "uncrypt"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/cache/recovery/uncrypt_status"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    const/high16 v1, -0x80000000

    .local v1, "lastStatus":I
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .local v5, "str":Ljava/lang/String;
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "status":I
    if-ne v4, v1, :cond_1

    const/high16 v8, -0x80000000

    if-ne v1, v8, :cond_0

    :cond_1
    move v1, v4

    if-ltz v4, :cond_3

    const/16 v8, 0x64

    if-ge v4, v8, :cond_3

    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uncrypt read status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v10, v4

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-int v4, v10

    add-int/lit8 v4, v4, 0x14

    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v8

    const v10, 0x10400fc

    invoke-virtual {v8, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "msg":Ljava/lang/CharSequence;
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v8, v4, v2}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "status":I
    :catch_0
    move-exception v6

    .local v6, "unused":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uncrypt invalid status received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v6    # "unused":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v3, :cond_2

    if-eqz v9, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v1    # "lastStatus":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    return-void

    :catch_1
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ErrnoException when creating named pipe \"/cache/recovery/uncrypt_status\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "lastStatus":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "status":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x64

    if-ne v4, v8, :cond_5

    :try_start_6
    const-string v8, "ShutdownThread"

    const-string v10, "uncrypt successfully finished."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v8

    const v10, 0x10400fd

    invoke-virtual {v8, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/CharSequence;
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v8, v4, v2}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "status":I
    .end local v5    # "str":Ljava/lang/String;
    :catch_2
    move-exception v8

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_4
    if-eqz v3, :cond_4

    if-eqz v9, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_5
    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local v1    # "lastStatus":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    .local v6, "unused":Ljava/io/IOException;
    const-string v8, "ShutdownThread"

    const-string v9, "IOException when reading \"/cache/recovery/uncrypt_status\"."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6    # "unused":Ljava/io/IOException;
    .restart local v1    # "lastStatus":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "status":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uncrypt failed with status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .end local v4    # "status":I
    .end local v5    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v8

    goto :goto_4

    .restart local v5    # "str":Ljava/lang/String;
    :catch_4
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_b
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .end local v5    # "str":Ljava/lang/String;
    :catch_5
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5
.end method

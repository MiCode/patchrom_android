.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"

.field private static final sProcFile:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"


# instance fields
.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    .prologue
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    :try_start_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v4, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v3, 0x0

    .local v3, "speedIndex":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v3

    sub-long v10, v6, v10

    aput-wide v10, v8, v3

    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v6    # "time":J
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v9, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v8, "KernelCpuSpeedReader"

    const-string v9, "Failed to read cpu-freq"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_3
    :try_start_7
    throw v8

    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method

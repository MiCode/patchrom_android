.class Lcom/android/server/wifi/WifiService$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/wifi/WifiService$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;
    .locals 14
    .param p1, "params"    # [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    .prologue
    const/4 v11, 0x0

    aget-object v6, p1, v11

    .local v6, "param":Lcom/android/server/wifi/WifiService$TdlsTaskParams;
    iget-object v11, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .local v9, "remoteIpAddress":Ljava/lang/String;
    iget-boolean v1, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    .local v1, "enable":Z
    const/4 v5, 0x0

    .local v5, "macAddress":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    const-string v12, "/proc/net/arp"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v11, "[ ]+"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "tokens":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x6

    if-lt v11, v12, :cond_0

    const/4 v11, 0x0

    aget-object v2, v10, v11

    .local v2, "ip":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v4, v10, v11

    .local v4, "mac":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v5, v4

    .end local v2    # "ip":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v10    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_4

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find remoteAddress {"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "} in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/proc/net/arp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_1
    move-object v7, v8

    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v11, v5, v1}, Lcom/android/server/wifi/WifiService;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    const-string v11, "WifiService"

    const-string v12, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    goto :goto_2

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v11, "WifiService"

    const-string v12, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_3

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v7, :cond_5

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_6
    throw v11

    :catch_3
    move-exception v12

    goto :goto_6

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    goto :goto_1

    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiService$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

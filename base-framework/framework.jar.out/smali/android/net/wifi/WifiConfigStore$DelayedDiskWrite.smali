.class Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedDiskWrite"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedDiskWrite"

.field private static sDiskWriteHandler:Landroid/os/Handler;

.field private static sDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private static sWriteSequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->onWriteCalled(Ljava/util/List;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static onWriteCalled(Ljava/util/List;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v9, 0x0

    .local v9, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/DataOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->access$100()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v9           #out:Ljava/io/DataOutputStream;
    .local v10, out:Ljava/io/DataOutputStream;
    const/4 v14, 0x2

    :try_start_1
    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v13, 0x0

    .local v13, writeToFile:Z
    :try_start_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .local v8, linkProperties:Landroid/net/LinkProperties;
    sget-object v14, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    const-string v14, "Ignore invalid ip assignment while writing"

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    :goto_1
    :pswitch_0
    sget-object v14, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    const-string v14, "Ignthisore invalid proxy settings while writing"

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    :goto_2
    :pswitch_1
    if-eqz v13, :cond_0

    const-string v14, "id"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #calls: Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->access$200(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v8           #linkProperties:Landroid/net/LinkProperties;
    :cond_0
    :goto_3
    :try_start_3
    const-string v14, "eos"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v13           #writeToFile:Z
    :catch_0
    move-exception v2

    move-object v9, v10

    .end local v10           #out:Ljava/io/DataOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v9       #out:Ljava/io/DataOutputStream;
    :goto_4
    :try_start_4
    const-string v14, "Error writing data file"

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v9, :cond_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_5
    const-class v15, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v15

    :try_start_6
    sget v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v14, v14, -0x1

    sput v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v14, :cond_2

    sget-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->quit()V

    const/4 v14, 0x0

    sput-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    sput-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_2
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2           #e:Ljava/io/IOException;
    :goto_6
    return-void

    .end local v9           #out:Ljava/io/DataOutputStream;
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v8       #linkProperties:Landroid/net/LinkProperties;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    .restart local v13       #writeToFile:Z
    :pswitch_2
    :try_start_7
    const-string v14, "ipAssignment"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .local v7, linkAddr:Landroid/net/LinkAddress;
    const-string v14, "linkAddress"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    .end local v8           #linkProperties:Landroid/net/LinkProperties;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failure in writing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v13           #writeToFile:Z
    :catchall_0
    move-exception v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v9       #out:Ljava/io/DataOutputStream;
    :goto_8
    if-eqz v9, :cond_3

    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_3
    :goto_9
    const-class v15, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v15

    :try_start_a
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_4

    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_4
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v14

    .end local v9           #out:Ljava/io/DataOutputStream;
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #linkProperties:Landroid/net/LinkProperties;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    .restart local v13       #writeToFile:Z
    :cond_5
    :try_start_b
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    .local v12, route:Landroid/net/RouteInfo;
    const-string v14, "gateway"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .local v1, dest:Landroid/net/LinkAddress;
    if-eqz v1, :cond_6

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_b
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_a

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_b

    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_a

    .end local v1           #dest:Landroid/net/LinkAddress;
    .end local v12           #route:Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .local v6, inetAddr:Ljava/net/InetAddress;
    const-string v14, "dns"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_c

    .end local v6           #inetAddr:Ljava/net/InetAddress;
    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_1

    .end local v5           #i$:Ljava/util/Iterator;
    :pswitch_3
    const-string v14, "ipAssignment"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v11

    .local v11, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v11}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    .local v3, exclusionList:Ljava/lang/String;
    const-string v14, "proxySettings"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v14, "proxyHost"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v14, "proxyPort"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/ProxyProperties;->getPort()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v14, "exclusionList"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_2

    .end local v3           #exclusionList:Ljava/lang/String;
    .end local v11           #proxyProperties:Landroid/net/ProxyProperties;
    :pswitch_5
    const-string v14, "proxySettings"

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    const/4 v13, 0x1

    goto/16 :goto_2

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #writeToFile:Z
    :cond_a
    if-eqz v10, :cond_b

    :try_start_c
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_b
    :goto_d
    const-class v15, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v15

    :try_start_d
    sget v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v14, v14, -0x1

    sput v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v14, :cond_c

    sget-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->quit()V

    const/4 v14, 0x0

    sput-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    sput-object v14, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    :cond_c
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v9, v10

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v9       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_6

    :catch_2
    move-exception v15

    goto/16 :goto_9

    :catchall_1
    move-exception v14

    :try_start_e
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v14

    .local v2, e:Ljava/io/IOException;
    :catch_3
    move-exception v14

    goto/16 :goto_5

    :catchall_2
    move-exception v14

    :try_start_f
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v14

    .end local v2           #e:Ljava/io/IOException;
    .end local v9           #out:Ljava/io/DataOutputStream;
    .restart local v10       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v14

    goto :goto_d

    :catchall_3
    move-exception v14

    :try_start_10
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v14

    .end local v10           #out:Ljava/io/DataOutputStream;
    .restart local v9       #out:Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v14

    goto/16 :goto_8

    :catch_5
    move-exception v2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method static write(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-class v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WifiConfigThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

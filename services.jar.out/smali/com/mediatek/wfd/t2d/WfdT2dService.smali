.class public Lcom/mediatek/wfd/t2d/WfdT2dService;
.super Ljava/lang/Object;
.source "WfdT2dService.java"

# interfaces
.implements Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$IWfdT2dService;


# static fields
.field public static final EXTRA_NFC_WFD_AUTH_TYPE:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_AUTH_TYPE"

.field public static final EXTRA_NFC_WFD_ENC_TYPE:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_ENC_TYPE"

.field public static final EXTRA_NFC_WFD_GC_IP:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_GC_IP"

.field public static final EXTRA_NFC_WFD_GO_IP:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_GO_IP"

.field public static final EXTRA_NFC_WFD_MAC_ADDR:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAC_ADDR"

.field public static final EXTRA_NFC_WFD_MAX_HEIGHT:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAX_HEIGHT"

.field public static final EXTRA_NFC_WFD_MAX_WIDTH:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAX_WIDTH"

.field public static final EXTRA_NFC_WFD_NETWORK_ID:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_NETWORK_ID"

.field public static final EXTRA_NFC_WFD_NETWORK_KEY:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_NETWORK_KEY"

.field public static final EXTRA_NFC_WFD_SSID:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_SSID"

.field public static final EXTRA_NFC_WFD_VENDOR_ID:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_VENDOR_ID"

.field static final NFC_HANDOVER_INTENT_ACTION_WFD_ACTIVE:Ljava/lang/String; = "mediatek.nfc.handover.intent.action.WFD_ACTIVE"

.field private static final TAG:Ljava/lang/String; = "WfdT2dService"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mFastInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGcIp:[B

.field private mListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

.field private mNull:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/media/RemoteDisplay;Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;)V
    .locals 3
    .parameter "context"
    .parameter "manager"
    .parameter "channel"
    .parameter "remoteDisplay"
    .parameter "listener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/mediatek/wfd/t2d/WfdT2dService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfd/t2d/WfdT2dService$1;-><init>(Lcom/mediatek/wfd/t2d/WfdT2dService;)V

    iput-object v0, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    iput-object p2, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p3, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p4, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v0, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "mediatek.nfc.handover.intent.action.WFD_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfd/t2d/WfdT2dService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/wfd/t2d/WfdT2dService;->handleBroadcastT2d(Landroid/content/Intent;)V

    return-void
.end method

.method private constructFastConnectInfo(Landroid/content/Intent;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 16
    .parameter "intent"

    .prologue
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_MAC_ADDR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, macAddr:[B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_NETWORK_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, NetworkKey:Ljava/lang/String;
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_SSID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, SSID:Ljava/lang/String;
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_NETWORK_ID"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    .local v3, NetworkId:B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_AUTH_TYPE"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .local v1, AuthType:S
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_ENC_TYPE"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v2

    .local v2, EncType:S
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_VENDOR_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .local v12, vendorId:[B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_GC_IP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .local v6, gcIp:[B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_GO_IP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .local v7, goIp:[B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_MAX_HEIGHT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .local v10, maxHeight:[B
    const-string v13, "mediatek.nfc.handover.intent.extra.WFD_MAX_WIDTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .local v11, maxWidth:[B
    new-instance v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v8}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    .local v8, info:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    iput v3, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    const/4 v13, -0x1

    iput v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->venderId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/wfd/t2d/WfdT2dService;->convertDeviceAddress([B)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deviceAddress: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/wfd/t2d/WfdT2dService;->convertTo4DigitsHexString(S)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->authType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/wfd/t2d/WfdT2dService;->convertTo4DigitsHexString(S)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encrType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->encrType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mGcIp:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/wfd/t2d/WfdT2dService;->convertIp([B)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gcIp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->gcIpAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/wfd/t2d/WfdT2dService;->convertIp([B)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "goIp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->goIpAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WfdT2dService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WifiP2pFastConnectInfo: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private convertDeviceAddress([B)Ljava/lang/String;
    .locals 10
    .parameter "macAddr"

    .prologue
    const/16 v9, 0xa

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-eqz p1, :cond_0

    array-length v6, p1

    if-eq v6, v7, :cond_2

    :cond_0
    const-string v6, "WfdT2dService"

    const-string v7, "convertDevcieAddress() fail, macAddr wrong"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "a"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "b"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "c"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "d"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "e"

    aput-object v7, v0, v6

    const-string v6, "f"

    aput-object v6, v0, v8

    .local v0, hex:[Ljava/lang/String;
    const-string v2, ""

    .local v2, out:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    aget-byte v6, p1, v1

    and-int/lit16 v5, v6, 0xff

    .local v5, v:I
    div-int/lit8 v3, v5, 0x10

    .local v3, q:I
    mul-int/lit8 v6, v3, 0x10

    sub-int v4, v5, v6

    .local v4, r:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v3, v9, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ge v4, v9, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v8, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v3, -0xa

    aget-object v6, v0, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v4, -0xa

    aget-object v6, v0, v6

    goto :goto_2
.end method

.method private convertIp([B)Ljava/lang/String;
    .locals 7
    .parameter "ByteArray"

    .prologue
    const/4 v2, 0x3

    .local v2, separateLength:I
    array-length v3, p1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const-string v3, "WfdT2dService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IP Address length not match :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convertTo4DigitsHexString(S)Ljava/lang/String;
    .locals 6
    .parameter "encType"

    .prologue
    const-string v0, "0x"

    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crashMe()V
    .locals 3

    .prologue
    const-string v0, "WfdT2dService"

    const-string v1, "crash me!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WfdT2dService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this will crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mNull:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doFastConnection(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    iget-object v0, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->fastConnectAsGc(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method private handleBroadcastT2d(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const-string v1, "WfdT2dService"

    const-string v2, "NFC_HANDOVER_INTENT_ACTION_WFD_ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    invoke-interface {v1}, Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;->onT2dRequestReceived()I

    move-result v0

    .local v0, condition:I
    if-nez v0, :cond_0

    const-string v1, "WfdT2dService"

    const-string v2, "REJECT_T2D"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    const-string v1, "WfdT2dService"

    const-string v2, "ALLOW_T2D"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/mediatek/wfd/t2d/WfdT2dService;->constructFastConnectInfo(Landroid/content/Intent;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFastInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFastInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {p0, v1}, Lcom/mediatek/wfd/t2d/WfdT2dService;->doFastConnection(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WfdT2dService"

    const-string v2, "doFastConnection() fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    invoke-interface {v1}, Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;->onT2dConnectFail()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mListener:Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;

    iget-object v2, p0, Lcom/mediatek/wfd/t2d/WfdT2dService;->mFastInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v2, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;->onT2dConnecting(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "WfdT2dService"

    const-string v2, "invalid value returned from onWfdRequestReceived"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/wfd/t2d/WfdT2dService;->crashMe()V

    goto :goto_0
.end method


# virtual methods
.method public startFastRtsp(I)I
    .locals 3
    .parameter "emConfig"

    .prologue
    const-string v0, "WfdT2dService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFastRtsp: emConfig=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;,
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    }
.end annotation


# static fields
.field private static final TestStrings:[Ljava/lang/String;

.field private static final sMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWpsNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantHook:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    const/16 v4, 0xa

    const/16 v3, 0x9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_venue_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_network_auth_type"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_roaming_consortium"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_ip_addr_type_availability"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_nai_realm"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_3gpp"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "anqp_domain_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_operator_friendly_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_wan_metrics"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_connection_capability"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_operating_class"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string v1, "hs20_osu_providers_list"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "test-ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "test\\nss\\tid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "test\\x2d\\x5f\\nss\\tid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "test\\x2d\\x5f\\nss\\tid\\\\"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "test\\x2d\\x5f\\nss\\tid\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "test\\x2d\\x5f\\nss\\tid\\x4a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "another\\"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "an\\other"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "another\\x2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 1
    .param p1, "supplicantHook"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "configStore"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-void
.end method

.method private static buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .local v4, "separator":I
    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "elementName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-eqz v1, :cond_0

    add-int/lit8 v6, v4, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "payload":[B
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    array-length v6, v3

    invoke-static {v5, v1, v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v5

    goto :goto_0

    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-class v6, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to parse hex string"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v3    # "payload":[B
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v5

    goto :goto_0
.end method

.method private static buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 8
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "ANQP_GET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .local v2, "first":Z
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->getBaseANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    if-ne v1, v6, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->getHS20ANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .restart local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    const-string v6, ",hs20:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 2
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isSSID_UTF8()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "utf8"    # Z

    .prologue
    const/16 v10, 0x22

    const/4 v1, 0x1

    .local v1, "asciiOnly":Z
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "ch":C
    const/16 v9, 0x7f

    if-le v2, v9, :cond_1

    const/4 v1, 0x0

    .end local v2    # "ch":C
    :cond_0
    if-eqz v1, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    return-object v9

    .restart local v2    # "ch":C
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "ch":C
    :cond_2
    if-eqz p1, :cond_3

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, "octets":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, "sb":Ljava/lang/StringBuilder;
    move-object v0, v7

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-byte v6, v0, v3

    .local v6, "octet":B
    const-string v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    and-int/lit16 v12, v6, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "octet":B
    .end local v7    # "octets":[B
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_2

    .restart local v0    # "arr$":[B
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "octets":[B
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private static getWPSNetCommands(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/pps/Credential;)Ljava/util/List;
    .locals 10
    .param p0, "netID"    # Ljava/lang/String;
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v2

    .local v2, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string v4, "SET_NETWORK %s key_mgmt WPA-EAP"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SET_NETWORK %s ssid %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SET_NETWORK %s bssid %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SET_NETWORK %s eap %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v0

    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-nez v0, :cond_0

    move-object v1, v3

    .end local v1    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .restart local v1    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v4, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

    invoke-interface {v0}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v1, v3

    goto :goto_0

    :pswitch_0
    const-string v3, "SET_NETWORK %s identity %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "SET_NETWORK %s password %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "SET_NETWORK %s anonymous_identity \"anonymous\""

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "SET_NETWORK %s priority 0"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "ENABLE_NETWORK %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "SAVE_CONFIG"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isAnqpAttribute(Ljava/lang/String;)Z
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "split":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "string":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->unescapeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .prologue
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "AKA"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "AKA\'"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIM"

    goto :goto_0

    :pswitch_3
    const-string v0, "TLS"

    goto :goto_0

    :pswitch_4
    const-string v0, "TTLS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parseANQPLines(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v0

    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :catch_0
    move-exception v4

    .local v4, "pe":Ljava/net/ProtocolException;
    const-class v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse ANQP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseWPSData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "bssInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-nez p0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "lineReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v0

    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unescapeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    new-instance v11, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$1;)V

    .local v11, "chars":Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [B

    .local v15, "octets":[B
    const/4 v6, 0x0

    .local v6, "bo":I
    :goto_0
    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasNext()Z
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$100(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v17

    if-eqz v17, :cond_4

    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->next()C
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$200(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    move-result v10

    .local v10, "ch":C
    const/16 v17, 0x5c

    move/from16 v0, v17

    if-ne v10, v0, :cond_0

    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasNext()Z
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$100(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bo":I
    .local v7, "bo":I
    int-to-byte v0, v10

    move/from16 v17, v0

    aput-byte v17, v15, v6

    move v6, v7

    .end local v7    # "bo":I
    .restart local v6    # "bo":I
    goto :goto_0

    :cond_1
    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->next()C
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$200(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    move-result v16

    .local v16, "suffix":C
    sget-object v17, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .local v14, "mapped":Ljava/lang/Integer;
    if-eqz v14, :cond_2

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bo":I
    .restart local v7    # "bo":I
    invoke-virtual {v14}, Ljava/lang/Integer;->byteValue()B

    move-result v17

    aput-byte v17, v15, v6

    move v6, v7

    .end local v7    # "bo":I
    .restart local v6    # "bo":I
    goto :goto_0

    :cond_2
    const/16 v17, 0x78

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasDoubleHex()Z
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$300(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v17

    if-eqz v17, :cond_3

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bo":I
    .restart local v7    # "bo":I
    # invokes: Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->nextDoubleHex()I
    invoke-static {v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->access$400(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v6

    move v6, v7

    .end local v7    # "bo":I
    .restart local v6    # "bo":I
    goto :goto_0

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bo":I
    .restart local v7    # "bo":I
    const/16 v17, 0x5c

    aput-byte v17, v15, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bo":I
    .restart local v6    # "bo":I
    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v7

    goto :goto_0

    .end local v10    # "ch":C
    .end local v14    # "mapped":Ljava/lang/Integer;
    .end local v16    # "suffix":C
    :cond_4
    const/4 v4, 0x1

    .local v4, "asciiOnly":Z
    move-object v3, v15

    .local v3, "arr$":[B
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_5

    aget-byte v5, v3, v12

    .local v5, "b":B
    and-int/lit16 v0, v5, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/4 v4, 0x0

    .end local v5    # "b":B
    :cond_5
    if-eqz v4, :cond_7

    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_2
    return-object v17

    .restart local v5    # "b":B
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v5    # "b":B
    :cond_7
    :try_start_0
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    .local v8, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto :goto_2

    .end local v8    # "cb":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v9

    .local v9, "cce":Ljava/nio/charset/CharacterCodingException;
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    sget-object v19, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2
.end method


# virtual methods
.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 11
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Spurious %s ANQP response for %012x"

    new-array v8, v8, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v5, "successful"

    :goto_0
    aput-object v5, v8, v9

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    const-string v5, "failed"

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->scanResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bssData":Ljava/lang/String;
    :try_start_2
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseWPSData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s ANQP response for %012x: %s"

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    const-string v6, "successful"

    :goto_2
    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p1, v9, v6

    const/4 v6, 0x2

    aput-object v1, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    if-eqz p2, :cond_3

    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_3
    invoke-virtual {v6, v4, v1}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    goto :goto_1

    .restart local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    :try_start_3
    const-string v6, "failed"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_3
    move-object v1, v5

    goto :goto_3

    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse ANQP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse ANQP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public startANQP(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;

    move-result-object v0

    .local v0, "anqpGet":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->doCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANQP initiated on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANQP failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

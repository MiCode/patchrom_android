.class public Lcom/android/server/wifi/anqp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    }
.end annotation


# static fields
.field public static final ANQP_3GPP_NETWORK:I = 0x108

.field public static final ANQP_CAPABILITY_LIST:I = 0x101

.field public static final ANQP_CIVIC_LOC:I = 0x10a

.field public static final ANQP_DOM_NAME:I = 0x10c

.field public static final ANQP_EMERGENCY_ALERT:I = 0x10d

.field public static final ANQP_EMERGENCY_NAI:I = 0x10f

.field public static final ANQP_EMERGENCY_NUMBER:I = 0x103

.field public static final ANQP_GEO_LOC:I = 0x109

.field public static final ANQP_IP_ADDR_AVAILABILITY:I = 0x106

.field public static final ANQP_LOC_URI:I = 0x10b

.field public static final ANQP_NAI_REALM:I = 0x107

.field public static final ANQP_NEIGHBOR_REPORT:I = 0x110

.field public static final ANQP_NWK_AUTH_TYPE:I = 0x104

.field public static final ANQP_QUERY_LIST:I = 0x100

.field public static final ANQP_ROAMING_CONSORTIUM:I = 0x105

.field public static final ANQP_TDLS_CAP:I = 0x10e

.field public static final ANQP_VENDOR_SPEC:I = 0xdddd

.field public static final ANQP_VENUE_NAME:I = 0x102

.field public static final BYTES_IN_EUI48:I = 0x6

.field public static final BYTES_IN_INT:I = 0x4

.field public static final BYTES_IN_SHORT:I = 0x2

.field public static final BYTE_MASK:I = 0xff

.field public static final HS20_FRAME_PREFIX:I = 0x109a6f50

.field public static final HS20_PREFIX:I = 0x119a6f50

.field public static final HS_CAPABILITY_LIST:I = 0x2

.field public static final HS_CONN_CAPABILITY:I = 0x5

.field public static final HS_FRIENDLY_NAME:I = 0x3

.field public static final HS_ICON_FILE:I = 0xb

.field public static final HS_ICON_REQUEST:I = 0xa

.field public static final HS_NAI_HOME_REALM_QUERY:I = 0x6

.field public static final HS_OPERATING_CLASS:I = 0x7

.field public static final HS_OSU_PROVIDERS:I = 0x8

.field public static final HS_QUERY_LIST:I = 0x1

.field public static final HS_WAN_METRICS:I = 0x4

.field public static final INT_MASK:J = 0xffffffffL

.field public static final NIBBLE_MASK:I = 0xf

.field public static final SHORT_MASK:I = 0xffff

.field public static final UTF8_INDICATOR:I = 0x1

.field private static final sAnqpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHs20Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevAnqpmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevHs20map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x103

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x105

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x106

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x107

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x108

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x109

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x10f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const/16 v3, 0x110

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    const v3, 0xdddd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_0
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v2, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sRevAnqpmap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;
    .locals 1
    .param p0, "elementType"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sRevHs20map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J
    .locals 13
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "bo"    # Ljava/nio/ByteOrder;
    .param p2, "size"    # I

    .prologue
    const/16 v12, 0x8

    new-array v5, p2, [B

    .local v5, "octets":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x0

    .local v6, "value":J
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v8, :cond_0

    array-length v8, v5

    add-int/lit8 v3, v8, -0x1

    .local v3, "n":I
    :goto_0
    if-ltz v3, :cond_1

    shl-long v8, v6, v12

    aget-byte v10, v5, v3

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    or-long v6, v8, v10

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v3    # "n":I
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-byte v4, v0, v1

    .local v4, "octet":B
    shl-long v8, v6, v12

    and-int/lit16 v10, v4, 0xff

    int-to-long v10, v10

    or-long v6, v8, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[B
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "octet":B
    :cond_1
    return-wide v6
.end method

.method public static getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "lengthLength"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 3
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "lengthLength"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "useNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runt string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0, p1}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 4
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "useNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad string length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p3, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-array v0, p1, [B

    .local v0, "octets":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sAnqpMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 2
    .param p0, "id"    # I

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/Constants;->sHs20Map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

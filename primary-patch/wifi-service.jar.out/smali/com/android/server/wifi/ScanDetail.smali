.class public Lcom/android/server/wifi/ScanDetail;
.super Ljava/lang/Object;
.source "ScanDetail.java"


# instance fields
.field private final mMatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J


# direct methods
.method private constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iput-object p3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 10
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "seen"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    new-instance v2, Landroid/net/wifi/ScanResult;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 9
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    new-instance v0, Landroid/net/wifi/ScanResult;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v5, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-direct {v5, v3, p0, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;-><init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    goto :goto_0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScanResult()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    .local v0, "fne":Lcom/android/server/wifi/anqp/HSFriendlyNameElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/anqp/I18Name;

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/VenueNameElement;

    .local v1, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/anqp/I18Name;

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setSeen()J
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\'%s\':%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v1, "\'%s\'/%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string v1, "\'%s\'/----"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateResults(Lcom/android/server/wifi/hotspot2/NetworkDetail;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "level"    # I
    .param p3, "wssid"    # Landroid/net/wifi/WifiSsid;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "flags"    # Ljava/lang/String;
    .param p6, "freq"    # I
    .param p7, "tsf"    # J

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput p2, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p3, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput p6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-wide p7, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    :cond_1
    return-void
.end method

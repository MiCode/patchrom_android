.class Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/AnqpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private final mBSSID:J

.field private final mHESSID:J

.field private final mSSID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # J
    .param p4, "hessid"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "x1"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v0

    return-object v0
.end method

.method private static buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    .locals 10
    .param p0, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "standardESS"    # Z

    .prologue
    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v1

    .local v1, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v2

    .local v2, "bssid":J
    const-wide/16 v4, 0x0

    .local v4, "hessid":J
    :goto_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;-><init>(Ljava/lang/String;JJ)V

    return-object v0

    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":J
    .end local v4    # "hessid":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .restart local v1    # "ssid":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .restart local v2    # "bssid":J
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v4

    .restart local v4    # "hessid":J
    goto :goto_0

    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":J
    .end local v4    # "hessid":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ssid":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .restart local v2    # "bssid":J
    const-wide/16 v4, 0x0

    .restart local v4    # "hessid":J
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    .local v0, "that":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/Utils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f

    const-wide/16 v2, 0x0

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    ushr-long/2addr v0, v4

    mul-long/2addr v0, v6

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    mul-long/2addr v0, v6

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HESSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

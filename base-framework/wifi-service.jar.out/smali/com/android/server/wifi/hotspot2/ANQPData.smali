.class public Lcom/android/server/wifi/hotspot2/ANQPData;
.super Ljava/lang/Object;
.source "ANQPData.java"


# static fields
.field private static final ANQP_HOLDOFF_TIME:J = 0x2710L

.field private static final ANQP_QUALIFIED_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final ANQP_UNQUALIFIED_CACHE_TIMEOUT:J = 0x493e0L

.field private static final MAX_RETRY:I = 0x6


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mCtime:J

.field private final mExpiry:J

.field private final mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "existing"    # Lcom/android/server/wifi/hotspot2/ANQPData;

    .prologue
    const-wide/16 v2, 0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    :goto_0
    return-void

    :cond_0
    invoke-direct {p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->getRetry()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    shl-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    if-nez p2, :cond_1

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_1
.end method

.method private getRetry()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    return v0
.end method


# virtual methods
.method public expired()Z
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v0

    return v0
.end method

.method public expired(J)Z
    .locals 3
    .param p1, "at"    # J

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method protected isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 4
    .param p1, "nwk"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 8
    .param p1, "brief"    # Z

    .prologue
    const/16 v4, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", domid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-nez v3, :cond_2

    const-string v3, ", unresolved, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " old, expires in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x78

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-nez v3, :cond_0

    const/16 v4, 0x75

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "now":J
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " elements, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v0    # "now":J
    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-eqz v3, :cond_1

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

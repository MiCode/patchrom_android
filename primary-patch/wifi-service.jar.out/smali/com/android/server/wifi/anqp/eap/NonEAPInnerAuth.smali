.class public Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
.super Ljava/lang/Object;
.source "NonEAPInnerAuth.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    }
.end annotation


# static fields
.field private static final sOmaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRevOmaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    const-string v4, "PAP"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    const-string v4, "CHAP"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    const-string v4, "MS-CHAP"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    const-string v4, "MS-CHAP-V2"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

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

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "typeID":I
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "eapType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sRevOmaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    iput-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "thatObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "thatObject":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public getOMAtype()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->sOmaMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth method NonEAPInnerAuthEAP, inner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mType:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

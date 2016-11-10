.class public Lcom/android/server/wifi/anqp/NAIRealmData;
.super Ljava/lang/Object;
.source "NAIRealmData.java"


# instance fields
.field private final mEAPMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/4 v11, 0x5

    if-ge v9, v11, :cond_0

    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Runt payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    const v11, 0xffff

    and-int v3, v9, v11

    .local v3, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-le v3, v9, :cond_1

    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid data length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_3

    move v8, v10

    .local v8, "utf8":Z
    :goto_0
    if-eqz v8, :cond_4

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-static {p1, v10, v9}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .local v5, "realm":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "realms":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .local v6, "realmElement":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "realm":Ljava/lang/String;
    .end local v6    # "realmElement":Ljava/lang/String;
    .end local v7    # "realms":[Ljava/lang/String;
    .end local v8    # "utf8":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "utf8":Z
    :cond_4
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "realm":Ljava/lang/String;
    .restart local v7    # "realms":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v4, v9, 0xff

    .local v4, "methodCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    :goto_3
    if-lez v4, :cond_6

    iget-object v9, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    new-instance v10, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    invoke-direct {v10, p1}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public getEAPMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAPMethod;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRealms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/util/List;Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 8
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "credLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .local v6, "realmMatch":I
    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "realm":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    .end local v3    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "realm":Ljava/lang/String;
    :cond_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    move v0, v6

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .local v0, "best":I
    iget-object v7, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .local v1, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    move-result v7

    or-int v4, v7, v6

    .local v4, "match":I
    if-le v4, v0, :cond_6

    move v0, v4

    const/4 v7, 0x7

    if-ne v0, v7, :cond_6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "  NAI Realm(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mRealms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "realm":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2    # "realm":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifi/anqp/NAIRealmData;->mEAPMethods:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .local v0, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.class public Lcom/android/server/wifi/anqp/eap/EAPMethod;
.super Ljava/lang/Object;
.source "EAPMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/eap/EAPMethod$1;
    }
.end annotation


# instance fields
.field private final mAuthParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V
    .locals 3
    .param p1, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .param p2, "authParam"    # Lcom/android/server/wifi/anqp/eap/AuthParam;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {p2}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Runt EAP Method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v4, v8, 0xff

    .local v4, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .local v5, "methodID":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .local v1, "count":I
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    const/4 v7, 0x0

    .local v7, "realCount":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "paramPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .local v2, "id":I
    invoke-static {v2}, Lcom/android/server/wifi/anqp/eap/EAP;->mapAuthMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v0

    .local v0, "authInfoID":Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    if-nez v0, :cond_1

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown auth parameter ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v3, v8, 0xff

    .local v3, "len":I
    if-eqz v3, :cond_2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v3, v8, :cond_3

    :cond_2
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad auth method length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    sget-object v8, Lcom/android/server/wifi/anqp/eap/EAPMethod$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$AuthInfoID:[I

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v8, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_1
    new-instance v8, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_2
    new-instance v8, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_3
    new-instance v8, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_4
    new-instance v8, Lcom/android/server/wifi/anqp/eap/Credential;

    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/Credential;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_5
    new-instance v8, Lcom/android/server/wifi/anqp/eap/Credential;

    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/Credential;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    :pswitch_6
    new-instance v8, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    goto :goto_1

    .end local v0    # "authInfoID":Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .end local v2    # "id":I
    .end local v3    # "len":I
    :cond_4
    if-eq v7, v1, :cond_5

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid parameter count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/server/wifi/anqp/eap/AuthParam;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .local v0, "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .local v0, "that":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    iget-object v3, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    iget-object v4, v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .local v0, "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/eap/AuthParam;

    goto :goto_0
.end method

.method public getAuthParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->hashCode()I

    move-result v0

    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 10
    .param p1, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;

    .prologue
    const/4 v8, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v0

    .local v0, "credMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v9

    if-eq v5, v9, :cond_1

    move v7, v6

    :cond_0
    :goto_0
    :pswitch_0
    return v7

    :cond_1
    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAPMethod$1;->$SwitchMap$com$android$server$wifi$anqp$eap$EAP$EAPMethodID:[I

    iget-object v9, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v9}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    .local v3, "paramCount":I
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;>;"
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .local v4, "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v4, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;>;"
    .end local v4    # "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_4
    if-lez v3, :cond_5

    move v5, v6

    :goto_2
    move v7, v5

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_2

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "paramCount":I
    :pswitch_2
    move v7, v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "EAP Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .local v3, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/anqp/eap/AuthParam;

    .local v2, "param":Lcom/android/server/wifi/anqp/eap/AuthParam;
    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "param":Lcom/android/server/wifi/anqp/eap/AuthParam;
    .end local v3    # "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
